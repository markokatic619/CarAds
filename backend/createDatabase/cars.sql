CREATE TABLE IF NOT EXISTS cars(
    id int AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(20),
    model VARCHAR(20),
    price FLOAT,
    modelYear SMALLINT,
    color SMALLINT, -- 0=White, 1=Black, 2=Blue, 3=Green, 4=Red, 5=yellow, 6=Orange, 7=Purple, 8=Brown, 9=Gray, 10=Pink
    engineCapacity SMALLINT,
    enginePower SMALLINT,
    fuelType SMALLINT, -- 0=Petrol, 1=Diesel, 2=Petrol+LPG, 3=Hybrid
    shape SMALLINT, -- 0=SUV, 1=Coupe, 2=Covertable, 3=Minivan, 4=Pickup, 5=Sedan, 6=Limousine, 7=Microcar, 8=SportsCar, 9=Wagon
    numberOfDoors SMALLINT,
    driveType SMALLINT, -- 0=FWD, 1=RWD, 2=AWD
    carCondition SMALLINT, -- 0=New, 1=Very good, 2=Good, 3=Fixable, 4=For parts only
    mainImage VARCHAR(50), 
    imageList VARCHAR(100),     
    specifications VARCHAR(200),
    adDescription TEXT,
    carLocation VARCHAR(50),
    adOwner INT,
    createdAt DATE,
    updatedAt DATE,
    deletedAt DATE,
    FOREIGN KEY (adOwner) REFERENCES user(id)
)