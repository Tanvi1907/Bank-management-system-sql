# Bank Management System (SQL)

## 📌 Project Overview
This is a beginner-level SQL based Bank Management System project.
It is designed to manage bank customers, accounts, and transactions
using MySQL and core SQL concepts.

## 🛠 Technologies Used
- MySQL
- SQL (DDL, DML)
- Stored Procedures
- Triggers
- Views
- Indexes

## ✨ Features
- Customer management
- Account details
- SQL joins and queries
- Banking operations using stored procedures
- Audit logging and validations

## 🔹 Advanced Features

### 1. Stored Procedures
- sp_deposit(account_id, amount)
- sp_withdraw(account_id, amount)
- sp_transfer(from_account, to_account, amount)

### 2. Triggers
- Automatically prevent negative balance
- Automatically log transactions in audit_log table

### 3. Views
- high_balance_customers
- monthly_transactions

### 4. Indexes
- Improved query performance on accounts and transactions

### 5. Audit Log
- audit_log table tracks all banking operations

## ⚙️ How to Run the Project
1. Run `Database.sql` to create the database
2. Run `Tables.sql` to create tables
3. Run `Procedures.sql` for banking operations
4. Run `Triggers.sql` for validation and logging
5. Run `Views.sql` for reports
6. Insert sample data and execute queries

## 📂 Project Structure
- Database.sql   → Database creation
- Tables.sql     → Table definitions
- Procedures.sql → Deposit, Withdraw & Transfer logic
- Triggers.sql   → Balance validation & audit logging
- Views.sql      → Reporting views
- Queries.sql    → Sample SQL queries

## 🎯 Project Level
Beginner / Internship Level SQL Project

## 👩‍💻 Author
Tanvi Rastogi



