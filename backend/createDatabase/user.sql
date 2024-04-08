CREATE TABLE IF NOT EXISTS user(
    id int AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) UNIQUE,
    email VARCHAR(30) UNIQUE,
    pass VARCHAR(256),
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    createdAt DATE,
    deletedAt DATE
)