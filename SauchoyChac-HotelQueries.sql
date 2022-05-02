-- Query 1
Select 
	g.`Name`, r.RoomNum, r.StartDate, r.EndDate
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestID = g.GuestID
WHERE EndDate > "2023-06-30" AND EndDate < "2023-08-01";

-- 2.Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
Select 
	g.`Name`, r.RoomNum, r.StartDate, r.EndDate
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestID = g.GuestID
INNER JOIN Room room
	ON r.RoomNum = room.RoomNum
WHERE room.Amenity2 = "Jacuzzi" OR room.Amenity3 = "Jacuzzi";

-- 3.Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
Select 
	g.`Name`, r.RoomNum, r.StartDate, r.EndDate, (r.adults + r.children) AS TotalPeople
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestID = g.GuestID
WHERE r.GuestID = 2;

-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT
	r.ReservationID, room.RoomNum, room.BasePrice, r.TotalCost
FROM Room room
LEFT JOIN Reservation r
	ON R.RoomNum = room.RoomNum;
    
-- 5. Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
Select 
	RoomNum, StartDate, EndDate, (adults + children) AS TotalPeople
FROM Reservation
WHERE ((adults + children) >= 3 and (adults+children) >= 1)
AND (Month(StartDate) = 4 OR MONTH(EndDate) = 4);

-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
Select 
	SUBSTRING_INDEX(Guest.`Name`, ' ', -1) AS LastName,
	COUNT(Reservation.GuestID) AS TotalReservations
FROM Reservation
INNER JOIN Guest
	ON Reservation.GuestID = Guest.GuestID
GROUP BY LastName
ORDER BY TotalReservations DESC;

-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT 
	`Name`, Address, Phone
FROM Guest
WHERE Phone = "(214) 730-0298";