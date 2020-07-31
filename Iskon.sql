/* Introduction to Databases (H8INDB) 
Higher Diploma in Science in Computing - Software Development specialization 

Project
-Relational database model-
-Iskon Telecommunication Company-
owner: Petra Furkes
21st of May, 2020
*/


DROP DATABASE IF EXISTS Iskon;
CREATE DATABASE Iskon;
USE Iskon;

CREATE TABLE Iskon (
CompanyID VARCHAR (8) NOT NULL,
CompanyName VARCHAR (25) NOT NULL,
Address VARCHAR (50) NOT NULL,
PhoneNo VARCHAR (15) NOT NULL,
EmailAddress VARCHAR (30),
CEO VARCHAR (25),
FinanceDirector VARCHAR (25),
OperationsDirector VARCHAR (25),
LawAndRegulationsDirector VARCHAR (25),
PRIMARY KEY (CompanyID)
);

INSERT INTO Iskon VALUES ("125468ZG", "Iskon","Henry Street 56, Dublin 1, Ireland","353839456200","iskon@iskon.com","Rob Murphy","Nancy Walsh","Mia Brennan","Mary O'Sullivan" );

SELECT*
FROM Iskon;

CREATE TABLE Department (
DepartmentID VARCHAR (2) NOT NULL,
DepartmentName VARCHAR (20) NOT NULL,
PhoneNo VARCHAR (15),
EmailAddress VARCHAR (30),
Director VARCHAR (30),
Manager VARCHAR (30),
AssistantManager VARCHAR (30),
PRIMARY KEY (DepartmentName)
);

INSERT INTO Department VALUES("01","Management Board","3531456201","management.board@iskon.com","Rob Murphy","",""); 
INSERT INTO Department VALUES("02","HR","3531456202","hr@iskon.com","Irma Novak","Mark Bently", "Ana Clarke");
INSERT INTO Department VALUES("03","Marketing","3531456203","marketing@iskon.com","Ena Collins","Natalia Johnston","Luke Brown");
INSERT INTO Department VALUES("04","Law and Regulations","3531456204","law@iskon.com","Mary O'Sullivan","Mia Donovan","Stephany Nolan"); 
INSERT INTO Department VALUES("05","PMO","3531456205","pmo@iskon.com","Mia Brennan","Alex Johnston","John Martin"); 
INSERT INTO Department VALUES("06","Customer Service","3531456206","info@iskon.com","Lorna Burke","Anna Flynn","Katie Duffy");
INSERT INTO Department VALUES("07","Technical Support","3531456207","tech.support@iskon.com","Dave Kelly","Mark Brennan","Darragh Hayes");
INSERT INTO Department VALUES("08","Customer Complaints","3531456208","complaints@iskon.com","Ana Burke","Ana Kennedy","Sonia Kavanagh");
INSERT INTO Department VALUES("09","Billing","3531456209","billing@iskon.com","Nancy Walsh","Tom Hayes","David Moran");  
INSERT INTO Department VALUES("10","Sales","3531456210","sale@iskon.com","Mike Connolly","Julia Walsh", "Sarah Connolly");
INSERT INTO Department VALUES("11","Lan","3531456211","lan@iskon.com","Mark Ryan","Dan Casey","Luke Stewart");
INSERT INTO Department VALUES("12","Reception","3531456200","reception@iskon.com","Rob Murphy","Sara Dunne","Irma Regan");

SELECT*
FROM Department;

CREATE TABLE Staff (
CompanyID VARCHAR (8) NOT NULL,
StaffID VARCHAR (3) NOT NULL,
FirstName VARCHAR (20) NOT NULL,
LastName VARCHAR (20) NOT NULL,
Address VARCHAR (50),
PhoneNo VARCHAR (15),
EmailAddress VARCHAR (30),
DOB DATE,
EmployementDateStart DATE NOT NULL,
EmployementDateEnd DATE,
CustomerID VARCHAR (5),
ProductID VARCHAR (2),
DepartmentName VARCHAR (20) NOT NULL,
Position VARCHAR (30),
Salary DECIMAL (13,2),
ContractType VARCHAR (20),
PRIMARY KEY (StaffID),
FOREIGN KEY (DepartmentName) REFERENCES Department (DepartmentName) ON UPDATE CASCADE,
FOREIGN KEY (CompanyID) REFERENCES Iskon (CompanyID) 
);

