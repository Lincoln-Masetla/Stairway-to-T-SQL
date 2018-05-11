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

 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --Section 72494 scripts
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 --Level 1 of the Stairway to Integration Services

 --Separation of Duties
 --Open Business Intelligence Development Studio
 --create a SSIS project by clicking File-->New-->Project
 --select Business Intelligence Projects
 --Select Integration Services Project
 --Enter project name

 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 --Level 2 of the Stairway to Integration Services

 --Open the SSIS project from Level 1
 --From the Control Flow toolbox, drag a Data Flow Task onto the Control Flow canvas.
 --Right-click the Data Flow Task and click Edit
 --Drag an OLE DB Source adapter from the Data Flow Task toolbox onto the canvas:
 --open the Error List, click the View dropdown menu in BIDS (Visual Studio), and then click Error List

 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 --Level 3 of the Stairway to Integration Services

 --Incremental Load
 --load the same 19,972 rows of data from Person.Contact into dbo.Contact

--Use AdventureWorks
--go
--Select *
--From dbo.Contact

--You can clean up the dbo.Contact table by adding the following T-SQL script:
--Delete dbo.Contact

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 4 of the Stairway to Integration Services

--Adding the Update Code

--Use AdventureWorks
--go
--Update dbo.Contact
--Set MiddleName = 'Ray'
--Where MiddleName Is NULL

--Open BIDS 
--open the SSIS solution in Level 1. 
--Click on the Data Flow tab.
--Double-click the Lookup Transformation to open the Lookup Transformation Editor
--Click the Columns page
--Checkboxes next to them and a “check all” checkbox in the grid header
--drag LkUp_FirstName from the Columns virtual Folder to the right of the Unequal operator in the case Condition expression

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 5 of the Stairway to Integration Services

--Delete Missing Rows
--Use AdventureWorks
--go
--Insert Into dbo.Contact
--(FirstName, MiddleName, LastName, Email)
--Values
--('Andy', 'Ray', 'Leonard', 'andy.leonard@gmail.com')

--Open the Delete Rows Data Flow Task
--Add an OLE DB Source, open its editor, and configure the following properties:
--OLE DB Connection Manager: (local).AdventureWorks
--Data Access Mode: Table or view
--Name of the table or view: dbo.Contact
--Open the Lookup Transformation Editor 
--On the General page
-- change the Specify how to handle rows with no matching entries
-- dropdown to Redirect rows to no match output

--Select EmailAddress As Email
--From Person.Contact

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Level 6 of the Stairway to Integration Services

--Adding a Package
--Open your existing SSIS solution called My_First_SSIS_Project
--Once open, right-click the “SSIS Packages” virtual folder in Solution Explorer and click “New SSIS Package”
--When you click “New SSIS Package”, a new package named Package1.
--After you rename the package and press the Enter key
--Right-click the Script Task and click “Edit” to open the Script
--Return to the Script page and click the ReadOnlyVariables property
--Click the ellipsis to display a list of available Variables
--Click the “Edit Script” button to open the Visual Studio Tools for Applications script editor
--Scroll until you see Public Sub Main(). Add this code to the subroutine:
        --Dim sTaskName As String = Dts.Variables("TaskName").Value.ToString

        --MsgBox(sTaskName & " completed.")

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 7 of the Stairway to Integration Services

--Constraint Evaluation
--open the My_First_SSIS_Project solution and the Precedence.
--Connect a precedence constraint from Script Task 1 to Script Task 2
--Execute the package in the Business Intelligence Development Studio (BIDS) debugger
--Click the OK button on the message box
--Right-click the precedence constraint to see configuration options available on the context menu
--On Completion 

--Public Sub Main()
--    Dim sTaskName As String = Dts.Variables("TaskName").Value.ToString
--    Dim iResponse As Integer = MsgBox("Succeed " & _

--        sTaskName & "?", MsgBoxStyle.YesNo, sTaskName)

--    If iResponse = MsgBoxResult.Yes Then
--        Dts.TaskResult = ScriptResults.Success
--    Else
--        Dts.TaskResult = ScriptResults.Failure
--    End If
--End Sub

--Click the “Yes” button, the On Completion precedence
--Retesting On Success
--Right-click the precedence constraint and set it to Success
--When prompted to succeed Script Task 1 click the “No” button to cause it to fail
--On Failure
--Stop the debugger and right-click the precedence constraint and select “Failure”
--When the package restarts and the Script Task 1 prompt displays, click the “Yes” button to succeed Script Task 1
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 8 of the Stairway to Integration Services

--About Variables
--Click the SSIS dropdown menu at the top of the BIDS environment and select Variables
--Click on the Add Variable button 
--Click on the Delete Variable button 
--Click the Test button to validate the expression in the Expression textbox
--Execute the Precedence.dtsx package in the BIDS debugger by pressing the F5 key or clicking the VCR-style
--To create a more useful test, open the Script Task 1 Editor and click the ellipsis in the ReadWriteVariables property

