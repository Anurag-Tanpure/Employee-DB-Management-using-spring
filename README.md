Employee Database Management System (EmpDB)

Project Overview
The Employee Database Management System (EmpDB) is an intermediate-level Java-based web application that manages employee and department records using Spring MVC, Hibernate ORM, and MySQL database. The project is designed for practice and learning purposes, providing a hands-on experience with Java web development frameworks.

Features
•	Employee and Department Management
•	CRUD Operations (Create, Read, Update, Delete) for Employees and Departments
•	Hibernate ORM for database interactions
•	Spring MVC for handling requests and views
•	JSP for UI rendering
•	Maven for dependency management
•	Uses MySQL as the database
•	Deployment on Apache Tomcat 8.0

Technologies Used
•	Java 8
•	Spring MVC 5.3.19
•	Spring ORM 5.3.19
•	Hibernate 5.3.19.Final
•	MySQL Database
•	JSP & JSTL
•	Tomcat 8.0
•	Maven
]

Database Schema

Employee Table

  Column	Data Type	Description
  id	INT (PK)	Employee ID
  name	VARCHAR(50)	Employee Name
  age	INT	Employee Age
  salary	DOUBLE	Employee Salary
  department_id	INT (FK)	Department ID

Department Table

  Column	Data Type	Description
  id	INT (PK)	Department ID
  name	VARCHAR(50)	Department Name

		
Installation & Setup

1.	Clone the repository
2.	git clone https://github.com/your-username/empdb.git
cd empdb
3.	Import the project into Eclipse/IntelliJ as a Maven project.
4.	Set up the MySQL database
CREATE DATABASE empdb;
5.	Configure application.properties or hibernate.cfg.xml
6.	Run the project on Apache Tomcat 8.0.
7.	Access the application on:
http://localhost:8080/empdb

Dependencies (From pom.xml)

•	spring-webmvc (Spring MVC framework)
•	spring-context (Spring Core features)
•	spring-orm (Spring integration with Hibernate)
•	hibernate-core (ORM framework)
•	mysql-connector-java (MySQL database driver)
•	javax.servlet-api (Servlet support)
•	jstl (JSP tag library)
•	junit-jupiter-engine (JUnit 5 for testing)


Author
Developed by [Anurag Tanpure] as part of learning Spring and Hibernate development.

