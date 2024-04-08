package main

import (
	"database/sql"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strings"

	"github.com/joho/godotenv"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	godotenv.Load()
	db, err := connectDB()
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	dbName := os.Getenv("DB_NAME")

	_, err = db.Exec(fmt.Sprintf("CREATE DATABASE IF NOT EXISTS %s", dbName))
	if err != nil {
		log.Fatal(err)
	}

	_, err = db.Exec(fmt.Sprintf("USE %s", dbName))
	if err != nil {
		log.Fatal(err)
	}

	executeSQLFile(db, "user.sql")
	executeSQLFile(db, "cars.sql")
	executeSQLFile(db, "sampleData.sql")

	log.Println("Database and tables created successfully")
}

func connectDB() (*sql.DB, error) {

	dbUser := os.Getenv("DB_USER")
	dbPassword := os.Getenv("DB_PASSWORD")
	dbHost := os.Getenv("DB_HOST")
	dbPort := os.Getenv("DB_PORT")

	connectionString := fmt.Sprintf("%s:%s@tcp(%s:%s)/", dbUser, dbPassword, dbHost, dbPort)
	db, err := sql.Open("mysql", connectionString)
	if err != nil {
		log.Println(err)
		return nil, err
	}
	return db, nil
}

func executeSQLFile(db *sql.DB, filename string) {

	sqlFile, err := ioutil.ReadFile(filename)
	if err != nil {
		log.Fatalf("Error reading SQL file %s: %v", filename, err)
	}

	sqlStatements := strings.Split(string(sqlFile), ";")

	for _, stmt := range sqlStatements {
		stmt = strings.TrimSpace(stmt)
		if stmt != "" {
			_, err := db.Exec(stmt)
			if err != nil {
				log.Fatalf("Error executing SQL statement: %v", err)
			}
		}
	}

	log.Printf("SQL file %s executed successfully", filename)
}