INSERT INTO Staff VALUES ("125468ZG","001","Rob","Murphy","Street 1, Dublin 10, Ireland","353864789625","rob.murphy@iskon.com","1955-01-01","2015-02-01","0000-00-00","00006","00","Management Board","CEO","200000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","002","Irma","Novak","Street 21, Dublin 5, Ireland","353873462154","irma.novak@iskon.com","1975-05-05","2015-02-01","0000-00-00","","","HR","Director","120000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","003","Ena","Collins","Street 19, Dublin 7, Ireland","353873462220","ena.collins@iskon.com","1970-07-05","2015-02-01","0000-00-00","","","Marketing","Director","120000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","004","Mary","O'Sullivan","Street 75, Dublin 1, Ireland","353864123475","mary.osullivan@iskon.com","1976-02-10","2015-02-01","0000-00-00","00007","00","Law and Regulations","Director","130000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","005","Mia","Brennan","Street 45, Dublin 11, Ireland","353838745320","mia.brennan@iskon.com","1982-11-21","2015-02-01","0000-00-00","","","PMO","Director","120000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","006","Lorna","Burke","Street 2, Dublin 12, Ireland","353845201003","lorna.burke@iskon.com","1977-01-25","2015-02-01","0000-00-00","","","Customer Service","Director","100000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","007","Dave","Kelly","Street 16, Dublin 2, Ireland","353765412300","dave.kelly@iskon.com","1977-07-12","2015-02-01","0000-00-00","","","Technical Support","Director","120000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","008","Ana","Burke","Street 18, Dublin 7, Ireland","353765445601","ana.burke@iskon.com","1979-04-10","2015-02-01","0000-00-00","","","Customer Complaints","Director","120000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","009","Nancy","Walsh","Street 25, Dublin 8, Ireland","353798465210","nancy.walsh@iskon.com","1979-12-23","2015-02-01","0000-00-00","00008","00","Billing","Director","180000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","010","Mike","Connolly","Street 7, Dublin 2, Ireland","353875614250","mike.connolly@iskon.com","1970-02-02","2015-02-01","0000-00-00","00009","00","Sales","Director","150000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","011","Mark","Ryan","Street 18, Dublin 1, Ireland","353745632140","mark.ryan@iskon.com","1980-04-25","2015-02-01","0000-00-00","00010","00","LAN","Director","170000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","012","Sara","Dune","Street 2, Dublin 12, Ireland","353845201003","sara.dune@iskon.com","1975-01-31","2015-02-01","0000-00-00","","","Reception","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","013","Irma","Regan","Street 15, Dublin 2, Ireland","353897452013","irma.regan@iskon.com","1982-01-31","2020-01-15","0000-00-00","","","Reception","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","014","Mark","Bently","Street 75, Dublin 1, Ireland","353873102004","mark.bently@iskon.com","1970-06-04","2017-07-01","0000-00-00","","","HR","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","015","Natalia","Johnston","Street 14, Dublin 8, Ireland","353878321005","natalia.johnston@iskon.com","1980-05-15","2019-08-01","0000-00-00","","","Marketing","Manager","80000","Full Time Permanent");
INSERT INTO Staff VALUES ("125468ZG","016","Mia","Donovan","Street 22, Dublin 17, Ireland","353898320777","mia.donovan@iskon.com","1980-10-11","2019-11-01","0000-00-00","00011","00","Law and Regulations","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","017","Alex","Johnston","Street 14, Dublin 8, Ireland","353838745320","alex.johnston@iskon.com","1979-11-18","2017-08-01","0000-00-00","","","PMO","Manager","90000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","018","Anna","Flynn","Street 8, Dublin 15, Ireland","353878310666","anna.flynn@iskon.com","1977-01-25","2017-09-01","0000-00-00","","","Customer Service","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","019","Mark","Brennan","Street 18, Dublin 22, Ireland","353878350000","mark.brennan@iskon.com","1970-11-11","2019-02-01","0000-00-00","00012","00","Technical Support","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","020","Ana","Kennedy","Street 11, Dublin 8, Ireland","353868420444","ana.kennedy@iskon.com","1970-05-15","2018-11-01","0000-00-00","","","Customer Complaints","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","021","Tom","Hayes","Street 14, Dublin 9, Ireland","353838462555","tom.hayes@iskon.com","1986-11-17","2018-06-01","0000-00-00","00013","00","Billing","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","022","Julia","Walsh","Street 11, Dublin 22, Ireland","353838746555","julia.walsh@iskon.com","1985-02-08","2018-11-01","0000-00-00","00014","00","Sales","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","023","Dan","Casey","Street 02, Dublin 18, Ireland","353898465999","dan.casey@iskon.com","1986-11-24","2019-04-01","0000-00-00","00015","00","LAN","Manager","80000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","024","Ana","Clarke","Street 55, Dublin 19, Ireland","353864251035","ana.clarke@iskon.com","1983-07-15","2018-04-01","0000-00-00","","","HR","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","025","Luke","Brown","Street 17, Dublin 18, Ireland","353898465777","luke.brown@iskon.com","1984-05-20","2019-12-01","0000-00-00","","","Marketing","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","026","Stephany","Nolan","Street 22, Dublin 22, Ireland","353898320654","stephany.nolan@iskon.com","1985-11-11","2020-02-01","0000-00-00","00016","00","Law and Regulations","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","027","John","Martin","Street 14, Dublin 6, Ireland","353837965779","john.martin@iskon.com","1982-12-28","2018-05-01","0000-00-00","","","PMO","Assistant Manager","50000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","028","Katie","Duffy","Street 98, Dublin 17, Ireland","353756103547","katie.duffy@iskon.com","1982-01-15","2017-12-01","0000-00-00","","","Customer Service","Assistant Manager","50000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","029","Darragh","Hayes","Street 11, Dublin 20, Ireland","353878350758","darragh.hayes@iskon.com","1979-12-05","2019-09-01","0000-00-00","00017","00","Technical Support","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","030","Sonia","Kavanagh","Street 17, Dublin 18, Ireland","353868420789","sonia.kavanagh@iskon.com","1979-05-25","2019-12-01","0000-00-00","","","Customer Complaints","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","031","David","Moran","Street 13, Dublin 22, Ireland","353838462645","david.moran@iskon.com","1989-02-17","2019-06-01","0000-00-00","00018","00","Billing","Assistant Manager","50000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","032","Sarah","Connolly","Street 85, Dublin 14, Ireland","353838746435","sarah.connolly@iskon.com","1982-02-06","2019-11-01","0000-00-00","00019","00","Sales","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","033","Luke","Stewart","Street 45, Dublin 11, Ireland","353898465408","luke.stewart@iskon.com","1987-12-14","2019-06-01","0000-00-00","00020","00","LAN","Assistant Manager","50000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","034","Ana","Healy","Street 15, Dublin 9, Ireland","353864251546","ana.healy@iskon.com","1980-01-15","2019-05-01","0000-00-00","","","HR","Specialist","30000","Part Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","035","Luke","White","Street 1, Dublin 18, Ireland","353898465542","luke.white@iskon.com","1985-06-25","2020-04-01","0000-00-00","","","Marketing","Specialist","30000","Part Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","036","Stephany","Duffy","Street 12, Dublin 22, Ireland","353898320847","stephany.duffy@iskon.com","1984-12-11","2020-02-01","0000-00-00","","","Law and Regulations","Specialist","30000","Part Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","037","Nick","Martin","Street 24, Dublin 7, Ireland","353876565779","nick.martin@iskon.com","1980-11-24","2019-12-01","0000-00-00","","","PMO","Specialist","40000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","038","Katie","Nolan","Street 58, Dublin 1, Ireland","3537561456247","katie.nolan@iskon.com","1980-01-17","2019-10-01","0000-00-00","","","Customer Service","Specialist","40000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","039","Mark","White","Street 15, Dublin 2, Ireland","353878351118","mark.white@iskon.com","1978-11-09","2019-07-01","0000-00-00","","","Technical Support","Specialist","30000","Part Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","040","Jessica","Hayes","Street 97, Dublin 8, Ireland","353964520789","jessica.hayes@iskon.com","1989-06-24","2020-04-01","0000-00-00","","","Customer Complaints","Specialist","40000","Full Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","041","Luke","Brady","Street 43, Dublin 23, Ireland","353838424645","luke.brady@iskon.com","1984-03-19","2019-09-01","0000-00-00","","","Billing","Specialist","40000","Full Time Permanenet");
INSERT INTO Staff VALUES ("125468ZG","042","Anna","Donnelly","Street 65, Dublin 12, Ireland","353838741645","anna.donnelly@iskon.com","1988-03-06","2020-03-01","0000-00-00","","","Sales","Specialist","30000","Part Time Temporary");
INSERT INTO Staff VALUES ("125468ZG","043","Luke","Connolly","Street 55, Dublin 17, Ireland","35389424408","luke.connolly@iskon.com","1997-10-16","2019-12-01","0000-00-00","","","LAN","Specialist","40000","Full Time Temporary");

