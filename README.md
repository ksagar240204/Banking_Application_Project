Banking Application Overview
Welcome to our Banking Application! This project is all about making it easier and more secure for customers to manage their bank accounts. It offers a variety of features for both admins and customers to ensure a smooth banking experience.

Admin Features
Admins can log in with a username and password to manage customer accounts. They can register new customers by entering details such as full name, address, mobile number, email ID, account type (either Savings or Current Account), initial balance (minimum 1000), date of birth, and ID proof. Each registration generates an account number and a temporary password for the customer. Admins can also add, delete, modify, and view customer details (though they can't see passwords or balances).

Customer Features
Customers are registered by the admin and receive their account number and temporary password. They can then set up a new password using these details. Once logged in, customers can view their account details and balance on their dashboard. They can also check the last 10 transactions, either in increasing or decreasing order of date. Customers have the ability to deposit and withdraw money, with all transactions recorded in the database. Importantly, their balance cannot fall below zero. Customers can also close their accounts after withdrawing all funds. As a bonus, they can download a PDF of their last 10 transactions.

What You’ll Need
Here’s a list of the tools and libraries you’ll need to get started:

Eclipse IDE: For writing and managing your code.
Apache Tomcat 9: To deploy your application.
MySQL Server & Workbench: For database management.
Java JDK (latest version): To run your Java applications.
JDBC Connector for MySQL: To connect your application to the database.
PDF Generation Library (e.g., iText): For generating PDFs of transactions.

Getting Started

Setting Up the Database
Install MySQL Server and MySQL Workbench.
Create a new database called banking.
Run the SQL script provided to create the necessary tables.

Configuring Eclipse
Install Eclipse IDE and set up Apache Tomcat 9 within Eclipse.
Create a new Dynamic Web Project for the banking application.

Adding Libraries
Add the JDBC connector and PDF generation libraries to your project.

Deploying the Application
Write and deploy the necessary servlets, JSPs, and Java classes for the application.
Make sure the application is connected to the MySQL database using JDBC.

Running the Application
Start the Tomcat server.
Access the application through your web browser.

Database Schema
Here’s a quick look at how the database is structured:

Admin Table: Contains fields for id (Primary Key), username, and password.
Customer Table: Contains fields for id (Primary Key), full_name, address, mobile_no, email_id, account_type, initial_balance, dob, id_proof, account_no, and password.
Transactions Table: Contains fields for id (Primary Key), account_no, type (Deposit/Withdraw/Balance/Fund Transfer), amount, and date.

LinkedIn Profile (Project Video link):
https://www.linkedin.com/posts/sagar-k-b2520625a_banking-application-project-overview-developed-activity-7228241462721662976-PDVY?utm_source=share&utm_medium=member_desktop

