package main

import (
	"crypto/rand"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"net/http"
	"regexp"
	"strings"

	"github.com/go-sql-driver/mysql"
)

type UserToken struct {
	token  string
	userId int
}

var userTokens []UserToken

func register(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	err := r.ParseForm()
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	username := r.Form.Get("username")
	email := r.Form.Get("email")
	password := r.Form.Get("password")
	firstName := r.Form.Get("firstName")
	lastName := r.Form.Get("lastName")

	if !validateName(username) ||
		!validateEmail(email) ||
		!validatePassword(password) ||
		!validateName(firstName) ||
		!validateName(lastName) {

		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	stmt, err := db.Prepare("INSERT INTO user (username, email, password, firstName, lastName) VALUES (?, ?, ?, ?, ?)")
	if err != nil {
		panic(err.Error())
	}
	defer stmt.Close()

	_, err = stmt.Exec(username, email, password, firstName, lastName)
	if err != nil {
		if mysqlErr, ok := err.(*mysql.MySQLError); ok {
			if mysqlErr.Number == 1062 {
				if strings.Contains(mysqlErr.Message, "username") {
					http.Error(w, "Username already exists", http.StatusBadRequest)
				} else if strings.Contains(mysqlErr.Message, "email") {
					http.Error(w, "This email is already used", http.StatusBadRequest)
				} else {
					fmt.Println("Unknown duplicate entry error.")
				}
				return
			}
		}
		panic(err.Error())
	}

	// get user id
	stmt, err = db.Prepare("SELECT id FROM user WHERE username = ?")
	if err != nil {
		http.Error(w, "Can't get id", http.StatusNotFound)
		return
	}

	row := stmt.QueryRow(username)
	var id int
	err = row.Scan(&id)
	if err != nil {
		http.Error(w, "Can't get id", http.StatusNotFound)
		return
	}

	var userToken UserToken

	userToken.token = generateUserToken()
	userToken.userId = id

	userTokens = append(userTokens, userToken)

	response := map[string]string{
		"token": userToken.token,
	}
	jsonResponse, err := json.Marshal(response)
	if err != nil {
		http.Error(w, "Failed to encode JSON", http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")

	w.Write(jsonResponse)

}

func login(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodPost {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	err := r.ParseForm()
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	username := r.Form.Get("username")
	password := r.Form.Get("password")

	stmt, err := db.Prepare("SELECT id FROM user WHERE username = ? OR email = ? AND password = ?")
	if err != nil {
		fmt.Print("Can't prepare statement")
		return
	}
	row := stmt.QueryRow(username, username, password)

	var id int
	err = row.Scan(&id)
	if err != nil {
		http.Error(w, "Wrong username/email or password", http.StatusNotFound)
		return
	}
	var userToken UserToken

	userToken.token = generateUserToken()
	userToken.userId = id

	userTokens = append(userTokens, userToken)

	response := map[string]string{
		"token": userToken.token,
	}
	jsonResponse, err := json.Marshal(response)
	if err != nil {
		http.Error(w, "Failed to encode JSON", http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")

	w.Write(jsonResponse)

}

func getUserPosts(w http.ResponseWriter, r *http.Request) {
	if r.Method != http.MethodGet {
		http.Error(w, "Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	username := r.URL.Query().Get("username")

	stmt, err := db.Prepare(`
		SELECT 
			cars.id, cars.make, cars.model, cars.price, cars.modelYear, cars.color, cars.engineCapacity, cars.enginePower, 
			cars.fuelType, cars.shape, cars.numberOfDoors, cars.driveType, cars.carCondition, 
			cars.mainImage, cars.carLocation
		FROM 
			cars 
		JOIN 
			user ON cars.adOwner = user.id 
		WHERE 
			user.username = ?`)

	if err != nil {
		http.Error(w, "Server error", http.StatusInternalServerError)
		return
	}
	defer stmt.Close()

	rows, err := stmt.Query(username)
	if err != nil {
		http.Error(w, "Server error", http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	var cars []car

	for rows.Next() {
		var c car
		err := rows.Scan(
			&c.ID, &c.Make, &c.Model, &c.Price, &c.ModelYear, &c.Color, &c.EngineCapacity, &c.EnginePower,
			&c.FuelType, &c.Shape, &c.NumberOfDoors, &c.DriveType, &c.Condition,
			&c.MainImage, &c.CarLocation,
		)
		if err != nil {
			http.Error(w, "Server error", http.StatusInternalServerError)
			return
		}
		cars = append(cars, c)
	}

	jsonBytes, err := json.Marshal(cars)
	if err != nil {
		http.Error(w, "Bad Request", http.StatusBadRequest)
		return
	}

	w.Header().Set("Content-Type", "application/json")

	w.Write(jsonBytes)
}

func addPost(w http.ResponseWriter, r *http.Request) {

}

func updatePost(w http.ResponseWriter, r *http.Request) {

}

func deletePost(w http.ResponseWriter, r *http.Request) {

}

func generateUserToken() string {
	var randomString string
	foundFreeToken := false
	for !foundFreeToken {
		foundFreeToken = true
		randomString = generateRandomString()
		for _, token := range userTokens {
			if randomString == token.token {
				foundFreeToken = false
			}
		}
	}
	return randomString
}

func generateRandomString() string {
	bytes := make([]byte, 32)
	rand.Read(bytes)
	return hex.EncodeToString(bytes)
}

func validateName(name string) bool {
	if len(name) < 6 || len(name) > 30 {
		return false
	}
	match, _ := regexp.MatchString("^[a-zA-Z0-9]+$", name)
	return match
}
func validateEmail(email string) bool {
	match, _ := regexp.MatchString(`^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$`, email)
	return match
}

func validatePassword(password string) bool {
	return (len(password) >= 8 && len(password) <= 30)
}
