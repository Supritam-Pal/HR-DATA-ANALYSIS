select * from hr

--1. Find the Total Leave Without Pay (LWP) Count

select sum(LWP) from hr


--2.Filter for Employees with High Absenteeism

SELECT Employee_Code, Name FROM hr WHERE LWP > 5


--3.Count the Number of Employees Who Worked From Home

select count(Name) from hr where WFH>0


--4.Identify the Top 5 Absentee Employees

SELECT TOP 5 Employee_Code, Name, LWP FROM hr ORDER BY LWP DESC;


--5.Calculate the Average Present Days

SELECT AVG(P) AS Average_Present_Days FROM hr


--6.Find Employees with No Leave Taken

SELECT Name FROM hr WHERE PL = 0 AND SL = 0 AND LWP = 0;


--7.Calculate a "Performance Rank" for Employees

SELECT Name,(LWP * 100.0) / SUM(LWP) OVER () AS Percentage FROM hr;


--8.Calculate a "Performance Rank" for Employees

SELECT Name, (P + WFH) AS Total_Attendance , DENSE_RANK() OVER (ORDER BY (P + WFH) DESC) AS Attendance_Rank FROM hr;













--ATTENDANCE KEY	
--P	Present 
--PL	Paid Leave 
--SL	Sick Leave 
--HPL	Half day PL 
--HSL	Half day SL
--WFH	Work from home 
--FFL	Floting festival leave 
--HFFL	Half Day Floting festival leave 
--BL 	Birthday Leave 
--LWP	Leave without pay
--HLWP	Half day Leave without pay
--BRL 	Bereavement Leave
--HBRL 	Half Bereavement Leave
--HWFH	Half Work From Home
--WO	Weekly Off
--HO	Holiday Off
--ML	Menstrual Leave
--HML	Half Day ML
