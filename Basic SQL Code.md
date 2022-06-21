Show all database list:
```
SHOW DATABASES;
```

<br>

Create Database:
```
CREATE DATABASE College;
```
<br>

Drop Database:
```
DROP DATABASE medical;
```

Create Table:
```
CREATE TABLE Student
(
Roll int,
Name varchar(15),
Gender varchar(15),
Age int,
CGPA double(1,2),
City varchar(15),
PRIMARY KEY(Roll)
);
```

Rename table:
```
student to student_details;
```

Drop Table:
```
DROP TABLE tudent_details;
```

Insert data into table:
```
INSERT INTO student_details
(Roll, Name, Gender, Age, CGPA, City)
VALUES (101, 'Nayem', 'male', 25, 2.50, 'Dhaka')
```

Insert more data into table:
```
INSERT INTO student_details
(Roll, Name, Gender, Age, CGPA, City)
VALUES
(101, 'Nayem', 'male', 25, 2.50, 'Dhaka'),
(107, 'Umar', 'male', 24, 2.80, 'Dhaka'),
(108, 'Stefhene', 'female', 26, 3.70, 'Khulna');
```

Show particular column:
```
SELECT Name
FROM student_details;
```

Show more column:
```
SELECT Name, CGPA, City
FROM student_details;
```

Show Full table:
```
SELECT *
FROM student_details;
```

Show full column without duplicate value:
```
SELECT DISTINCT City
FROM student_details;
```

First 3 user details:
```
SELECT *
FROM student_details
LIMIT 3;
```

Without 1st 3 user, Program show 2nd 3 user details:
```
SELECT *
FROM student_details
LIMIT 3, 3;
```

English Linguistic Ascending order: (Column Sorting)
```
SELECT Name, CGPA, City
FROM student_details
ORDER BY Name;
```

English Linguistic Descending order: (Column Sorting)
```
SELECT Name, CGPA, City
FROM student_details
ORDER BY Name DESC;
```

Value Descending order: (Column Sorting)
```
SELECT Name, CGPA
FROM student_details
ORDER BY CGPA DESC;
```

Multiple Column Sorting:
```SELECT Name, CGPA
FROM student_details
ORDER BY CGPA, City;
```

Delete null Rows:
```DELETE FROM student_detail WHERE Roll IS NULL
```

Set new data into null column:
```UPDATE student_detail SET CITY = 'Dhaka' WHERE Roll = 101
```

Arithmetic Operator:
```
SELECT
5+7,
15-11,
5*3,
21/5,
29%6;
```

WHERE Clause: Column Sorting
```SELECT Name, City
FROM student_details
WHERE Gender = 'male';
```

WHERE Clause: Column Sorting [DISTINCT]
```SELECT Name, City
FROM student_details
WHERE Gender = 'male';
```

WHERE Clause and Condition: Column Sorting
```SELECT *
FROM student_details
WHERE CGPA > 3.00 && Gender = 'female';
```

WHERE Clause and Condition: Relational Operator (between, and)
```SELECT Roll, Name, Age
FROM student_details
WHERE Roll BETWEEN 103 AND 106 && Gender = 'FEMALE';
```

WHERE Clause and Condition: Logical Operator (or)
```SELECT *
FROM student_details
WHERE Gender = 'male' OR CGPA >= 3.50;
```

WHERE Clause and Condition: Logical Operator (or, and)
```
SELECT *
FROM student_details
WHERE Gender = 'male'
AND (CGPA >= 3.50 OR City = 'dhaka');
```

WHERE Clause and Condition: Logical Operator (in)
```
SELECT *
FROM student_details
WHERE City IN ("khulna", 'barisal');
```

WHERE Clause and Condition: Logical Operator (not in)
```
SELECT *
FROM student_details
WHERE City NOT IN ('dhaka', 'khulna');
```

WHERE Clause and Condition: Logical Operator (like)
```SELECT *
FROM student_details
WHERE Name LIKE 'n%';
```

WHERE Clause and Condition: Logical Operator (like)
```SELECT *
FROM student_details
WHERE Name LIKE '%_e_’;       Condition: AnythingeAnything
```

