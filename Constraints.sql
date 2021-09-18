1). Null Constraints

CREATE TABLE Persons (
    ID int NOT Null,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL
);

2). CHECK Constraints

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int,
    CHECK (Age>=18)
);

3). DEFAULT Constraints

CREATE TABLE Persons (
    ID int NOT Null,
    LastName varchar(255),
    FirstName varchar(255) DEFAULT 'Nitesh'
);

4). UNIQUE Constraints

CREATE TABLE Persons (
    ID int NOT Null UNIQUE,
    LastName varchar(255)
);

5) INDEX Constraints

CREATE TABLE Persons (
    ID int NOT Null UNIQUE,
    LastName varchar(255)
);

For LastName Creating and INDEX

CREATE INDEX idx_lastname ON Persons(LastName);


6) Primary Key Constraints

CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    PRIMARY KEY (ID)
);

7) FOREIGN KEY 

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