--   Public Sub Main()
--        Dim sTaskName As String = Dts.Variables("TaskName").Value.ToString
--        Dim iResponse As Integer = _
--MsgBox("Set MyBool to True?", MsgBoxStyle.YesNo, sTaskName)
--        If iResponse = MsgBoxResult.Yes Then
--            Dts.Variables("User::MyBool").Value = True
--        Else
--            Dts.Variables("User::MyBool").Value = False
--        End If

--        Dts.TaskResult = ScriptResults.Success
--    End Sub

--Close the Script Editor and click the OK button to close the Script Task Editor. Execute the Precedence.dtsx package in the BIDS debugger.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 9 of the Stairway to Integration Services
--About SSIS Task Errors
--Open the Precedence.dtsx package. Your Control Flow should appear
--Right-click Script Task 4 and click Enable
--Configure the precedence constraints inside Sequence Container 1 connecting Script Tasks 2 and 4 to Script Task 
--Evaluating the Expression and Constraint means both the expression and the execution status
--Press F5 to execute the package inside the BIDS debugger
--If you click the No button, Script Task 4 fails. Then Script Task 3 displays a message box informing you it has completed.
--Click the Edit Script button to open the “ssisscript – Integration Services Script Task” editor
--Public Sub Main()
--        Dim iErrorCode As Integer = _
--            Convert.ToInt32(Dts.Variables("ErrorCode").Value)
--        Dim sErrorDescription As String = _
--            Dts.Variables("ErrorDescription").Value.ToString
--        Dim sSourceName As String = _
--            Dts.Variables("SourceName").Value.ToString
--        Dim sSubComponent As String = _
--            "Script Task 4 OnError Event Handler"
--        Dim sMsg As String = "Source: " & sSourceName & vbCrLf & _
--                             "Error Code: " & iErrorCode.ToString & _
--                             vbCrLf & _
--                             "Error Description: " & _
--                             sErrorDescription

--        MsgBox(sMsg, , sSubComponent)

--        Dts.TaskResult = ScriptResults.Success

--      End Sub

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Level 10 of the Stairway to Integration Services

--About SSIS Task Events
--Open the Precedence.dtsx package
--Script Task 4 and Sequence Container 1
--To each OnError event handler,Script Task that displays a message box containing the values of the following SSIS OnError event handler variables:
--System::ErrorCode
--System::ErrorDescription
--System::SourceName
--click the No button to raise an Error event from Script Task 4

--Events and Execution Status
--licking the SSIS
--Dropdown menu, and then click Variables
--Select the Show System Variables
--System::Propagate variable is a Boolean variable that defaults
--Click on the Value column and change the default value from True to False
--Execute the Precedence.dtsx SSIS package in the BIDS debugger
--Open the .Net script editor by clicking the Edit Script button. Edit the code in Public Sub Main(),
 --If iErrorCode = 8 Then

--Public Sub Main()

--        Dim sTaskName As String = Dts.Variables("TaskName").Value.ToString
--        Dim iResponse As Integer

--        iResponse = MsgBox("Succeed " & sTaskName & "?", _
--                           MsgBoxStyle.YesNo + MsgBoxStyle.Question, _
--                           sTaskName & " Success Question")

--        If iResponse = vbYes Then
--            Dts.TaskResult = ScriptResults.Success
--        Else
--            'Dts.TaskResult = ScriptResults.Failure
--            Dts.Events.FireError(-1001, "Script Task 4", _
--                                 "Script Task 4 failed!", "", 0)
--        End If
--    End Sub

-- Click the dropdown on the Connection property and click the “<New connection…>” 
-- When the File Connection Manager Editor opens, 
-- Click the Browse button. 
-- Select File window displays, 
-- Navigate to the location of the Precedence.dtsx file in your file system
-- Navigate to the folder containing your SSIS solution (…My_First_SSIS_Project)
-- Click the OK button to complete creation of the File Connection Manager and return to the Execute Package Task Editor
-- Click the OK button to close the Execute Package Task Editor
-- Click in the white space of the Parent.dtsx SSIS package’s Control Flow to make sure Parent.dtsx is selected
-- Click in the white space of Precedence.dtsx’s Control Flow to make sure it is selected
-- Press the F5 key to execute the Precedence.dtsx SSIS package in the BIDS debugger
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Level 11 of the Stairway to Integration Services

--More About SSIS Task Events

--Open the Precedence.dtsx package. Your Control Flow should appear
--In Step 9 of this series, we created OnError event handlers
--execute the Precedence.dtsx SSIS package in the BIDS
--Click the No button to raise an Error event from Script Task 4