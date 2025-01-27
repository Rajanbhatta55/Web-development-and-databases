-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    Surname VARCHAR(50),
    Address VARCHAR(100),
    MemberType VARCHAR(20),
    MembershipFee DECIMAL(10, 2),
    JoinDate DATE,
    DateOfBirth DATE
);

-- Session Table
CREATE TABLE Session (
    SessionID INT PRIMARY KEY,
    Day VARCHAR(15),
    StartTime TIME,
    EndTime TIME,
    SessionType VARCHAR(50),
    Floor INT,
    Price DECIMAL(10, 2)
);

-- Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(50),
    Role VARCHAR(50)
);

-- Booking Table
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    SessionID INT,
    BookingDate DATE,
    MemberStatus VARCHAR(5),
    Fee DECIMAL(10, 2),
    PrePaid VARCHAR(5),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID)
);

-- Machine Table
CREATE TABLE Machine (
    MachineID INT PRIMARY KEY,
    GameName VARCHAR(50),
    Year INT,
    Floor INT
);

-- Console Table
CREATE TABLE Console (
    ConsoleID INT PRIMARY KEY,
    ConsoleName VARCHAR(50),
    GameName VARCHAR(50),
    PEGIRating INT,
    Quantity INT
);

-- Session Console Table
CREATE TABLE SessionConsole (
    SessionConsoleID INT PRIMARY KEY,
    SessionID INT,
    ConsoleID INT,
    Quantity INT,
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID),
    FOREIGN KEY (ConsoleID) REFERENCES Console(ConsoleID)
);

-- Staff Session Table
CREATE TABLE StaffSession (
    StaffSessionID INT PRIMARY KEY,
    StaffID INT,
    SessionID INT,
    Role VARCHAR(50),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID)
);