SELECT*
FROM Staff;



CREATE TABLE Product (
ProductID VARCHAR(2) NOT NULL,
ProductName VARCHAR(50) NOT NULL,
DateLaunched DATE,
DateClosed DATE,
ProductManager VARCHAR(30),
ProductTeam  VARCHAR(30),
PRIMARY KEY (ProductID)
);

INSERT INTO Product VALUES("00","Staff TRIO & Mobile","2017-09-01","0000-00-00","Alex Johnston", "");
INSERT INTO Product VALUES("01","Landline","2015-02-01","0000-00-00","Mia Brennan", "");
INSERT INTO Product VALUES("02","Broadband","2015-02-01","0000-00-00","Mia Brennan", "");
INSERT INTO Product VALUES("03","Duo Landline & Broadband","2015-02-01","0000-00-00","Mia Brennan", "");
INSERT INTO Product VALUES("04","Mobile","2017-12-01","0000-00-00","Alex Johnston", "");
INSERT INTO Product VALUES("05","DUO Broadband & TV","2017-09-01","0000-00-00","Alex Johnston", "");
INSERT INTO Product VALUES("06","TRIO ","2017-09-01","0000-00-00","Alex Johnston", "");
INSERT INTO Product VALUES("07","TRIO & Mobile","2017-12-01","0000-00-00","Alex Johnston", "");

