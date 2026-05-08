# Bank Branch Management System

A relational database project developed using SQL and MySQL to manage banking operations such as branch management, customer registration, account handling, and transaction tracking.



# Project Overview

The **Bank Branch Management System** is designed to demonstrate how database systems can be used to organize and manage banking information efficiently. The project focuses on creating relationships between branches, customers, accounts, and transactions using SQL.

This system helps:

* Store customer information
* Manage bank branches
* Track account balances
* Record deposits and withdrawals
* Generate transaction reports using SQL JOIN queries



# Objectives

* To design a structured relational database
* To implement relationships using foreign keys
* To manage banking transactions effectively
* To demonstrate SQL operations in a real-world scenario



#  Technologies Used

* SQL
* MySQL
* GitHub
* VS Code



# 🗂 Database Structure

The project contains four main tables:

## 1. Branches

Stores branch information.

| Field       | Description      |
| ----------- | ---------------- |
| branch_id   | Unique branch ID |
| branch_name | Branch name      |
| location    | Branch location  |



## 2. Customers

Stores customer records.

| Field       | Description        |
| ----------- | ------------------ |
| customer_id | Unique customer ID |
| name        | Customer name      |
| branch_id   | Related branch     |



## 3. Accounts

Stores account information.

| Field       | Description       |
| ----------- | ----------------- |
| account_id  | Unique account ID |
| customer_id | Account owner     |
| balance     | Current balance   |



## 4. Transactions

Stores banking transactions.

| Field            | Description           |
| ---------------- | --------------------- |
| transaction_id   | Unique transaction ID |
| account_id       | Related account       |
| amount           | Transaction amount    |
| type             | Deposit or withdrawal |
| transaction_time | Date and time         |


#  Relationships

* One branch can have many customers
* One customer can own multiple accounts
* One account can have many transactions

Foreign keys are used to maintain data integrity.



# ▶️ How to Run the Project

## Step 1: Open MySQL

Start your MySQL server and open the MySQL terminal.

## Step 2: Import the SQL File

Run the following command:

```sql
SOURCE database.sql;
```

OR copy and paste the SQL code directly into the MySQL terminal.

## Step 3: Execute the Queries

The system will:

* Create the database
* Create all tables
* Insert sample data
* Generate test records

## Step 4: The explanation video

To watch the video explaining the work, tap the YouTube link below
https://youtu.be/zRa5DmkMkw0?feature=shared



# 📊 Sample Features

* Customer registration
* Account creation
* Deposit recording
* Withdrawal recording
* Transaction reporting using JOIN queries



# 📁 Project Files

```text
Bank-Branch-Management-System/
│
├── bank.sql
├── README.md
├── report.pdf
├── presentation.pptx
```

---

# ⚠️ Challenges Faced

* Managing foreign key relationships
* Understanding SQL JOIN operations
* Debugging syntax errors
* Organizing relational tables correctly



# Achievements

* Developed a functional relational database system
* Implemented table relationships successfully
* Generated meaningful transaction reports
* Improved practical SQL and database management skills



# Future Improvements

Possible future upgrades include:

* Graphical User Interface (GUI)
* User authentication system
* Loan management module
* Mobile banking integration
* Real-time transaction processing



# Author

Keith Ndiema
Database Systems Project – 2026



# License

This project is for educational purposes only.
