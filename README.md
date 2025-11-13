

# 📚 Library Management System

This project contains the SQL schema and ER diagram for a Library Management System.  
It is designed to manage books, members, loans, fines, and staff records in a relational database using MySQL Workbenc

## 🗄️ Database Structure

### Tables
- **Book**: Stores information about books (title, author, publisher, ISBN, available copies).
- **Member**: Stores library members’ details (name, email, phone, address, membership date).
- **Loan**: Tracks which member borrowed which book, along with due dates and return status.
- **Fine**: Records penalties for overdue loans.
- **Staff**: Stores librarian/admin details.

### Relationships
- **Book → Loan**: One-to-Many (a book can be borrowed many times).
- **Member → Loan**: One-to-Many (a member can borrow many books).
- **Loan → Fine**: One-to-One (a loan may generate one fine).
- **Staff**: Independent entity (manages library operations).

## 🧑‍💻 Features
- SQL schema with constraints (`PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`).
- Sample data inserts for quick testing.
- ER diagram included for visualization.
- Supports automatic timestamps for record creation.