SELECT*
FROM Product;

/*created view for product manager Alex_Johnston with all projects/products he was working on */
CREATE VIEW Project_by_Alex_Johnston
as SELECT ProductID, ProductName, DateLaunched, DateClosed
FROM Product
WHERE ProductManager = "Alex Johnston";

SELECT*
FROM Project_by_Alex_Johnston;

/*created view for product manager Mia_Brennan with all projects/products she was working on */
CREATE VIEW Project_by_Mia_Brennan
as SELECT ProductID, ProductName, DateLaunched, DateClosed
FROM Product
WHERE ProductManager = "Mia Brennan";

SELECT*
FROM Project_by_Mia_Brennan;


CREATE TABLE Customer (
CustomerID VARCHAR (5) NOT NULL,
FirstName VARCHAR (20) NOT NULL,
LastName VARCHAR (20) NOT NULL,
Address VARCHAR (50),
PhoneNo VARCHAR (15),
EmailAddress VARCHAR (30),
DOB DATE,
ProductID VARCHAR (2),
ContractStartDate DATE,
ContractEndDate DATE,
PaymentType VARCHAR (15),
StaffID VARCHAR (3),      /*an employee who sold the service*/
PRIMARY KEY (CustomerID),
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ON DELETE SET NULL,
FOREIGN KEY (ProductID) REFERENCES Product (ProductID) ON DELETE NO ACTION
);

INSERT INTO Customer VALUES("00001","Mary","Lynch","Street 12, Dublin 1, Ireland","353467120345","mary.lynch@gmail.com","1985-05-23","06","2015-02-15","2017-02-14","Direct Debit","008");
INSERT INTO Customer VALUES("00002","Tom","Quinn","Street 35, Dublin 8, Ireland","353754123012","tom.quinn@gmail.com","1987-06-30","05","2018-07-15","2020-07-14","Bank Transfer","008");
INSERT INTO Customer VALUES("00003","David","Moore","Street 11, Dublin 7, Ireland","353838465012","david.moore@gmail.com","1985-04-25","01","2015-10-02","2013-10-01","Bank Transfer","008");
INSERT INTO Customer VALUES("00004","Luke","Gallagher","Street 75, Dublin 22, Ireland","353898124365","luke.gallagher@gmail.com","1975-11-30","05","2014-11-30","2016-11-29","Direct Debit","008");
INSERT INTO Customer VALUES("00005","Ronan","Doyle","Street 22, Dublin 13, Ireland","353889120001","ronan.doyle@gmail.com","1970-12-06","07","2020-01-18","2022-01-17","Direct Debit","008");

