DROP DATABASE IF EXISTS Hotel;
    CREATE DATABASE Hotel;
    USE Hotel;
    
   CREATE TABLE Guest (
	GuestID INT PRIMARY KEY AUTO_INCREMENT,
	`Name` VARCHAR(50) NOT NULL,
    	Address VARCHAR(50) NOT NULL,
    	City VARCHAR(50) NOT NULL,
    	State VARCHAR(50) NOT NULL,
    	Zip VARCHAR(5) NOT NULL,
    	Phone VARCHAR(15) NOT NULL
);

CREATE TABLE Room (
	RoomNum INT PRIMARY KEY,
	RoomType VARCHAR(10) NOT NULL,
	Amenity1 VARCHAR(25) NOT NULL,
	Amenity2 VARCHAR(25) NULL,
	Amenity3 VARCHAR(25) NULL,
    ADAAccessible BOOLEAN NOT NULL,
	StandardOccupancy INT NOT NULL,
	MaxOccupancy INT NOT NULL,
	BasePrice DECIMAL(5,2) NOT NULL,
	ExtraPerson DECIMAL (3,0) NULL
);
        
CREATE TABLE Reservation (
	ReservationID INT PRIMARY KEY AUTO_INCREMENT,
	GuestID INT NOT NULL,
    FOREIGN KEY fk_Reservation_Guest (GuestID)
		REFERENCES Guest(GuestID),
	RoomNum INT NOT NULL,
	FOREIGN KEY fk_Reservation_Room (RoomNum)
		REFERENCES Room(RoomNum),
	Adults INT NOT NULL,
	Children INT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	TotalCost DECIMAL(6,2)
);
    