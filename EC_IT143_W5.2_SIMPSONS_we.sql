/***********************************************************************************
******************************
NAME: My Script Name
PURPOSE: My script purpose...
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 05/23/2022 JJAUSSI 1. Built this script for EC IT440
RUNTIME:
Xm Xs
NOTES:
This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/
--Q1:what are the full names of players that plays the  midfield position in the soccer teamFrom Myself
--A1:lets ask sql
SELECT pl.f_name
FROM tblPlayerDim pl
JOIN tblPositionDim pos ON pl.pl_id = pos.p_id
WHERE pos.p_name = 'Midfield';

 
--q2: What is the average salary of all employees in the club? by Malvlyn Jambo
-- A2:lets ask sql
Select AVG(mtd_salary) AS average_salary
From tblPlayerFact;

--Q3:List the top 3 highest-paid players for each position From Thu Okka
--A3:Lets ask sql
SELECT p_code, p_name, p_target
FROM dbo.tblPositionDim
GROUP BY p_code
ORDER BY p_id DESC;
LIMIT 3;

--Q4:Find the most common jersey number range (e.g., 1-10, 11-20, etc.) among players. from Dny
--A4: lets ask sql
SELECT FLOOR(n / 10) AS jersey_num, COUNT(*) AS count
FROM dbo.Nums
GROUP BY n
ORDER BY count DESC;


--Q5:List the names of family members their jobs and their respective departments. from Adekunle Bakare
--A5:lets ask sql

select Job_Title, Department,Name
from Family_Data;

--Q5: Considering that job seniority is important to get a credit, how many years has Homer Simpson being working and where?. by John Yeboah
--A5:lets ask 
SELECT First_Name,Hire_Date,Termination_Date,Job_Title
FROM Family_Data
EXTRACT (Member_ID,Hire_Date) AS Years_Of_Service
From dbo.Family_data
WHERE First_name = 'Homer Simpson';

--Q6:What is the termination date of homer simpson
--A6: SQL
SELECT Termination_Date
FROM Family_Data
WHERE First_Name = 'Homer Simpson';

--Q7:Find the top 3 expense categories for Planet Express, along with their total costs. by me

--A7:SQL Query

SELECT Category, SUM(Amount) AS total_cost
FROM Planet_Express
GROUP BY Amount
ORDER BY total_cost DESC;


--Q8:Calculate the average number of Entertainment consumed by both characters. by connie Mushawekwa

--A8 :SQL Query

SELECT Card_Member, AVG(Amount) AS Entertainment_Enjoyed
FROM Planet_Express
GROUP BY Card_Member;


select * from Planet_Express;