-- Customer Data
INSERT INTO Customer (CustomerID, FirstName, Surname, Address, MemberType, MembershipFee, JoinDate, DateOfBirth)
VALUES
(1, 'Saanvi', 'Bhatta', 'Baneshwor, Kathmandu', 'Standard', 1500, '2024-01-01', '2015-03-01'),
(2, 'Bill', 'Gates', 'Maitidevi, Kathmandu', 'Premium', 20000, '2024-07-06', '2001-10-12'),
(3, 'Elon', 'Musk', 'Putalisadak, Kathmandu', 'Premium', 20000, '2024-03-28', '2003-07-20'),
(4, 'Kamala', 'Harris', 'Kapan, Kathmandu', 'Standard', 1500, '2024-01-05', '1973-05-01');

-- Session Data
INSERT INTO Session (SessionID, Day, StartTime, EndTime, SessionType, Floor, Price)
VALUES
(1, 'Sunday', '09:00:00', '21:00:00', 'Free', 1, 1500),
(2, 'Sunday', '09:00:00', '21:00:00', 'Free', 2, 1000),
(3, 'Saturday', '09:00:00', '21:00:00', 'Free', 1, 1500),
(4, 'Friday', '18:00:00', '22:00:00', 'Special', 2, 1000);

-- Staff Data
INSERT INTO Staff (StaffID, StaffName, Role)
VALUES
(1, 'Sagar Aryal', 'Cafe'),
(2, 'Bikesh Khagdi', 'Maintenance'),
(3, 'Saroj Sapkota', 'Counter'),
(4, 'Jonathan Shrestha', 'Counter'),
(5, 'Rohan Chaudhary', 'Maintenance'),
(6, 'Rajeev Karmacharya', 'Cafe');

-- Booking Data
INSERT INTO Booking (BookingID, CustomerID, SessionID, BookingDate, MemberStatus, Fee, PrePaid)
VALUES
(1, 1, 1, '2024-07-22', 'Yes', NULL, NULL),
(2, 2, 1, '2024-07-22', 'No', 1500, 'No'),
(3, 3, 1, '2024-07-22', 'Yes', 1000, 'Yes'),
(4, 4, 1, '2024-08-25', 'No', 1500, 'No'),
(5, 2, 2, '2024-07-22', 'Yes', 1000, 'No'),
(6, 3, 4, '2024-07-05', 'Yes', 1000, 'Yes');

-- Machine Data
INSERT INTO Machine (MachineID, GameName, Year, Floor)
VALUES
(23, 'COC', 2010, 1),
(123, 'GTA', 2013, 1),
(45, 'Spiderman', 2016, 2),
(1234, 'PUBG', 2004, 1);

-- Console Data
INSERT INTO Console (ConsoleID, ConsoleName, GameName, PEGIRating, Quantity)
VALUES
(1, 'Xbox 360', 'Elden Ring: Shadow', 3, 3),
(2, 'PS3', 'Final Fantasy VII Rebirth', 3, 2),
(3, 'PS2', 'Destiny 2: The Final Shape', 3, 3),
(4, 'PS3', 'Tekken 8', 3, 2),
(5, 'Nintendo 64', 'Persona 3 Reload', 3, 2),
(6, 'Nintendo Switch', 'Cavern of Dreams', 15, 4);

-- Session Console Data
INSERT INTO SessionConsole (SessionConsoleID, SessionID, ConsoleID, Quantity)
VALUES
(1, 1, 3, 2),
(2, 2, 2, 2);

-- Staff Session Data
INSERT INTO StaffSession (StaffSessionID, StaffID, SessionID, Role)
VALUES
(1, 1, 1, 'Cafe'),
(2, 2, 1, 'Maintenance'),
(3, 3, 1, 'Counter'),
(4, 4, 2, 'Counter'),
(5, 5, 2, 'Maintenance'),
(6, 6, 2, 'Cafe');