SELECT*
FROM Customer;

CREATE TABLE Payments (
PaymentID VARCHAR  (1) NOT NULL,
PaymentType VARCHAR (15) NOT NULL,
PRIMARY KEY (PaymentType)
);

INSERT INTO Payments VALUES("1","Direct Debit");
INSERT INTO Payments VALUES("2","Bank Transfer");

SELECT*
FROM Payments;

CREATE TABLE Invoice (
InvoiceID VARCHAR(6) NOT NULL,
Ammount DECIMAL (6,2),
InvoiceDate DATE,
InvoiceDueDate DATE,
PaymentType VARCHAR (15) NOT NULL,
CustomerID VARCHAR (5) NOT NULL,
PRIMARY KEY (InvoiceID),
FOREIGN KEY (PaymentType) REFERENCES Payments (PaymentType) ON DELETE NO ACTION,
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID) ON DELETE NO ACTION
);

INSERT INTO Invoice VALUES("012458","85", "2020-02-01","2020-02-15","Direct Debit","00001");
INSERT INTO Invoice VALUES("547801","75", "2020-02-01","2020-02-15","Bank Transfer","00002");
INSERT INTO Invoice VALUES("452179","30", "2020-02-01","2020-02-15","Bank Transfer","00003");
INSERT INTO Invoice VALUES("015647","75", "2020-02-01","2020-02-15","Direct Debit","00004");
INSERT INTO Invoice VALUES("124758","95", "2020-02-01","2020-02-15","Direct Debit","00005");

SELECT*
FROM Invoice;

/* select all employees who is using company's service */
SELECT CustomerID, FirstName, LastName, Address, PhoneNo, EmailAddress, DOB, ProductID
FROM Staff
WHERE ProductID="00";


/* insert employees into Customer table who are customers as well */
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, PhoneNo, EmailAddress, DOB, ProductID)
SELECT CustomerID, FirstName, LastName, Address, PhoneNo, EmailAddress, DOB, ProductID
FROM Staff
WHERE ProductID="00";

Select*
From Customer;

/* update payment type for employee-customer */
UPDATE Customer 
SET PaymentType = "Direct Debit"
WHERE CustomerID IN ("00006", "00008", "00010", "00011", "00012", "00015", "00018", "00019");

/* update payment type for employee-customer */
UPDATE Customer 
SET PaymentType = "Bank Transfer"
WHERE CustomerID IN ("00007", "00009", "00013", "00014", "00016", "00017", "00020");

Select*
From Customer;

/*New column Gender is added into a Customer table, and table is updated with corresponding values. */
ALTER TABLE Customer
ADD Gender CHAR (1)
AFTER LastName;

UPDATE Customer
SET Gender = "F"
WHERE CustomerID IN ("00001", "00007", "00008", "00011", "00014","00016", "00019");

UPDATE Customer
SET Gender = "M"
WHERE CustomerID IN ("00002", "00003", "00004", "00005", "00006","00009","00010", "00012", "00013","00015","00017","00018","00020");

Select*
FROM Customer;

/* create a view to count how many staff members is using company's services*/
CREATE VIEW Staff_Product
AS SELECT ProductID, COUNT(*)
FROM Customer
WHERE ProductID = "00"
GROUP BY ProductID;

Select*
FROM Staff_Product;


