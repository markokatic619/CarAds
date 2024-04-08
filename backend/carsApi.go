package main

import (
	"database/sql"
	"encoding/json"
	"math"
	"net/http"
	"sort"
	"strconv"
	"strings"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

type carDetails struct {
	ImageList      string `json:"imageList"`
	Specifications string `json:"specifications"`
	AdDescription  string `json:"adDescription"`
}

type car struct {
	ID             int
	Make           string
	Model          string
	Price          float64
	ModelYear      int16
	Color          int16
	EngineCapacity int16
	EnginePower    int16
	FuelType       int16
	Shape          int16
	NumberOfDoors  int16
	DriveType      int16
	Condition      int16
	MainImage      string
	CarLocation    string
	AdOwner        string
	CreatedAt      time.Time
	DeletedAt      time.Time
}

var cars []car
var makeIndexesBegin map[string]int
var makeIndexesEnd map[string]int
var modelIndexesBegin map[string]int
var modelIndexesEnd map[string]int
var makes []string
var models map[string][]string

func init() {
	makeIndexesBegin = make(map[string]int)
	makeIndexesEnd = make(map[string]int)
	modelIndexesBegin = make(map[string]int)
	modelIndexesEnd = make(map[string]int)
	models = make(map[string][]string)
}

func getModels(w http.ResponseWriter, r *http.Request) {

	if r.Method != http.MethodGet {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	manufacturer := r.URL.Query().Get("manufacturer")
	if manufacturer == "" {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}
	data, ok := models[manufacturer]
	if !ok {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}
	result, err := json.Marshal(data)
	if err != nil {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(result)
}

func getManufacturers(w http.ResponseWriter, r *http.Request) {

	if r.Method != http.MethodGet {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	result, err := json.Marshal(makes)
	if err != nil {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}
	w.Header().Set("Content-Type", "application/json")
	w.Write(result)
}

func getDetails(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodGet {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	id, err := strconv.ParseInt(r.URL.Query().Get("id"), 10, 64)

	if err != nil {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}

	stmt, err := db.Prepare(`
	SELECT 
		cars.imageList, cars.specifications, cars.adDescription
	FROM 
		cars 
	WHERE 
		cars.id = ?`)
	if err != nil {
		http.Error(w, "Internal Server Error", http.StatusInternalServerError)
		return
	}
	defer stmt.Close()
	row := stmt.QueryRow(id)

	var details carDetails
	err = row.Scan(&details.ImageList, &details.Specifications, &details.AdDescription)
	if err != nil {
		if err == sql.ErrNoRows {
			http.NotFound(w, r)
			return
		}
		http.Error(w, "Internal Server Error", http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(details)

}

func getCars(w http.ResponseWriter, r *http.Request) {

	if r.Method != http.MethodGet {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	// get filters

	makeModelStr := r.URL.Query().Get("makeModel")
	if makeModelStr == "" {
		makeModelStr = "all:all"
	}
	minPrice, err := strconv.ParseFloat(r.URL.Query().Get("minPrice"), 64)
	if err != nil {
		minPrice = -1.0
	}
	maxPrice, err := strconv.ParseFloat(r.URL.Query().Get("maxPrice"), 64)
	if err != nil {
		maxPrice = -1.0
	}
	minYear := parseInt16(r.URL.Query().Get("minYear"))

	maxYear := parseInt16(r.URL.Query().Get("maxYear"))

	color := parseInt16(r.URL.Query().Get("color"))
	// color: 0=White, 1=Black, 2=Blue, 3=GrnumberOfResults/20
	minEngineCapacity := parseInt16(r.URL.Query().Get("minEngineCapacity"))

	maxEngineCapacity := parseInt16(r.URL.Query().Get("maxEngineCapacity"))

	minEnginePower := parseInt16(r.URL.Query().Get("minEnginePower"))

	maxEnginePower := parseInt16(r.URL.Query().Get("maxEnginePower"))

	fuelType := parseInt16(r.URL.Query().Get("fuelType"))
	// fuelType: 0=Petrol, 1=Diesel, 2=Petrol+LPG, 3=Hybrid
	shape := parseInt16(r.URL.Query().Get("shape"))
	// shape: 0=SUV, 1=Coupe, 2=Covertable, 3=Minivan, 4=Pickup, 5=Sedan, 6=Limousine, 7=Microcar, 8=SportsCar, 9=Wagon
	numberOfDoors := parseInt16(r.URL.Query().Get("numberOfDoors"))

	driveType := parseInt16(r.URL.Query().Get("driveType"))
	// driveType: 0=FWD, 1=RWD, 2=AWD
	condition := parseInt16(r.URL.Query().Get("condition"))
	// condition: 0=New, 1=Very good, 2=Good, 3=Fixable, 4=For parts only
	sortType, err := strconv.ParseInt(r.URL.Query().Get("sort"), 10, 64)
	if err != nil {
		sortType = 0
	}
	// sort: 0 = new ads, 1 = old ads, 2 = low price first, 3 = high price first

	page, err := strconv.ParseInt(r.URL.Query().Get("page"), 10, 16)
	if err != nil {
		page = 1
	}

	// filter cars and save them to result slice

	makeModelSplit := strings.Split(makeModelStr, ",")
	var makeModel [][]string
	for _, mkMod := range makeModelSplit {
		makeModel = append(makeModel, strings.Split(mkMod, ":"))
	}

	var result []car
	for _, mkMod := range makeModel {
		make := mkMod[0]
		model := mkMod[1]
		var i = 0
		var y = len(cars) - 1
		if make != "all" {
			if model == "all" {
				var ok bool
				i, ok = makeIndexesBegin[make]
				if !ok {
					continue
				}
				y, ok = makeIndexesEnd[make]
				if !ok {
					continue
				}
			} else {
				var ok bool
				i, ok = modelIndexesBegin[model]
				if !ok {
					continue
				}
				y, ok = modelIndexesEnd[model]
				if !ok {
					continue
				}
			}
		}
		for index := i; index < y; index++ {
			if (minPrice == -1.0 || cars[index].Price >= minPrice) &&
				(maxPrice == -1 || cars[index].Price <= maxPrice) &&
				(minYear == -1 || cars[index].ModelYear >= minYear) &&
				(maxYear == -1 || cars[index].ModelYear <= maxYear) &&
				(color == -1 || cars[index].Color == color) &&
				(minEngineCapacity == -1 || cars[index].EngineCapacity >= minEngineCapacity) &&
				(maxEngineCapacity == -1 || cars[index].EngineCapacity <= maxEngineCapacity) &&
				(minEnginePower == -1 || cars[index].EnginePower >= minEnginePower) &&
				(maxEnginePower == -1 || cars[index].EnginePower <= maxEnginePower) &&
				(fuelType == -1 || cars[index].FuelType == fuelType) &&
				(shape == -1 || cars[index].Shape == shape) &&
				(numberOfDoors == -1 || cars[index].NumberOfDoors == numberOfDoors) &&
				(driveType == -1 || cars[index].DriveType == driveType) &&
				(condition == -1 || cars[index].Condition == condition) {
				result = append(result, cars[index])
			}
		}
	}

	// sort results

	switch sortType {
	case 0:
		sort.Slice(result, func(i, j int) bool {
			return result[i].CreatedAt.Before(result[j].CreatedAt)
		})
	case 1:
		sort.Slice(result, func(i, j int) bool {
			return result[i].CreatedAt.After(result[j].CreatedAt)
		})
	case 2:
		sort.Slice(result, func(i, j int) bool {
			return result[i].Price < result[j].Price
		})

	case 3:
		sort.Slice(result, func(i, j int) bool {
			return result[i].Price > result[j].Price
		})
	}

	// get requested page range

	numberOfResults := int64(len(result))
	numberOfPages := math.Ceil(float64(numberOfResults) / 20)

	startingPageIndex := (page - 1) * 20
	if startingPageIndex < 0 || startingPageIndex > numberOfResults-1 {
		startingPageIndex = 0
	}
	endingPageIndex := startingPageIndex + 20
	if endingPageIndex > numberOfResults {
		if numberOfResults > 0 {
			endingPageIndex = numberOfResults
		} else {
			endingPageIndex = 0
		}

	}

	// get json

	subset := result[startingPageIndex:endingPageIndex]

	jsonData := make(map[string]interface{})

	jsonData["cars"] = subset

	jsonData["numberOfpages"] = numberOfPages

	jsonBytes, err := json.Marshal(jsonData)
	if err != nil {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}

	w.Header().Set("Content-Type", "application/json")

	w.Write(jsonBytes)

}

func parseInt16(s string) int16 {

	intValue, err := strconv.ParseInt(s, 10, 16)
	if err != nil {
		intValue = -1
	}
	return int16(intValue)
}

func fillCarCache() error {

	rows, err := db.Query(`
		SELECT 
		cars.id, cars.make, cars.model, cars.price, cars.modelYear, cars.color, cars.engineCapacity, cars.enginePower, 
		cars.fuelType, cars.shape, cars.numberOfDoors, cars.driveType, cars.carCondition, 
		cars.mainImage, cars.carLocation, user.username
		FROM cars
		JOIN user ON cars.adOwner = user.id
		ORDER BY make ASC, model ASC, price DESC`)
	if err != nil {
		return err
	}
	defer rows.Close()
	i := 0
	for rows.Next() {
		var c car
		err := rows.Scan(
			&c.ID,
			&c.Make,
			&c.Model,
			&c.Price,
			&c.ModelYear,
			&c.Color,
			&c.EngineCapacity,
			&c.EnginePower,
			&c.FuelType,
			&c.Shape,
			&c.NumberOfDoors,
			&c.DriveType,
			&c.Condition,
			&c.MainImage,
			&c.CarLocation,
			&c.AdOwner,
		)

		if err != nil {
			return err
		}

		cars = append(cars, c)

		if i > 0 {
			if cars[i].Make != cars[i-1].Make {
				makeIndexesBegin[cars[i].Make] = i
				makes = append(makes, cars[i].Make)
				makeIndexesEnd[cars[i-1].Make] = i - 1
			}
			if cars[i].Model != cars[i-1].Model {
				modelIndexesBegin[cars[i].Model] = i
				models[cars[i].Make] = append(models[cars[i].Make], cars[i].Model)
				modelIndexesEnd[cars[i-1].Model] = i - 1
			}
		} else {
			makeIndexesBegin[cars[i].Make] = i
			modelIndexesBegin[cars[i].Model] = i
			makes = append(makes, cars[i].Make)
			models[cars[i].Make] = append(models[cars[i].Make], cars[i].Model)
		}

		i++
	}

	makeIndexesEnd[cars[len(cars)-1].Make] = len(cars) - 1
	modelIndexesEnd[cars[len(cars)-1].Model] = len(cars) - 1

	if err := rows.Err(); err != nil {
		return err
	}

	return nil
}
