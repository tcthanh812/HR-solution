# HR data warehouse project
In this project, I want to create a BI solution for the HR department in a cosmetic hospital. The solution helps the HR department to easily access the required data and supports the department in reviewing the performance of employees easily. 

## 1. Get the data from the HR department. 
The HR department manages the employees using a spreadsheet. In the spreadsheet:
- [Employees](https://docs.google.com/spreadsheets/d/1DJYTOcLgxjPA6KuPBIxC4kz67pX6i5E1KOzKzdORkYk/edit#gid=716097444) stores all the information about the employees. 
- [Attendance](https://docs.google.com/spreadsheets/d/1DJYTOcLgxjPA6KuPBIxC4kz67pX6i5E1KOzKzdORkYk/edit#gid=1114897994) stores all the attendance information of the employees. 

## 2. Database schema

### Entities: 
- Department
- Employee
- Employment
- Finger Print
- Office
- Contract
- Insurance
- Attendance 

A graph was created to show [the data model](https://dbdiagram.io/d/64574475dca9fb07c4a301cd)


![Data Model](DataModel.jpeg)

## 3. Create the database in Microsoft SQL Server using the raw Excel file. 
1. Create a new database in Microsoft SQL Server Management Studio (SSMS): ```HR_db```.
2. Import the raw data table. Import the excel file to the HR_db. Two tables are created: ```dbo.Attendance$``` and ```dbo.Employee$``` 
3. Create the new tables. Using the database schema in section 2. 
```sql
   CREATE TABLE Employee (
      id varchar(20) PRIMARY KEY,
      name varchar(50),
      department_id varchar(20),
      office_id varchar(20), 
      title varchar(20),
      date_of_birth date,
      manager_id varchar(20),
      bank_account int
   )    
```