/* insert invoice details for employee-customers */
INSERT INTO Invoice VALUES("012455","85", "2020-02-01","2020-02-15","Direct Debit","00006");
INSERT INTO Invoice VALUES("421567","75", "2020-02-01","2020-02-15","Bank Transfer","00007");
INSERT INTO Invoice VALUES("021754","30", "2020-02-01","2020-02-15","Direct Debit","00008");
INSERT INTO Invoice VALUES("654795","75", "2020-02-01","2020-02-15","Bank Transfer","00009");
INSERT INTO Invoice VALUES("450375","95", "2020-02-01","2020-02-15","Direct Debit","00010");
INSERT INTO Invoice VALUES("854325","40", "2020-02-01","2020-02-15","Direct Debit","00011");
INSERT INTO Invoice VALUES("452167","40", "2020-02-01","2020-02-15","Direct Debit","00012");
INSERT INTO Invoice VALUES("524675","40", "2020-02-01","2020-02-15","Bank Transfer","00013");
INSERT INTO Invoice VALUES("756485","40", "2020-02-01","2020-02-15","Bank Transfer","00014");
INSERT INTO Invoice VALUES("127465","40", "2020-02-01","2020-02-15","Direct Debit","00015");
INSERT INTO Invoice VALUES("450217","40", "2020-02-01","2020-02-15","Bank Transfer","00016");
INSERT INTO Invoice VALUES("795204","40", "2020-02-01","2020-02-15","Bank Transfer","00017");
INSERT INTO Invoice VALUES("756014","40", "2020-02-01","2020-02-15","Direct Debit","00018");
INSERT INTO Invoice VALUES("751324","40", "2020-02-01","2020-02-15","Direct Debit","00019");
INSERT INTO Invoice VALUES("750214","40", "2020-02-01","2020-02-15","Bank Transfer","00020");

Select*
From Invoice;

/* creating a views for each department */
CREATE VIEW Departments
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName
ORDER BY Director;

Select*
FROM Departments;

CREATE VIEW HR
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "HR";

Select*
FROM HR;

CREATE VIEW Marketing
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Marketing";

Select*
FROM Marketing;

CREATE VIEW Law_and_Regulations
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Law and Regulations";

Select*
FROM Law_and_Regulations;

CREATE VIEW PMO
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "PMO";

Select*
FROM PMO;

CREATE VIEW Customer_Service
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Customer Service";

Select*
FROM Customer_Service;

CREATE VIEW Technical_Support
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Technical Support";

Select*
FROM Technical_Support;

CREATE VIEW Customer_Complaints
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Customer Complaints";

Select*
FROM Customer_Complaints;

CREATE VIEW Billing
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Billing";

Select*
FROM Billing;

CREATE VIEW Sales
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Sales";

Select*
FROM Sales;

CREATE VIEW LAN
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Lan";

Select*
FROM Lan;

CREATE VIEW Reception
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Reception";

Select*
FROM Reception;


/* Employee Luke Brady left the company and his contract was terminated*/
UPDATE Staff
SET 
EmployementDateEnd = "2020-05-10",
EmailAddress = "luke.brady@gmail.com",
ContractType = "terminated"
WHERE StaffID = "041";

Select*
from Staff
WHERE StaffID = "041";

/*new employee Adam Connolly was hired and his data was added into a Staff table*/
INSERT INTO Staff VALUES ("125468ZG","045","Adam","Connolly","Street 43, Dublin 20, Ireland","353838425423","adam.connolly@iskon.com","1982-03-25","2020-01-01","0000-00-00","","","Billing","Specialist","30000","Part Time Temporary");

Select*
FROM Staff
WHERE StaffID = "045";

/* new column was added into Staff table, called “ContractChangedDate”, after EmployeeDateStart column. */
ALTER TABLE Staff
ADD ContractChangedDate DATE
AFTER EmployementDateStart;

Select*
from Staff;

/* contract was changed for Adam Connoly from Part Time Temporary to Part Time Permanent, and salary was increased for 10%*/
UPDATE Staff
SET 
ContractChangedDate = "2020-05-01",
ContractType = "Part Time Permanent",
Salary = Salary + (Salary * 10 / 100)
WHERE StaffID = "045";

Select*
FROM Staff
WHERE StaffID = "045";

/* As “ContractChangedDate” was added into Staff table, views created earlier for each department were needed to be updated. */
CREATE OR REPLACE VIEW Billing
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Billing";

Select*
from Billing;

/* The rest of the views were dropped and created were the new ones */
DROP VIEW HR, Customer_Service, Customer_Complaints, Departments, Lan, Law_and_Regulations, Marketing, PMO, Reception, Sales, Technical_Support;

CREATE VIEW HR
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "HR";

Select*
from HR;

CREATE VIEW Customer_Service
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Customer Service";

CREATE VIEW Customer_Complaints
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Customer Complaints";

CREATE VIEW Departments
as SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName;

CREATE VIEW Lan
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Lan";

CREATE VIEW Law_and_Regulations
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Law and Regulations";

CREATE VIEW Marketing
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Marketing";

CREATE VIEW PMO
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "PMO";


CREATE VIEW Reception
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Reception";

