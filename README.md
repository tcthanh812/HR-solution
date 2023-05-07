# HR data warehouse project
In this project, I want to create a BI solution for the HR department in a cosmetic hospital. The solution helps the HR department to easily access the required data and supports the department in reviewing the performance of employees easily. 

## 1. Get the data from the HR department. 
The HR department manages the employees using a spreadsheet. In the spreadsheet, the tab [Working](https://docs.google.com/spreadsheets/d/1DJYTOcLgxjPA6KuPBIxC4kz67pX6i5E1KOzKzdORkYk/edit#gid=716097444) stores all the information about the employees. 

## 2. Data modelling - Conceptual level
Let's define the entities and attributes based on the data in tab Working. In the tab Working, there is no column for Department. However, after the discussion with the HR team, the hospital has departments and corresponding manager for each. Therefore, adding a department entity is my recommendation. From that, the HR team can easily gain a summary for each department performance.  

### Entities: 
- Department
- Employee
- Employment
- Management
- Finger Print
- Office
- Contract
- Insurance
- Attendance 

A graph was created to show [the conceptual level design](https://dbdiagram.io/d/64574475dca9fb07c4a301cd)

