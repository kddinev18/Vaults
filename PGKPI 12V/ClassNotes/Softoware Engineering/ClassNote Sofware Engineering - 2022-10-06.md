---
tags: [classnote, SE, template]
creation date: 2022-10-06 17:07
modification date: 2022-10-06 17:07
---
Links: [[Software Engineering - Main]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Sofware Engineering
2022-10-06

SQL - Подготовка за входно ниво.
# Notes
## 1. Типове команди в SQL (DLL, DML)

| Command  | Description                                                              |
| -------- | ------------------------------------------------------------------------ |
| CREATE   | Used for creating database objects like a database and a database table. |
| ALTHER   | Used for modifying and renaming elements of an existing database table.  |
| DROP     | Used for removing an entire database or a database table.                |
| TRUNCATE | Used to remove all the records from a database table.                    |
| COMMENT  | Used to write comments within SQL quaries                                |
#### **1. CREATE**

CREATE is a data definition language(DDL) command that is used for creating database objects such as database and database table.

- The syntax for creating a database is as follows :
```SQL
CREATE DATABASE database_name;
```
- The basic syntax for creating a table in SQL is as follows:
```sql
CREATE TABLE public.customers  
(  
	column_name_1  datatype [NULL | NOT NULL],  
	column_name_2  datatype [NULL | NOT NULL],  
	.  
	.  
	.  
	column_name_n  datatype [NULL | NOT NULL] 
);
```
#### **2. Alter**
ALTER command in SQL is used to add, rename or modify, drop/delete columns in an existing database table. It can further be used to add and remove various constraints on an existing database table.

- Adding a new column is as follows :
```sql
ALTER TABLE table_name   
ADD (Columnname_1  datatype)
```
- Renaming a table is as follows:
```sql
ALTER TABLE table_name_1   
RENAME TO table_new_name;
```
- Deleting existing columns is as follows :
```sql
ALTER TABLE table_name   
DROP columnname_1 , columnname_2, ...
```
#### **3. Drop**
DROP TABLE SQL command is used to delete a database object from the database. We can even delete the database using the DROP command. We cannot perform a rollback operation to undo a DROP database/table command.

- The basic syntax for writing DROP command to delete a database in SQL is as follows :
```sql
DROP DATABASE database_name;
```
- The syntax for writing DROP command to delete a database in SQL is as follows :
```sql
DROP TABLE table_name;
```
#### **4. Truncate**
TRUNCATE TABLE command is used to remove all the data records from the database table. It deletes all the rows permanently. Ergo, we cannot perform a rollback operation to undo a TRUNCATE command.

- The generic syntax used for writing TRUNCATE command is as follows :
```sql
TRUNCATE TABLE table_name;
```
#### **5. Comment**
Comments in SQL are similar to comments in other programming languages such as Java, C++, Python, etc. They are primarily used to define a code section for easier understanding. Comments can be a single line, multi-line, or even inline types.

- Single line comment
```sql
-- this is a single line comment   SELECT * FROM customers;
```
- Multi-line comment.

```sql
/* this is a multi line comment   SELECT * FROM customers; */   SELECT customer_id FROM customers;
```
## 2. View
To put it simply, a view is a stored SQL query. Every time a view is used, it executes its stored query and creates a result set consisting of rows and columns.

An SQL view is called a virtual table because it does not store the rows and columns on the disk like a concrete table. Instead, it just contains the SQL query.
```ad-note
title: Table vs. View
A table (concrete table) stores its data in columns and rows in the database. A view (virtual table) is built on top of the concrete table(s) it fetches data from and does not store any data of its own in the database. A view only contains the SQL query that is used to fetch the data.
```
- Create view
```sql
CREATE VIEW _view_name_ AS  
SELECT _column1_, _column2_, ...  
FROM _table_name_  
WHERE _condition_;
```
- Update view
```sql
CREATE OR REPLACE VIEW _view_name_ AS  
SELECT _column1_, _column2_, ...  
FROM _table_name_  
WHERE _condition_;
```
- Dropping view
```sql
DROP VIEW _view_name_;
```
- Use view
```sql
SELECT *

FROM EntertainmentView;
```
## 3. Primary and Foreign Keys, Composit Primary Key
#### **1. Primary key**
The `PRIMARY KEY` constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key or more if you use composite primary key
```sql
CREATE TABLE Persons (  
    ID int NOT NULL,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int,  
    PRIMARY KEY (ID)  
);
```
```sql
CREATE TABLE Persons (  
    ID int NOT NULL PRIMARY KEY,  
    LastName varchar(255) NOT NULL,  
    FirstName varchar(255),  
    Age int  
);
```
```sql
ALTER TABLE Persons  
ADD PRIMARY KEY (ID);
```
#### **2. Composit Primary key**
A composite key in SQL can be defined as a combination of multiple columns, and these columns are used to identify all the rows that are involved uniquely.
```sql
CREATE TABLE COMPO
(
	EMP_ID INT,
	DEPT_ID INT,
	EMPNAME VARCHAR(25),
	GENDER VARCHAR(6),           
	PRIMARY KEY (EMP_ID,DEPT_ID)
);
```
#### **3. Foreign key**
The `FOREIGN KEY` constraint is a key used to link two tables together. A FOREIGN KEY is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.
```sql
CREATE TABLE Orders (  
    OrderID int NOT NULL PRIMARY KEY,  
    OrderNumber int NOT NULL,  
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)  
);
```
```sql
ALTER TABLE Orders  
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
```
## 4. What's Relational Database Management System (RDBMS)
A relational database management system (RDBMS) is a program that allows you to create, update, and administer a relational database. Most relational database management systems use the SQL language to access the database.

A _relational database_ is a type of database. It uses a structure that allows us to identify and access data _in relation_ to another piece of data in the database. Often, data in a relational database is organized into tables.
## 5. Varchar vs Nvarchar
Varchar and nvarchar are variable length data types which we use to store different types of strings. These data types are helpful in modern operating systems. These varieties of data types avoid conversion of data from one type to another according to the operating systems. Therefore, varchar and nvarchar help the programmer to identify Unicode and non-Unicode strings without much difficulty.

- Varchar stores ASCII values and nvarchar stores Unicode characters.
- Varchar uses one byte per character while nvarchar uses two bytes per character.
- Varchar can store a maximum of 8000 non-Unicode characters and nvarchar stores maximum of 4000 Unicode or non-Unicode characters.

## 6. Relationships in SQL
#### **Types of relationships in a database**
There are 3 main types of relationship in a database:
-   one-to-one
-   one-to-many
-   many-to-many.
![What are the types of relationship in database?](https://blog.devart.com/wp-content/uploads/2021/10/111.drawio.png)
#### **One-to-many relationship**
Let’s start with a one-to-many relationship as it is the most commonly used type. So, what is one-to-many relationship in SQL? A one-to-many relationship occurs when one record in table 1 is related to one or more records in table 2. However, one record in table 2 cannot be related to more than one record in table 1.

#### **One-to-one relationship**

A one-to-one relationship in a database occurs when each row in table 1 has only one related row in table 2.

#### **Many-to-many relationship**

A many-to-many relationship occurs when multiple records in one table are related to multiple records in another table.
#### **Self-referencing relationships**
A self-referencing relationship (also known as a recursive relationship) in a database occurs when a column in a table relates to another column in the same table. In such a relationship, only one table is involved.
## 7. What is SQL Server
Microsoft SQL Server is a relational database management system developed by Microsoft. As a database server, it is a software product with the primary function of storing and retrieving data as requested by other software applications—which may run either on the same computer or on another computer across a network.
## 8. DBMS and SDBMS
#### **1. Database Management System**
-   Database management system is a software which is used to manage the database. For example: [MySQL](https://www.javatpoint.com/mysql-tutorial), [Oracle](https://www.javatpoint.com/oracle-tutorial), etc are a very popular commercial database which is used in different applications.
-   DBMS provides an interface to perform various operations like database creation, storing data in it, updating data, creating a table in the database and a lot more.
-   It provides protection and security to the database. In the case of multiple users, it also maintains data consistency.

#### **2. DBMS allows users the following tasks:**

-   ``Data Definition:`` It is used for creation, modification, and removal of definition that defines the organization of data in the database.
-   ``Data Updation:`` It is used for the insertion, modification, and deletion of the actual data in the database.
-   ``Data Retrieval:`` It is used to retrieve the data from the database which can be used by applications for various purposes.
-   ``User Administration:`` It is used for registering and monitoring users, maintain data integrity, enforcing data security, dealing with concurrency control, monitoring performance and recovering information corrupted by unexpected failure.
#### **3. SDBMS (Spatial Database Management System)**
A DBMS designed to store and query spatial data
- vector objects
- raster objects
- networks
## 9. What is SQL
SQL(Structured Query Language) is a computer language that we use to interact with a relational database.SQL is a tool for organizing, managing, and retrieving archived data from a computer database.
#### **1. Rules for SQL:**
-   A ‘;’ is used to end SQL statements.
-   Statements may be split across lines but keywords may not.
-   Identifiers, operator names, literals are separated by one or more spaces or other delimiters.
-   A comma(,) separates parameters without a clause.
-   A space separates a clause.
-   Reserved words can not be used as identifiers unless enclosed with double quotes.
-   Identifiers can contain up to 30 characters.
-   Identifiers must start with an alphabetic character.
-   Characters and date literals must be enclosed within single quotes.
-   Numeric literals can be represented by simple values.
-   Comments may be enclosed between /* and */ symbols and maybe multi-line.

## 10. SQL functions
#### **1. String Functions**
##### Length

The most **simple** SQL string function is length. As its name suggests, `length` returns the number of characters that a given string contains (including spaces and punctuation). Let's look at a simple PostgreSQL select statement and feed it with the string 'Hello, my name is':
```sql
SELECT LENGHT('Hello, my name is');
```

The result of running this query is 17. If you manually count the number of characters, spaces included, in the above string, you'll find that 17 is a precise match! While `length` may at first seem like a trivial function, you will actually use it very frequently.

##### Trim

Let's trim some fat! Another example from the most useful SQL functions category is `trim`. It eliminates **excess** spaces and tabs from the beginning and end of a string that we pass in as its argument. For instance, if we pass in the string ' Hello, my name is ', we will receive the same string but without all those leading and trailing spaces. Here's a basic query with that string:
```sql
SELECT TRIM('  Hello, my name is  ');
```


As expected, the above query returns `'Hello, my name is'`.

##### Concat

The `concat` function combines (**concatenates**) two or more strings that we pass in as its arguments. Here's an example of string concatenation in action:
```sql
SELECT CONCAT(' Hello, ','my name is ','Paul');
```

This query returns the string `'Hello, my name is Paul'`.

##### Upper

Given a string, upper returns the same string but with all its characters cast to **uppercase**. So, if you'd like everyone to hear you loud and clear, you can write the following query:
```sql
SQLQCT UPPER('Hello, my name is Paul');
```

This returns the string `'HELLO, MY NAME IS PAUL'`.

##### Lower

The function `lower` is the direct opposite of `upper` — it takes a string and returns the same string with all its characters cast to **lowercase**. Here's a query that uses lower:
```sql
SELECT LOWER('Hello, my name is Paul');
```
Predictably, we get the string `'hello, my name is paul'`.
#### **2. NUMERICAL FUNCTIONS**
Numerical functions simply work with numbers, and there are quite a lot of useful SQL functions in this category. Let's discuss a few of these.

##### Abs

Trimming? Abs? Yeah, I know what you're thinking, but this isn't a workout program. Abs is shorthand for absolute; it's one of the most common SQL functions that calculates the **absolute value** of a numeric value we pass in as its argument. In other words, abs returns the positive version of a given number. Here's an example:
```sql
SELECT ABS(-22),ABS(22);
```
If you've been paying attention in math class, you'll know that both of these calls to abs return the number 22.

##### Round

The `round` function takes a floating-point (decimal) number and rounds it just like you normally would on paper. Take a look at this simple example:
```sql
SELECT ROUND(5.4),ROUND(5.5),Round(5.6);
```

We would get 5 (next smallest integer), 6 (next largest integer), and 6 (next largest integer), respectively, for the above three calls to round.

##### Ceil

The `ceil` function returns the **ceiling** of a number—the first integer greater than or equal to that number. To visualize this process, place the number in question (say -0.5) on a standard number line and move left to right, searching for the next largest integer (in this case, that's 0). Here's an additional example:
```sql
SELECT CEIL(5.4),CEIL(5.5),CEIL(6);
```
We receive the numbers 6, 6, and 6 for these three calls.

##### Floor

`Floor` is the reverse of the `ceil` function; it returns the floor of the decimal number we pass in as its argument — the first integer that is less than or equal to that number. For example, the floor of -0.5 is -1, as that is the first integer that is less than -0.5. With the number line visualization, you start at the given number and move right to left in search of an integer. If we repeat the above calls with the `floor` function instead:
```sql
SELECT FLOOR(5.4),FLOOR(5.5),FLOOR(6);
```
We receive these three numbers after running the above query: 5, 5, and 6.
##### Greatest

Another one from the most useful SQL functions, greatest, takes a list of expressions and returns the **largest** of them. Here's an example of it being used:
```sql
SELECT GREATEST(1,2,3,5,6);
```

Naturally, this query returns 6, as that is the greatest value in the list we provided.

##### Least

Least is the direct inverse of greatest. If we write the following query:
```sql
SELECT LEAST(1,2,3,5,6);
```
This query returns 1, as that is the smallest value in the list we provided.