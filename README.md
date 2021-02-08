# SQL-challenge
SQL Assignment

This is my overall 8th and first SQL assignment. In this assignment, I have performed the following tasks:
* Designed the tables to hold data in the CSVs
* Imported the CSVs into a SQL database, and performed:
	- Data Engineering or Data Modeling:
	  1. Inspected the CSVs and sketched out an ERD of the tables
	  2. Used the information in order to to create a table schema for each of the six CSV filesS
	  3. Specified data types, primary keys, foreign keys, and other constraints
	  4. For the primary keys, I confirmed that the column is unique
	  5. Created tables in the correct order to handle foreign keys
	  6. Imported each CSV file into the corresponding SQL table
	  7. Imported the data in the same order that the tables were created and account for the headers when importing to avoid errors
	- Data Analysis: After completing database, I performed the following queries:
	  1. Listed the following details of each employee: employee number, last name, first name, sex, and salary
	  2. Listed first name, last name, and hire date for employees who were hired in 1986
	  3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
	  4. Listed the department of each employee with the following information: employee number, last name, first name, and department name
	  5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
	  6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name
	  7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
	  8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name
* As 'Bonus' or optional task, I examined the data and did following tasks:
	- Imported the SQL database into Pandas
	- Made necessary modifications for my username, password, host, port, and database name
* Created a histogram to visualize the most common salary ranges for employees
* Create a bar chart of average salary by title

As a part of my final submission, I did the following tasks:
* Create an image file (sql-challenge-ERD.png) of my SQL database ERD
* Create a '.sql' file (create_tables.sql) of my table schemata
* Create a '.sql' file (all_queries.sql) of my queries
* Created a 'Jupyter Notebook' (sql_challenge.ipynb) of the bonus analysis, as an optional task