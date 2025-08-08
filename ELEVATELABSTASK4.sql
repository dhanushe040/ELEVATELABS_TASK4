#SELECTING ALL RECORDS
SELECT * FROM EMP;
/*
101	Rajaram Sundaram	sales	Sales Executive	M	2019-01-10	1980-01-16	12000.00	chennai	C	9988776655
102	Abinaya Krishnamoorthy	sales	Sales Executive	F	2021-02-15	1999-03-22	15000.00	chennai	T	8978675645
103	Naveen Chidambaram	accounts	Manager Manager	M	2023-01-19	1985-04-18	15000.00		R	8698756432
104	Shabeer Salman Khan	accounts	Junior Executive	M	2023-02-26	1990-06-14	10000.00	delhi	C	9089876776
105	Sureshkumar Venkatesan	sales	Sales Manager	M	2016-04-29	1999-07-31	38000.00	chennai	R	9887342312
106	Gayathri Srinivasan	IT	Developer Developer	F	2018-06-30	1980-12-11	60000.00	delhi	R	8923546123
107	Anu Rajagopal	IT	Testing Testing	F	2015-08-23	2003-09-10	12000.00	bangalore	I	7865321986
108	Ashokumar Maheswaran	IT	Testing Testing	M	2023-12-17	2001-06-15	12000.00		I	8900334455
109	Charles Joseph	sales	Sales Manager	M	2024-07-16	2000-05-05	38000.00	delhi	R	8971134231
110	Ashok Narayanan	IT	Developer Developer	M	2024-03-13	1999-08-23	45000.00	bangalore	R	9003276765
111	Annie David	accounts	Manager Manager	F	2024-02-21	1985-07-07	15000.00	delhi	R	9677254321
112	Kavya Rajkumar	sales	Sales Executive	F	2023-05-14	1989-11-27	12000.00	bangalore	I	8220797988
*/

#SUM OF THE SALARY
SELECT  SUM(SALARY) FROM EMP;
#284000.00

#AVERAGE SALARY
SELECT AVG(SALARY) FROM EMP;
#23666.666667

#COUNT THE ROWS
SELECT COUNT(*) FROM EMP;
#12

#MINIMUM SALARY
SELECT MIN(SALARY) FROM EMP;
#10000.00

#MAXIMUM SALARY
SELECT MAX(SALARY) FROM EMP;
#60000.00

SELECT * FROM EMP;

#Highest Salary by Department
SELECT DEPT,MAX(SALARY) FROM EMP GROUP BY DEPT;
/*
sales	38000.00
accounts	15000.00
IT	60000.00
*/

#Departments with More Than Three Employees
SELECT DEPT FROM EMP GROUP BY DEPT HAVING COUNT(*)>3;
/*
sales
IT
*/

#Employees Earning Above Average Salary
SELECT ENAME,SALARY,ROUND(AVG(SALARY) OVER(),2) AS AVERAGE FROM EMP  WHERE SALARY>(SELECT AVG(SALARY) FROM EMP );
/*
Sureshkumar Venkatesan	38000.00	45250.00
Gayathri Srinivasan	60000.00	45250.00
Charles Joseph	38000.00	45250.00
Ashok Narayanan	45000.00	45250.00
*/

#Department-Wise Gender Distribution
SELECT DEPT,GENDER FROM EMP GROUP BY DEPT,GENDER;
/*
sales	M
sales	F
accounts	M
IT	F
IT	M
accounts	F
*/
SELECT * FROM EMP;

#Duplicate Employee IDs
SELECT EMPID,COUNT(*) AS COUNT FROM EMP GROUP BY EMPID HAVING COUNT(*)>1  ;
#---