
CREATE TABLE Department (
  Id SERIAL PRIMARY KEY,
  Name varchar(20)
);



CREATE TABLE Education_Level (
  Id SERIAL PRIMARY KEY,
  Name varchar(50)
);



CREATE TABLE Office (
  Id SERIAL PRIMARY KEY,
  Location varchar(30),
  Address varchar(50),
  City varchar(20),
  State varchar(5)
);



CREATE TABLE Job_Title (
  Id SERIAL PRIMARY KEY,
  Title varchar(30)
);



CREATE TABLE Employee (
  Id varchar(10),
  Name_Surname varchar(30),
  Email varchar(50),
  Hire_Date DATE,
  Job_Title_Id INT,
  Department_Id INT,
  Manager_Id varchar(10),
  Start_Date DATE,
  End_Date DATE,
  Office_Id INT,
  Education_Level_Id INT,
  PRIMARY KEY(Id, Start_Date),
  CONSTRAINT fk_manager FOREIGN KEY(Manager_Id) REFERENCES Manager(Id),
  CONSTRAINT fk_job_title FOREIGN KEY(Job_Title_Id) REFERENCES Job_Title(Id),
  CONSTRAINT fk_department FOREIGN KEY(Department_Id) REFERENCES Department(Id),
  CONSTRAINT fk_office FOREIGN KEY(Office_Id) REFERENCES Office(Id),
  CONSTRAINT fk_education FOREIGN KEY(Education_Level_Id) REFERENCES Education_Level(Id)
);



CREATE TABLE Salary (
  Employee_Id varchar(10),
  Start_Date Date, 
  Salary INT,
  PRIMARY KEY (Employee_Id, Start_Date),
  CONSTRAINT fk_salary FOREIGN KEY(Employee_Id, Start_Date) REFERENCES Employee(Id, Start_Date)
);



CREATE TABLE Attendance (
  Employee_Id varchar(10),
  Start_Date Date, 
  Attendace INT,
  Time_Off INT,
  PRIMARY KEY (Employee_Id, Start_Date),
  CONSTRAINT fk_attendance FOREIGN KEY(Employee_Id, Start_Date) REFERENCES Employee(Id, Start_Date)
);



/* */