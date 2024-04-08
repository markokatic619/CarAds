INSERT INTO user(username, email, pass, firstName, lastName) 
VALUES ('autoKucaBijelic','autoBijelic@gmail.com','auto1234','Auto','Kuca'), ('impexDijelovi','impex@gmail.com','auto1234','Auto','Kuca');


INSERT INTO cars (make, model, price, modelYear, color, engineCapacity, enginePower, fuelType, shape, numberOfDoors, driveType, carCondition, mainImage, imageList, specifications, adDescription, carLocation, createdAt, updatedAt, adOwner)
VALUES
    -- Sample 1: Toyota Corolla
    ('Toyota', 'Corolla', 15000.00, 2020, 2, 2000, 150, 1, 5, 4, 2, 3, 'corolla.jpg', 'image1.jpg,image2.jpg', 'Specification for Toyota Corolla', 'Description for Toyota Corolla', 'Location1', '2024-01-01', '2024-01-01',1),
    -- Sample 2: Honda Civic
    ('Honda', 'Civic', 18000.00, 2021, 5, 1800, 140, 0, 5, 4, 0, 0, 'civic.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Civic', 'Description for Honda Civic', 'Location2', '2024-01-02', '2024-01-02',1),
    -- Sample 3: Ford Fiesta
    ('Ford', 'Fiesta', 12000.00, 2019, 4, 1600, 120, 1, 5, 4, 0, 2, 'fiesta.jpg', 'image1.jpg,image2.jpg,image3.jpg,image4.jpg', 'Specification for Ford Fiesta', 'Description for Ford Fiesta', 'Location3', '2024-01-03', '2024-01-03',1),
    -- Sample 4: Chevrolet Cruze
    ('Chevrolet', 'Cruze', 17000.00, 2020, 1, 2000, 150, 1, 5, 4, 1, 1, 'cruze.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Cruze', 'Description for Chevrolet Cruze', 'Location4', '2024-01-04', '2024-01-04',1),
    -- Sample 5: Volkswagen Golf
    ('Volkswagen', 'Golf', 20000.00, 2021, 2, 1800, 140, 2, 5, 4, 2, 2, 'golf.jpg', 'image1.jpg,image2.jpg,image3.jpg,image4.jpg', 'Specification for Volkswagen Golf', 'Description for Volkswagen Golf', 'Location5', '2024-01-05', '2024-01-05',1),
    -- Sample 6: Toyota Camry
    ('Toyota', 'Camry', 25000.00, 2021, 3, 2200, 170, 1, 5, 4, 2, 0, 'camry.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Camry', 'Description for Toyota Camry', 'Location6', '2024-01-06', '2024-01-06',1),
    -- Sample 7: Honda Accord
    ('Honda', 'Accord', 22000.00, 2020, 4, 2000, 160, 0, 5, 4, 1, 1, 'accord.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Accord', 'Description for Honda Accord', 'Location7', '2024-01-07', '2024-01-07',1),
    -- Sample 8: Ford Mustang
    ('Ford', 'Mustang', 35000.00, 2021, 4, 2500, 250, 1, 8, 2, 1, 0, 'mustang.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Mustang', 'Description for Ford Mustang', 'Location8', '2024-01-08', '2024-01-08',1),
    -- Sample 9: Chevrolet Malibu
    ('Chevrolet', 'Malibu', 28000.00, 2021, 5, 2200, 180, 1, 5, 4, 1, 0, 'malibu.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Malibu', 'Description for Chevrolet Malibu', 'Location9', '2024-01-09', '2024-01-09',1),
    -- Sample 10: Volkswagen Jetta
    ('Volkswagen', 'Jetta', 23000.00, 2020, 2, 2000, 150, 0, 5, 4, 0, 2, 'jetta.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Jetta', 'Description for Volkswagen Jetta', 'Location10', '2024-01-10', '2024-01-10',1),
    -- Sample 11: Toyota Prius
    ('Toyota', 'Prius', 27000.00, 2021, 0, 1800, 120, 3, 5, 4, 0, 0, 'prius.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Prius', 'Description for Toyota Prius', 'Location11', '2024-01-11', '2024-01-11',1),
    -- Sample 12: Honda Fit
    ('Honda', 'Fit', 20000.00, 2020, 4, 1500, 110, 2, 5, 4, 0, 1, 'fit.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Fit', 'Description for Honda Fit', 'Location12', '2024-01-12', '2024-01-12',1),
    -- Sample 13: Ford Fusion
    ('Ford', 'Fusion', 24000.00, 2020, 1, 2200, 160, 1, 5, 4, 1, 2, 'fusion.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Fusion', 'Description for Ford Fusion', 'Location13', '2024-01-13', '2024-01-13',1),
    -- Sample 14: Chevrolet Impala
    ('Chevrolet', 'Impala', 30000.00, 2021, 4, 2500, 200, 0, 5, 4, 2, 0, 'impala.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Impala', 'Description for Chevrolet Impala', 'Location14', '2024-01-14', '2024-01-14',1),
    -- Sample 15: Volkswagen Passat
    ('Volkswagen', 'Passat', 26000.00, 2020, 2, 2000, 150, 1, 5, 4, 2, 3, 'passat.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Passat', 'Description for Volkswagen Passat', 'Location15', '2024-01-15', '2024-01-15',1),
    -- Sample 16: Toyota Avalon
    ('Toyota', 'Avalon', 32000.00, 2021, 3, 2500, 200, 0, 5, 4, 2, 0, 'avalon.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Avalon', 'Description for Toyota Avalon', 'Location16', '2024-01-16', '2024-01-16',1),
    -- Sample 17: Honda CR-V
    ('Honda', 'CR-V', 29000.00, 2020, 0, 2200, 180, 2, 0, 4, 2, 1, 'cr-v.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda CR-V', 'Description for Honda CR-V', 'Location17', '2024-01-17', '2024-01-17',1),
    -- Sample 18: Ford Explorer
    ('Ford', 'Explorer', 35000.00, 2021, 2, 3000, 250, 1, 3, 4, 2, 0, 'explorer.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Explorer', 'Description for Ford Explorer', 'Location18', '2024-01-18', '2024-01-18',1),
    -- Sample 19: Chevrolet Tahoe
    ('Chevrolet', 'Tahoe', 42000.00, 2021, 1, 3500, 300, 1, 0, 4, 2, 3, 'tahoe.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Tahoe', 'Description for Chevrolet Tahoe', 'Location19', '2024-01-19', '2024-01-19',1),
    -- Sample 20: Volkswagen Tiguan
    ('Volkswagen', 'Tiguan', 33000.00, 2020, 4, 2500, 200, 2, 0, 4, 2, 0, 'tiguan.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Tiguan', 'Description for Volkswagen Tiguan', 'Location20', '2024-01-20', '2024-01-20',1),
    ('Toyota', 'Corolla', 15000.00, 2020, 2, 2000, 150, 1, 5, 4, 2, 3, 'corolla.jpg', 'image1.jpg,image2.jpg', 'Specification for Toyota Corolla', 'Description for Toyota Corolla', 'Location1','2024-01-01', '2024-01-01',1),
    -- Sample 2: Honda Civic
    ('Honda', 'Civic', 18000.00, 2021, 5, 1800, 140, 0, 5, 4, 0, 0, 'civic.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Civic', 'Description for Honda Civic', 'Location2','2024-01-02', '2024-01-02',1),
    -- Sample 3: Ford Fiesta
    ('Ford', 'Fiesta', 12000.00, 2019, 4, 1600, 120, 1, 5, 4, 0, 2, 'fiesta.jpg', 'image1.jpg,image2.jpg,image3.jpg,image4.jpg', 'Specification for Ford Fiesta', 'Description for Ford Fiesta', 'Location3', '2024-01-03', '2024-01-03',1),
    -- Sample 4: Chevrolet Cruze
    ('Chevrolet', 'Cruze', 17000.00, 2020, 1, 2000, 150, 1, 5, 4, 1, 1, 'cruze.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Cruze', 'Description for Chevrolet Cruze', 'Location4', '2024-01-04', '2024-01-04',1),
    -- Sample 5: Volkswagen Golf
    ('Volkswagen', 'Golf', 20000.00, 2021, 2, 1800, 140, 2, 5, 4, 2, 2, 'golf.jpg', 'image1.jpg,image2.jpg,image3.jpg,image4.jpg', 'Specification for Volkswagen Golf', 'Description for Volkswagen Golf', 'Location5', '2024-01-05', '2024-01-05',1),
    -- Sample 6: Toyota Camry
    ('Toyota', 'Camry', 25000.00, 2021, 3, 2200, 170, 1, 5, 4, 2, 0, 'camry.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Camry', 'Description for Toyota Camry', 'Location6','2024-01-06', '2024-01-06',1),
    -- Sample 7: Honda Accord
    ('Honda', 'Accord', 22000.00, 2020, 4, 2000, 160, 0, 5, 4, 1, 1, 'accord.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Accord', 'Description for Honda Accord', 'Location7','2024-01-07', '2024-01-07',1),
    -- Sample 8: Ford Mustang
    ('Ford', 'Mustang', 35000.00, 2021, 4, 2500, 250, 1, 8, 2, 1, 0, 'mustang.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Mustang', 'Description for Ford Mustang', 'Location8', '2024-01-08', '2024-01-08',1),
    -- Sample 9: Chevrolet Malibu
    ('Chevrolet', 'Malibu', 28000.00, 2021, 5, 2200, 180, 1, 5, 4, 1, 0, 'malibu.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Malibu', 'Description for Chevrolet Malibu', 'Location9', '2024-01-09', '2024-01-09',1),
    -- Sample 10: Volkswagen Jetta
    ('Volkswagen', 'Jetta', 23000.00, 2020, 2, 2000, 150, 0, 5, 4, 0, 2, 'jetta.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Jetta', 'Description for Volkswagen Jetta', 'Location10', '2024-01-10', '2024-01-10',1),
    ('Toyota', 'Highlander', 38000.00, 2021, 2, 3000, 250, 1, 3, 4, 2, 0, 'highlander.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Highlander', 'Description for Toyota Highlander', 'Location21',  '2024-01-21', '2024-01-21',1),
    -- Sample 22: Honda Accord
    ('Honda', 'Accord', 28000.00, 2020, 3, 2200, 180, 2, 5, 4, 2, 1, 'accord.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Accord', 'Description for Honda Accord', 'Location22', '2024-01-22', '2024-01-22',1),
    -- Sample 23: Ford Mustang
    ('Ford', 'Mustang', 42000.00, 2021, 4, 3000, 300, 0, 8, 2, 1, 0, 'mustang.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Mustang', 'Description for Ford Mustang', 'Location23', '2024-01-23', '2024-01-23',1),
    -- Sample 24: Chevrolet Camaro
    ('Chevrolet', 'Camaro', 45000.00, 2021, 1, 3500, 320, 0, 8, 2, 1, 0, 'camaro.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Camaro', 'Description for Chevrolet Camaro', 'Location24', '2024-01-24', '2024-01-24',1),
    -- Sample 25: Volkswagen Golf
    ('Volkswagen', 'Golf', 27000.00, 2020, 0, 1800, 150, 0, 5, 4, 0, 2, 'golf.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Golf', 'Description for Volkswagen Golf', 'Location25', '2024-01-25', '2024-01-25',2),
    -- Sample 26: Toyota Corolla
    ('Toyota', 'Corolla', 25000.00, 2021, 2, 2000, 140, 1, 5, 4, 2, 2, 'corolla.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Corolla', 'Description for Toyota Corolla', 'Location26', '2024-01-26', '2024-01-26',2),
    -- Sample 27: Honda Civic
    ('Honda', 'Civic', 26000.00, 2020, 3, 1800, 130, 2, 5, 4, 2, 1, 'civic.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Civic', 'Description for Honda Civic', 'Location27', '2024-01-27', '2024-01-27',2),
    -- Sample 28: Ford F-150
    ('Ford', 'F-150', 40000.00, 2021, 4, 3500, 280, 1, 4, 4, 2, 0, 'f150.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford F-150', 'Description for Ford F-150', 'Location28',  '2024-01-28', '2024-01-28',2),
    -- Sample 29: Chevrolet Silverado
    ('Chevrolet', 'Silverado', 45000.00, 2021, 1, 4000, 300, 1, 4, 4, 2, 0, 'silverado.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Silverado', 'Description for Chevrolet Silverado', 'Location29', '2024-01-29', '2024-01-29',2),
    -- Sample 30: Volkswagen Atlas
    ('Volkswagen', 'Atlas', 36000.00, 2020, 2, 2800, 200, 2, 0, 4, 2, 0, 'atlas.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Atlas', 'Description for Volkswagen Atlas', 'Location30', '2024-01-30', '2024-01-30',2),
    -- Sample 31: Toyota Tacoma
    ('Toyota', 'Tacoma', 35000.00, 2021, 2, 3500, 250, 1, 4, 2, 2, 2, 'tacoma.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Tacoma', 'Description for Toyota Tacoma', 'Location31', '2024-01-31', '2024-01-31',2),
    -- Sample 32: Honda CR-V
    ('Honda', 'CR-V', 32000.00, 2020, 3, 2200, 180, 3, 3, 4, 2, 1, 'crv.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda CR-V', 'Description for Honda CR-V', 'Location32', '2024-02-01', '2024-02-01',2),
    -- Sample 33: Ford Escape
    ('Ford', 'Escape', 31000.00, 2021, 4, 2500, 200, 3, 0, 4, 2, 1, 'escape.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Escape', 'Description for Ford Escape', 'Location33', '2024-02-02', '2024-02-02',2),
    -- Sample 34: Chevrolet Equinox
    ('Chevrolet', 'Equinox', 33000.00, 2021, 1, 2400, 170, 3, 5, 4, 2, 2, 'equinox.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Equinox', 'Description for Chevrolet Equinox', 'Location34', '2024-02-03', '2024-02-03',2),
    -- Sample 35: Volkswagen Jetta
    ('Volkswagen', 'Jetta', 27000.00, 2020, 2, 1800, 150, 0, 5, 4, 0, 1, 'jetta.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Jetta', 'Description for Volkswagen Jetta', 'Location35', '2024-02-04', '2024-02-04',2),
    -- Sample 36: Toyota Sienna
    ('Toyota', 'Sienna', 38000.00, 2021, 2, 3500, 280, 2, 3, 4, 2, 0, 'sienna.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Sienna', 'Description for Toyota Sienna', 'Location36','2024-02-05', '2024-02-05',2),
    -- Sample 37: Honda Odyssey
    ('Honda', 'Odyssey', 36000.00, 2020, 3, 3000, 220, 2, 3, 4, 2, 0, 'odyssey.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Odyssey', 'Description for Honda Odyssey', 'Location37', '2024-02-06', '2024-02-06',2),
    -- Sample 38: Ford Explorer
    ('Ford', 'Explorer', 42000.00, 2021, 4, 3000, 250, 2, 0, 4, 2, 1, 'explorer.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Explorer', 'Description for Ford Explorer', 'Location38', '2024-02-07', '2024-02-07',2),
    -- Sample 39: Chevrolet Traverse
    ('Chevrolet', 'Traverse', 40000.00, 2021, 1, 3200, 240, 2, 0, 4, 2, 1, 'traverse.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Traverse', 'Description for Chevrolet Traverse', 'Location39','2024-02-08', '2024-02-08',1),
    -- Sample 40: Volkswagen Tiguan
    ('Volkswagen', 'Tiguan', 34000.00, 2020, 2, 2400, 200, 2, 0, 4, 2, 2, 'tiguan.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Tiguan', 'Description for Volkswagen Tiguan', 'Location40', '2024-02-09', '2024-02-09',1),
    ('BMW', 'X5', 55000.00, 2021, 4, 3000, 280, 0, 0, 4, 2, 0, 'x5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for BMW X5', 'Description for BMW X5', 'Location41', '2024-02-10', '2024-02-10',1),
    -- Sample 42: BMW 3 Series
    ('BMW', '3 Series', 45000.00, 2020, 2, 2000, 200, 0, 5, 4, 2, 1, '3series.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for BMW 3 Series', 'Description for BMW 3 Series', 'Location42', '2024-02-11', '2024-02-11',1),
    -- Sample 43: Toyota RAV4
    ('Toyota', 'RAV4', 33000.00, 2021, 3, 2500, 220, 3, 0, 4, 2, 1, 'rav4.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota RAV4', 'Description for Toyota RAV4', 'Location43', '2024-02-12', '2024-02-12',1),
    -- Sample 44: Honda Pilot
    ('Honda', 'Pilot', 37000.00, 2020, 1, 3200, 250, 2, 0, 4, 2, 0, 'pilot.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Pilot', 'Description for Honda Pilot', 'Location44', '2024-02-13', '2024-02-13',1),
    -- Sample 45: Ford Bronco
    ('Ford', 'Bronco', 50000.00, 2021, 5, 3500, 280, 3, 4, 4, 2, 2, 'bronco.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Bronco', 'Description for Ford Bronco', 'Location45', '2024-02-14', '2024-02-14',1),
    -- Sample 46: Chevrolet Tahoe
    ('Chevrolet', 'Tahoe', 58000.00, 2021, 1, 5200, 300, 3, 0, 4, 2, 1, 'tahoe.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Tahoe', 'Description for Chevrolet Tahoe', 'Location46', '2024-02-15', '2024-02-15',1),
    -- Sample 47: Volkswagen Passat
    ('Volkswagen', 'Passat', 30000.00, 2020, 2, 1800, 150, 1, 5, 4, 0, 3, 'passat.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Passat', 'Description for Volkswagen Passat', 'Location47','2024-02-16', '2024-02-16',1),
    -- Sample 48: Toyota Highlander
    ('Toyota', 'Highlander', 42000.00, 2021, 2, 3000, 250, 2, 0, 4, 2, 1, 'highlander.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Highlander', 'Description for Toyota Highlander', 'Location48', '2024-02-17', '2024-02-17',2),
    -- Sample 49: Honda Accord
    ('Honda', 'Accord', 28000.00, 2020, 4, 2000, 180, 0, 5, 4, 0, 0, 'accord.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Accord', 'Description for Honda Accord', 'Location49', '2024-02-18', '2024-02-18',2),
    -- Sample 50: Ford F-150
    ('Ford', 'F-150', 45000.00, 2021, 4, 3500, 300, 1, 4, 4, 2, 1, 'f150.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford F-150', 'Description for Ford F-150', 'Location50', '2024-02-19', '2024-02-19',2),
    ('Mercedes-Benz', 'E-Class', 55000.00, 2020, 2, 2500, 220, 0, 5, 4, 1, 1, 'eclass.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Mercedes-Benz E-Class', 'Description for Mercedes-Benz E-Class', 'Location51', '2024-02-20', '2024-02-20',1),
    -- Sample 52: Audi Q7
    ('Audi', 'Q7', 60000.00, 2021, 1, 3000, 280, 2, 0, 4, 2, 1, 'q7.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Audi Q7', 'Description for Audi Q7', 'Location52', '2024-02-21', '2024-02-21',1),
    -- Sample 53: Lexus RX
    ('Lexus', 'RX', 52000.00, 2020, 3, 3000, 250, 3, 0, 4, 2, 2, 'rx.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Lexus RX', 'Description for Lexus RX', 'Location53', '2024-02-22', '2024-02-22',1),
    -- Sample 54: Hyundai Tucson
    ('Hyundai', 'Tucson', 35000.00, 2021, 2, 2000, 180, 1, 0, 4, 2, 1, 'tucson.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Hyundai Tucson', 'Description for Hyundai Tucson', 'Location54', '2024-02-23', '2024-02-23',1),
    -- Sample 55: Kia Sorento
    ('Kia', 'Sorento', 38000.00, 2020, 5, 2500, 200, 2, 0, 4, 2, 1, 'sorento.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Kia Sorento', 'Description for Kia Sorento', 'Location55', '2024-02-24', '2024-02-24',1),
    -- Sample 56: Subaru Outback
    ('Subaru', 'Outback', 32000.00, 2021, 9, 2500, 200, 0, 9, 4, 2, 0, 'outback.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Subaru Outback', 'Description for Subaru Outback', 'Location56', '2024-02-25', '2024-02-25',1),
    -- Sample 57: Nissan Rogue
    ('Nissan', 'Rogue', 36000.00, 2020, 6, 2400, 190, 1, 5, 4, 2, 1, 'rogue.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Nissan Rogue', 'Description for Nissan Rogue', 'Location57', '2024-02-26', '2024-02-26',1),
    -- Sample 58: Infiniti QX60
    ('Infiniti', 'QX60', 50000.00, 2021, 3, 3500, 270, 3, 0, 4, 2, 0, 'qx60.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Infiniti QX60', 'Description for Infiniti QX60', 'Location58', '2024-02-27', '2024-02-27',1),
    -- Sample 59: Mazda CX-5
    ('Mazda', 'CX-5', 33000.00, 2020, 8, 2200, 180, 0, 5, 4, 2, 1, 'cx5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Mazda CX-5', 'Description for Mazda CX-5', 'Location59', '2024-02-28', '2024-02-28',1),
    -- Sample 60: Jeep Wrangler
    ('Jeep', 'Wrangler', 48000.00, 2021, 4, 3600, 280, 1, 4, 4, 2, 1, 'wrangler.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Jeep Wrangler', 'Description for Jeep Wrangler', 'Location60', '2024-02-29', '2024-02-29',2),
    -- Sample 61: BMW X5
    ('BMW', 'X5', 65000.00, 2021, 1, 3000, 250, 0, 0, 4, 2, 1, 'x5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for BMW X5', 'Description for BMW X5', 'Location61', '2024-03-01', '2024-03-01',2),
    -- Sample 62: BMW 3 Series
    ('BMW', '3 Series', 55000.00, 2020, 4, 2000, 180, 0, 5, 4, 2, 2, '3series.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for BMW 3 Series', 'Description for BMW 3 Series', 'Location62',  '2024-03-02', '2024-03-02',2),
    -- Sample 63: Ford Explorer
    ('Ford', 'Explorer', 45000.00, 2021, 5, 3500, 290, 1, 0, 4, 2, 1, 'explorer.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Explorer', 'Description for Ford Explorer', 'Location63',  '2024-03-03', '2024-03-03',2),
    -- Sample 64: Toyota Highlander
    ('Toyota', 'Highlander', 46000.00, 2020, 3, 3300, 270, 2, 0, 4, 2, 1, 'highlander.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Highlander', 'Description for Toyota Highlander', 'Location64', '2024-03-04', '2024-03-04',2),
    -- Sample 65: Chevrolet Tahoe
    ('Chevrolet', 'Tahoe', 55000.00, 2021, 4, 5300, 400, 0, 0, 4, 2, 1, 'tahoe.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Tahoe', 'Description for Chevrolet Tahoe', 'Location65', '2024-03-05', '2024-03-05',2),
    -- Sample 66: GMC Yukon
    ('GMC', 'Yukon', 58000.00, 2020, 1, 5400, 420, 1, 0, 4, 2, 1, 'yukon.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for GMC Yukon', 'Description for GMC Yukon', 'Location66',  '2024-03-06', '2024-03-06',2),
    -- Sample 67: Volkswagen Tiguan
    ('Volkswagen', 'Tiguan', 40000.00, 2021, 2, 2000, 170, 0, 5, 4, 2, 2, 'tiguan.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volkswagen Tiguan', 'Description for Volkswagen Tiguan', 'Location67','2024-03-07', '2024-03-07',2),
    -- Sample 68: Subaru Forester
    ('Subaru', 'Forester', 38000.00, 2020, 9, 2400, 190, 2, 0, 4, 2, 1, 'forester.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Subaru Forester', 'Description for Subaru Forester', 'Location68', '2024-03-08', '2024-03-08',2),
    -- Sample 69: Ford F-150
    ('Ford', 'F-150', 45000.00, 2021, 4, 5700, 450, 0, 4, 4, 2, 0, 'f150.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford F-150', 'Description for Ford F-150', 'Location69', '2024-03-09', '2024-03-09',2),
    -- Sample 70: Toyota Camry
    ('Toyota', 'Camry', 33000.00, 2020, 5, 2500, 200, 1, 5, 4, 2, 1, 'camry.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Toyota Camry', 'Description for Toyota Camry', 'Location70', '2024-03-10', '2024-03-10',2),
    ('Mercedes-Benz', 'GLC', 60000.00, 2021, 9, 2500, 220, 0, 0, 4, 2, 0, 'glc.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Mercedes-Benz GLC', 'Description for Mercedes-Benz GLC', 'Location71', '2024-03-11', '2024-03-11',2),
    -- Sample 72: Honda Accord
    ('Honda', 'Accord', 35000.00, 2020, 6, 2000, 180, 1, 5, 4, 2, 2, 'accord.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Honda Accord', 'Description for Honda Accord', 'Location72', '2024-03-12', '2024-03-12',2),
    -- Sample 73: Hyundai Tucson
    ('Hyundai', 'Tucson', 38000.00, 2021, 1, 2200, 170, 2, 0, 4, 2, 1, 'tucson.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Hyundai Tucson', 'Description for Hyundai Tucson', 'Location73', '2024-03-13', '2024-03-13',2),
    -- Sample 74: Kia Sportage
    ('Kia', 'Sportage', 35000.00, 2020, 5, 2000, 160, 2, 0, 4, 2, 1, 'sportage.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Kia Sportage', 'Description for Kia Sportage', 'Location74', '2024-03-14', '2024-03-14',2),
    -- Sample 75: Nissan Rogue
    ('Nissan', 'Rogue', 38000.00, 2021, 3, 2200, 170, 0, 0, 4, 2, 1, 'rogue.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Nissan Rogue', 'Description for Nissan Rogue', 'Location75', '2024-03-15', '2024-03-15',2),
    -- Sample 76: Audi A5
    ('Audi', 'A5', 55000.00, 2020, 7, 2000, 190, 0, 1, 4, 2, 1, 'a5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Audi A5', 'Description for Audi A5', 'Location76', '2024-03-16', '2024-03-16',2),
    -- Sample 77: Chevrolet Silverado
    ('Chevrolet', 'Silverado', 60000.00, 2021, 2, 5300, 400, 0, 4, 4, 2, 1, 'silverado.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Chevrolet Silverado', 'Description for Chevrolet Silverado', 'Location77',  '2024-03-17', '2024-03-17',2),
    -- Sample 78: GMC Sierra
    ('GMC', 'Sierra', 62000.00, 2020, 4, 5600, 430, 0, 4, 4, 2, 1, 'sierra.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for GMC Sierra', 'Description for GMC Sierra', 'Location78', '2024-03-18', '2024-03-18',2),
    -- Sample 79: Subaru Outback
    ('Subaru', 'Outback', 40000.00, 2021, 9, 2500, 190, 1, 9, 4, 2, 1, 'outback.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Subaru Outback', 'Description for Subaru Outback', 'Location79', '2024-03-19', '2024-03-19',2),
    -- Sample 80: Jeep Compass
    ('Jeep', 'Compass', 36000.00, 2020, 3, 2400, 180, 1, 0, 4, 2, 1, 'compass.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Jeep Compass', 'Description for Jeep Compass', 'Location80', '2024-03-20', '2024-03-20',2),
    -- Sample 81: BMW X5
    ('BMW', 'X5', 70000.00, 2021, 4, 3000, 280, 0, 0, 4, 2, 1, 'x5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for BMW X5', 'Description for BMW X5', 'Location81','2024-03-21', '2024-03-21',2),
    -- Sample 82: Tesla Model S
    ('Tesla', 'Model S', 80000.00, 2020, 1, 0, 0, 3, 5, 4, 2, 0, 'model_s.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Tesla Model S', 'Description for Tesla Model S', 'Location82', '2024-03-22', '2024-03-22',2),
    -- Sample 83: Volvo XC90
    ('Volvo', 'XC90', 65000.00, 2021, 9, 2500, 200, 3, 0, 4, 2, 1, 'xc90.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Volvo XC90', 'Description for Volvo XC90', 'Location83', '2024-03-23', '2024-03-23',2),
    -- Sample 84: Mazda CX-5
    ('Mazda', 'CX-5', 38000.00, 2020, 6, 2200, 180, 1, 5, 4, 2, 1, 'cx5.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Mazda CX-5', 'Description for Mazda CX-5', 'Location84', '2024-03-24', '2024-03-24',2),
    -- Sample 85: Ford Explorer
    ('Ford', 'Explorer', 45000.00, 2021, 2, 3500, 290, 0, 0, 4, 2, 1, 'explorer.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Ford Explorer', 'Description for Ford Explorer', 'Location85', '2024-03-25', '2024-03-25',2),
    -- Sample 86: Land Rover Discovery
    ('Land Rover', 'Discovery', 70000.00, 2020, 4, 3000, 280, 1, 0, 4, 2, 1, 'discovery.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Land Rover Discovery', 'Description for Land Rover Discovery', 'Location86', '2024-03-26', '2024-03-26',2),
    -- Sample 87: Jaguar F-PACE
    ('Jaguar', 'F-PACE', 65000.00, 2021, 1, 3000, 280, 1, 0, 4, 2, 1, 'fpace.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Jaguar F-PACE', 'Description for Jaguar F-PACE', 'Location87', '2024-03-27', '2024-03-27',2),
    -- Sample 88: Porsche Cayenne
    ('Porsche', 'Cayenne', 80000.00, 2020, 4, 3500, 300, 0, 0, 4, 2, 1, 'cayenne.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Porsche Cayenne', 'Description for Porsche Cayenne', 'Location88', '2024-03-28', '2024-03-28',2),
    -- Sample 89: Lexus RX
    ('Lexus', 'RX', 60000.00, 2021, 8, 3500, 290, 3, 5, 4, 2, 1, 'rx.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Lexus RX', 'Description for Lexus RX', 'Location89', '2024-03-29', '2024-03-29',2),
    -- Sample 90: Buick Enclave
    ('Buick', 'Enclave', 50000.00, 2020, 6, 3100, 240, 2, 3, 4, 2, 1, 'enclave.jpg', 'image1.jpg,image2.jpg,image3.jpg', 'Specification for Buick Enclave', 'Description for Buick Enclave', 'Location90', '2024-03-30', '2024-03-30',2); 