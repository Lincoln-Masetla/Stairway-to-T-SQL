--Stairway to T-SQL: Beyond The Basics 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 1: The TOP Clause

--Question 1:
--What are the different ways to represent the expression value for the TOP clause when the PERCENT option of the TOP clause is not used? (Pick all that apply)
--As an integer value 
--As a variable that is declared as an integer data type

--Question 2:
--What value does using the WITH TIES option on the TOP clause provide? (Pick all the apply)
--It allows you to return any rows that have the same column values as the last row based on the ORDER BY columns
--It allows you to potentially return more rows then the number of rows specified by the TOP clause provided the additional rows have the same column value as the last row based on the ORDER BY clause

--Question 3:
--When the ORDER BY clause exists on a SELECT or INSERT statement that uses the TOP clause, SQL Server will always select records from the top of the ordered set? (True or False)?
--False
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 2: Writing Subqueries

--Question 1:
--Complete this sentence “A subquery is a SELECT statement within another Transact-SQL statement that _____________________”.
--when run independently of the outer query it will return results.

--Question 2:
--When does a subquery require only a single column and value to be returned (select all that apply)?
--When the subquery is used in an expression
--When the subquery is used with a comparison operator

--Question 3:
--A Transact-SQL statement that uses a subquery in the WHERE clause will always perform slower than an equivalent query that doesn’t contain a subquery (True or False)?
--False
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 3: Building a Correlated Subquery

--Question 1:
--When writing a correlated subquery you need to have___________________ . (fill in the blank)
--One or more columns from the outer query that are used to constrain the results of the correlated subquery.

--Question 2:
--Select all of the following statements that are true about correlated subqueries.
--The correlated subquery will be executed once for every candidate row from the outer query.
--When using a correlated subquery in a HAVING clause the inner query will be executed once for each candidate row returned by the GROUP BY clause.

--Question 3:
--The correlated subquery is just like a normal subquery, and the correlated subquery can be run independently of the entire Transact-SQL statement (True or False).
--False
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 4: Using Views to Simplify Your Query
--Question 1:
--What are good business requirements that a view can help you implement?
--All of the above

--Question 2:
--You need to make sure that when a column value is updated or inserted via a view that it is selectable via the view. Which clause provides this functionality?
--WITH CHECK OPTION 

--Question 3:
--You need to restrict access to confidential data in a table. What method could a view be used to restrict access to this data?
--Create a view that excludes the confidential columns in a table and do not proved SELECT access to the table.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --Level 5: Storing Data in Temporary Tables

--Question 1:
--What characteristic is not associated with local temporary tables?
--They have to be explicitly deleted prior to the session ending 

--Question 2:
--Which two statements best describe the differences between a local and a global temporary table (Pick two)?
--Local temporary tables are available to only the current session whereas global temporary tables are available to all sessions.
--Local temporary table names start with a single # sign, and global temporary tables start with two # signs.

--Question 3:
--What happens to local and global temporary tables when the session in which they were created ends?
--The temporary tables are automatically dropped. 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 6: Using the CASE Expression and IIF Function

--Question 1:
--There are two different syntax variations for the CASE expression: Simple and Searched. Which two statements below best describe the difference between a Simple and Searched CASE expression (Pick two).
--a.The Simple CASE syntax only supports the equality operator, whereas the Searched CASE syntax supports multiple operators
--d.The Simple CASE syntax has the left side of the Boolean expression right after the CASE statement and the right side of the Boolean expression after the WHEN clause, whereas the Searched CASE expression has its Boolean expression after the WHEN clause

--Question 2:
--If the CASE expression has multiple WHEN clauses that evaluate to TRUE, which THEN/ELSE clause is executed?
--b.The THEN expression of the first WHEN clause that evaluates to TRUE is executed.

--Question 3:
--How many nesting levels can a CASE expression or IIF function have?
--b.10
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 7: Controlling the Flow of Your T-SQL

--Question 1:
--Both the WHILE and IF constructs have no limits on the number of nesting levels (TRUE or FALSE)?
--FALSE

--Question 2:
--In a WHILE loop you can use the CONTINUE keyword. What does it do?
--Jumps to the first statement of the inner WHILE loop, and continues processing

