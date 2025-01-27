--Write a query to select all the customers booked on session 1 who have not paid yet.
SELECT Customer.FirstName, Customer.Surname
FROM Customer
JOIN Booking ON Customer.CustomerID = Booking.CustomerID
WHERE Booking.SessionID = 1 AND Booking.PrePaid = 'No';

--Write a query to select all machines on floor 1 by machine number in descending order. 
SELECT MachineID, GameName
FROM Machine
WHERE Floor = 1
ORDER BY MachineID DESC;

--Write a query that counts all the console games for the PS3.
SELECT COUNT(*) AS PS3_Game_Count
FROM Console
WHERE ConsoleName = 'PS3';

--Write a query that selects all staff working on session 1 on the maintenance. 
SELECT Staff.StaffName
FROM Staff
JOIN StaffSession ON Staff.StaffID = StaffSession.StaffID
WHERE StaffSession.SessionID = 1 AND StaffSession.Role = 'Maintenance';

--Update the floor for PUBG from floor 1 to floor 2.
UPDATE Machine
SET Floor = 2
WHERE GameName = 'PUBG';

--Delete the machine GTA
DELETE FROM Machine
WHERE GameName = 'GTA';

