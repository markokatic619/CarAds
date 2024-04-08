package main

import (
	"database/sql"
	"fmt"
	"net/http"
	"os"

	_ "github.com/go-sql-driver/mysql"
	"github.com/joho/godotenv"
)

var db *sql.DB

func main() {
	godotenv.Load()
	var err error
	db, err = connectDB()

	if err != nil {
		fmt.Println("Failed to connect to database")
	}
	fillCarCache()

	http.HandleFunc("/register", register)

	http.HandleFunc("/login", login)

	http.HandleFunc("/addPost", addPost)

	http.HandleFunc("/updatePost", updatePost)

	http.HandleFunc("/deletePost", deletePost)

	http.HandleFunc("/getUserPosts", getUserPosts)

	http.HandleFunc("/carsApi", getCars)

	http.HandleFunc("/carDetails", getDetails)

	http.HandleFunc("/manufacturers", getManufacturers)

	http.HandleFunc("/models", getModels)

	http.ListenAndServe(":8080", nil)
}

func connectDB() (*sql.DB, error) {

	dbUser := os.Getenv("DB_USER")
	dbPassword := os.Getenv("DB_PASSWORD")
	dbHost := os.Getenv("DB_HOST")
	dbPort := os.Getenv("DB_PORT")
	dbName := os.Getenv("DB_NAME")

	connectionString := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", dbUser, dbPassword, dbHost, dbPort, dbName)
	db, err := sql.Open("mysql", connectionString)
	if err != nil {
		return nil, err
	}
	return db, nil
}