--Question 3:
--How many times will the stored procedure in the following WHILE loop be executed?

--DECLARE @I int = 0; 
--WHILE @I < 10 
--BEGIN 
--    EXEC dbo.usp_MySp @I
--    IF @I > 2 
--	   BREAK; 
--    SET @I += 1;
--END

--4
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 8: Coding Shortcuts using += and -= Operators

--Question 1:
--The += operator is useful for which of the following operations (select all that apply)?
--Incrementing a numeric variable by a value
--Concatenating two character data type values

--Question 2:
--The Subtract EQUALS operator performs what functions (select all that apply)?
--Decrements a numeric variable by a value
--Decrements a numeric variable by the results of a formula

--Question 3:
--What is the outcome of running the following code?

--DECLARE @String1 varchar(100) = 'Test ';
--DECLARE @String2 varchar(100) = 'Questions';
--SELECT @String1 += @String2;
--SELECT @String1;

--Test Questions
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 9: Dynamic T-SQL Code

--Question 1:
--What is the best approach to avoiding a SQL Injection attack (the best method)?
--Do not deploy TSQL code that uses dynamic TSQL

--Question 2:
--What kinds of thing can users accomplish with a SQL Injection attach (Pick all that apply)?
--All of the above

--Question 3:
--If you are going to deploy dynamic TSQL code that is contained in a variable, which of these two execution methods is best to use in order to minimize your risk for a SQL Injection attack?
--sp_executesql

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Section 72403 scripts
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 1: SQL Server Agent Setup and Overview

--Creating your first Job

--STEPS
--Click on SQL Server Agent
--New Job 
--Enter Job Name 
--Click OK
--Insert this bash script on the Command

--BACKUP DATABASE master
--	TO DISK='C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\Backup\master.bak'
--	WITH INIT

--It will backup the database

--IE When a job is created, an owner is assigned to the job

--Job Schedules
--How to start a job schedule

--Click on the Click on SQL Server Agent
--Click on start job at step.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 2: Job Steps and Subsystems

--Job Steps
--How to create a job, and the necessary job steps

--Continue from last level.
--click on the Steps tab to view job steps
--click New to create a new job step

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 3: Agent Alerts and Operators


--Creating an operator
--Open up SQL Server Management Studio (SSMS) 
--navigate to the Operators folder under SQL Server Agent
--Right click on Operators,
--Select the option for New Operator
--Enter name, as well as an email address
--Check Enabled
--Click OK to save

-- navigate to the SQL Server Agent folder in SSMS 
-- then to the Alertsfolder  
--right-click and select New Alert
--create an alert to notify the DBA of any system-level error(severity 19 or higher) 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 4: Configuring Database Mail

--Enable Database Mail using the Database Mail Configuration Wizard
 --connect to your local instance of SQL Server with SQL Server Management Studio
 --then expand the Management folder
 --right-click on the Database Mail entry
 --Select the option to Configure Database Mail
 --database mail configuration wizard will launch
 --Click Next
 --You will then be presented the New Profile dialog
 --Enter a profile name and description, and then click on the Add
 --Enter the required field with authentication

 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --Level 5: Understanding SQL Agent Error Logs

 --Reviewing the SQL Server Agent Error Logs
 --The SQL Server error logs are located in the \MSSQL\Log directory under the parent directory hosting SQL Server
 --By default, the service accounts for SQL Server and SQL Server Agent will have read/write privileges to the directory, but you (using a user account) won’t have access
 --local administrator are granted access to view the log files directly

 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  --Level 6: Workflow within Jobs - Drilling into Job steps

  --SQL Server Agent Job Step Workflow
  --create a new job in SSMS.
  -- Right-click on the Jobs folder under SQL Server Agent
  -- select New Job. 
  --On the General page, give the job a name 
  -- Select the Steps page, 
  -- then click the New… button to create the first job step. 
  --The New Job Step dialog appears

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --Level 7: Working with the SQL Server Agent Job Activity Monitor

 --Using the Job Activity Monitor
 --start SSMS
 --navigate to the SQL Server Agent node in Object Explorer
 --Agent Job Activity section displays all SQL Server Agent jobs.