CREATE VIEW Sales
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Sales";

CREATE VIEW Technical_Support
AS SELECT d.DepartmentName, Director, Manager, AssistantManager, StaffID, FirstName, LastName, Address, s.PhoneNo, s.EmailAddress, DOB, EmployementDateStart, ContractChangedDate, EmployementDateEnd, Position, Salary, ContractType
FROM Staff s, Department d
WHERE d.DepartmentName = s.DepartmentName AND s.DepartmentName = "Technical Support";

/*created view Customer_Payments using inner join from Invoice, Customer and Product tables and ordered by ProductID */
CREATE VIEW Customer_Payments
AS SELECT c.CustomerID, c.FirstName, c.LastName, p.ProductID, i.InvoiceID, i.Ammount, i.InvoiceDate, i.InvoiceDueDate, i.PaymentType
FROM Invoice i 
INNER JOIN Customer c ON i.CustomerID = c.CustomerID
INNER JOIN Product p ON p.ProductID = c.ProductID
ORDER BY ProductID;

Select*
FROM Customer_Payments;

INSERT INTO Customer VALUES("00021","Anna","Barry","F","Street 45, Dublin 10, Ireland","353878625410","anna.barry@gmail.com","1975-11-30","01","2019-01-02","2021-01-01","Direct Debit","042");
INSERT INTO Customer VALUES("00022","Mark","Robinson","M","Street 65, Dublin 2, Ireland","353876420111","mark.robinson@gmail.com","1978-02-18","06","2018-05-15","2020-05-14","Bank Transfer","042");
INSERT INTO Customer VALUES("00023","John","Kenny","M","Street 56, Dublin 1, Ireland","353878652000","john.kenny@gmail.com","1985-02-17","04","2020-06-07","2022-06-06","Direct Debit","042");
INSERT INTO Customer VALUES("00024","Tom","Griffin","M","Street 85, Dublin 8, Ireland","353898652789","tom.griffin@gmail.com","1995-04-16","07","2018-12-15","2020-12-14","Direct Debit","042");
INSERT INTO Customer VALUES("00025","Irma","Sheehan","F","Street 75, Dublin 8, Ireland","353898452365","irma.sheehan@gmail.com","1994-03-16","07","2017-11-14","2019-11-13","Direct Debit","042");
INSERT INTO Customer VALUES("00026","Katie","Whelan","F","Street 54, Dublin 6, Ireland","353878652013","katie.whelan@gmail.com","1992-05-25","01","2018-06-09","2020-06-08","Direct Debit","042");
INSERT INTO Customer VALUES("00027","Orla","Lyons","F","Street 8, Dublin 8, Ireland","353878666485","orla.lyons@gmail.com","1984-07-09","06","2019-04-06","2021-06-05","Direct Debit","042");
INSERT INTO Customer VALUES("00028","Maria","Graham","F","Street 9, Dublin 3, Ireland","353789254012","maria.graham@gmail.com","1965-05-18","05","2020-02-17","2022-02-16","Bank Transfer","042");
INSERT INTO Customer VALUES("00029","Jenny","Scott","F","Street 95, Dublin 7, Ireland","353878639452","jenny.scott@gmail.com","1983-04-06","03","2017-03-25","2019-03-24","Bank Transfer","042");
INSERT INTO Customer VALUES("00030","Jessica","Bell","F","Street 65, Dublin 9, Ireland","353878689777","jessica.bell@gmail.com","1946-05-28","02","2020-01-05","2020-01-04","Bank Transfer","042");

Select*
FROM Customer;

/* created view Marketing_Promotion with customers' details and PayementType "Bank Transfer" in purpose of running a promotion to stimulate customers to change Bank Transfer payment type into Direct Debit */
CREATE VIEW Marketing_Promotion
AS SELECT c.CustomerID, c.FirstName, c.LastName, c.Gender, c.EmailAddress, p.ProductName, c.PaymentType
FROM Customer c, Product p
WHERE PaymentType = "Bank Transfer";

Select*
FROM Marketing_Promotion;

/* marketing promotion was successful as customer Jenny Scott changed her Payment Type into Direct Debit. Data was updated in the Customer table */
UPDATE Customer
SET 
PaymentType = "Direct Debit"
WHERE CustomerID = "00029";

Select*
from Customer
WHERE CustomerID = "00029";