Condition: Logical Operator (as)
```SELECT Roll AS ID, Name AS 'First_Name'
FROM student_details;
``````

Create Table: [Constraint, AUTO_INCREMENT]
```CREATE TABLE teacher
(
ID int NOT null AUTO_INCREMENT,
Name varchar(15),
Salary double(10,2),
PRIMARY KEY(ID)
);
```

Insert into database:
```INSERT INTO teacher (Name, Salary)
VALUES
('GDM', '75000'),
('SIS', '60000'),
('TNT', '50000');
```

Insert into database: update statement
```UPDATE teacher
SET Salary = 90000
WHERE ID = 1000;
```

Database: delete statement
```DELETE FROM teacher
WHERE ID >= 1005;
```

Insert into database: update statement for particular condition
```UPDATE teacher
SET Salary = Salary + 10000
WHERE Salary > = 70000;
 ```

UPPER and LOWER Function:
```SELECT
Upper (' I tarikul nayem '),
LOWER (' I AM TARIKUL NAYEM ');
```

UPPER and LOWER Function:
```SELECT UPPER (CITY)
FROM student_details;
```

Functions: CONCAT
```SELECT CONCAT (Name, ' is ', Age, ' years old ') AS Student
FROM student_details;
Describe Table Status:
Command:
DESCRIBE student_details;
Functions: Greatest, Least
Command:
SELECT greatest (10, 12, 5, -23, 8, 41, 2),
least (10, 12, 5, -23, 8, 41, 2);
Functions: Mathematical
Command:
SELECT POW (8,3),
LOG (2),
TRUNCATE (3.1416239, 2);
EXP (3)                E^3
 ```

Count number of Row in this Table:
```SELECT COUNT (*)
FROM student_details;
```

Aggregate Functions:
```SELECT AVG(CGPA)
FROM student_details;
```

```SELECT MIN(CGPA)
FROM student_details;
```

```SELECT MAX(CGPA)
FROM student_details;
```

```SELECT SUM(Salary)
FROM teacher;
```

Show all database list:
```SELECT COUNT (*)
SUM(Salary), MAX(Salary), MIN(Salary), AVG(Salary);
```

Sub Query:
```SELECT * FROM teacher 
WHERE Salary > (SELECT AVG(Salary) FROM teacher);
```

Add Column into Table:
```ALTER TABLE teacher
ADD Age int,
ADD dept varchar (15);
```

Change Column name from Table:
```ALTER TABLE teacher
CHANGE dept Department varchar (15);
```

Drop Column from Table:
```ALTER TABLE teacher
DROP COLUMN Age;
```

Upgrade column into table:
```UPDATE teacher
SET Department = 'CSE' WHERE ID = 1000;
```

Show Database GROUP BY clause:
```SELECT Department,
SUM(Salary)
FROM teacher
GROUP BY Department;
```

Order by & Group by clause:
```SELECT Depertment, SUM(Salary)
FROM teacher
GROUP BY Depertment
ORDER BY SUM(Salary) DESC;
```

Only Delete data from table:
```TRUNCATE TABLE teacher;
```

All data insert into a table:
```INSERT INTO exam_result (Reg_Number, Roll, CGPA, group_name)
VALUES
(10171, 100, 3.21, 'Science'),
(10172, 101, 3.44, 'Commerce'),
(10173, 102, 3.78, 'Arts'),
(10174, 103, 3.10, 'Science'),
(10175, 104, 2.87, 'Arts'),
(10176, 105, 2.94, 'Commerce'),
(10178, 106, 2.78, 'Science'),
(10177, 107, 3.41, 'Commerce');
```

Relational Database Between two table:
```SELECT student_details.Roll, 
   student_details.Name, exam_result.CGPA, 
        student_details.GENDER, exam_result.Group_Name

FROM student_details, exam_result
WHERE student_details.Roll = exam_result.Roll;
```

Relational Database Between two table:
```SELECT std.Roll, 
   std.Name, exam.CGPA, std.GENDER, exam.Group_Name
FROM student_details AS std, exam_result AS exam
WHERE std.Roll = exam.Roll;
```

Relational Database Between two table: Join Clause
```SELECT std.Roll, 
   std.Name, exam.CGPA, std.GENDER, exam.Group_Name 
   
FROM student_details AS std JOIN exam_result AS exam
ON std.Roll = exam.Roll;
```

Relational Database Between two table: INNER Join 
```SELECT std.Roll, 
   std.Name, exam.CGPA, std.GENDER, exam.Group_Name 
   
FROM student_details AS std INNER JOIN exam_result AS exam
ON std.Roll = exam.Roll;
```

Relational Database Between two table: Left Join
```SELECT std.Roll, 
   std.Name, exam.CGPA, std.GENDER, exam.Group_Name
     
FROM student_details AS std Left JOIN exam_result AS exam
ON std.Roll = exam.Roll;
```

Relational Database Between two table: RIGHT Join
```SELECT std.Roll, 
   std.Name, exam.CGPA, std.GENDER, exam.Group_Name  
   
FROM student_details AS std RIGHT JOIN exam_result AS exam
ON std.Roll = exam.Roll;
```

Relational Database Between two table: UNION / UNION ALL
```SELECT Roll, Name, Gender, Age
FROM dhaka_tour
UNION
SELECT Roll, Name, Gender, Age
FROM sylhet_tour
```

Create view from Database Table:
```CREATE VIEW student_view AS
SELECT Roll, Gender, Name
FROM student_details;
```

Show current date, current time:
```SELECT CURRENT_DATE,
CURRENT_TIME;
-----------------------------------------
SELECT NOW ();
```

Show Time & Date:
```SELECT ADDDATE ('2020-08-24', INTERVAL 3 DAY) AS NEXT_SATURDAT;
```

Make date:
```SELECT makedate(1994, 315);
```

Find out day from date:
```SELECT Dayname('1994-12-08');
```

Top 3 Employer get Highest Salary:
```SELECT top 3 * from employee 
order by employee_salary desc;
```

```SELECT top 3 employee_salary 
from employee 
order by employee_salary desc;
```

```SELECT distinct top 3 employee_salary, 
employee_name, employee_department 
from employee 
order by employee_salary desc;
```

Only common details show:
```select * from Student_details1
intersect
select * from Student_details2;
```

Create a view for particular user:                                                            
```Create a view for particular user                                                            
```

```Create view female_employee AS                                                   
SELECT * FROM employee                                                                    
where employee_gender = 'female';
```




