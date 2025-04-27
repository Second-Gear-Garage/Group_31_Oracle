# Used Car Company - Oracle Database Project

[![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)](https://www.oracle.com/database/)
[![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=database&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![PL/SQL](https://img.shields.io/badge/PL/SQL-F80000?style=for-the-badge&logo=oracle&logoColor=white)](https://www.oracle.com/database/technologies/appdev/plsql.html)

## Description

This project contains the Oracle database schema and related scripts for managing the inventory, sales, customer, and employee data for a used car dealership. The database is designed to support the core operations of the business, providing a structured and efficient way to store and retrieve information.

## Features

* **Vehicle Inventory Management:** Tracks detailed information about each vehicle, including make, model, year, VIN, mileage, condition, acquisition details, and pricing.
* **Customer Relationship Management (CRM):** Stores customer information, purchase history, and contact details.
* **Sales Transaction Tracking:** Records sales details, including salesperson, customer, vehicle sold, sale date, and final price.
* **Employee Management:** Manages employee information, roles, and sales performance.
* **Reporting Capabilities:** Designed to facilitate querying for various business reports (e.g., sales summaries, inventory aging, customer demographics).
* **Data Integrity:** Utilizes constraints (Primary Keys, Foreign Keys, Checks) to ensure data accuracy and consistency.
* **Security:** Basic role-based access control can be implemented using Oracle user management.

## Technologies Used

* **Database:** Oracle Database (Specify version, e.g., 19c, 21c)
* **Language:** SQL, PL/SQL (for stored procedures, triggers, functions if any)
* **Tools:** Oracle SQL Developer, SQL*Plus, or any compatible SQL client.

## Prerequisites

* An installed and running instance of Oracle Database (Specify version).
* Access to an Oracle user account with sufficient privileges to create tables, sequences, views, and other database objects.
* An SQL client tool to connect to the database and run scripts.

## Installation / Setup

1.  **Clone the Repository (Optional):**
    ```bash
    git clone <your-repository-url>
    cd <repository-directory>
    ```
2.  **Connect to Oracle:**
    Connect to your Oracle database instance using your preferred SQL client (like SQL Developer or SQL*Plus) with appropriate user credentials.
3.  **Run Schema Creation Script:**
    Execute the main schema creation script (e.g., `schema_creation.sql`) to create tables, sequences, constraints, and other necessary objects.
    ```sql
    -- Example using SQL*Plus
    SQL> @path/to/schema_creation.sql
    ```
    *(Ensure the path to the script is correct)*
4.  **Run Seed Data Script (Optional):**
    Execute the seed data script (e.g., `seed_data.sql`) to populate the database with initial sample data for testing and development.
    ```sql
    -- Example using SQL*Plus
    SQL> @path/to/seed_data.sql
    ```

## Database Schema Overview

The database consists of several related tables, including:

* `Vehicles`: Stores details about each car in inventory.
* `Customers`: Stores information about dealership customers.
* `Employees`: Stores information about dealership staff.
* `Sales`: Records details of each vehicle sale transaction.
* `VehicleFeatures`: (Optional) Links vehicles to specific features (e.g., sunroof, navigation).
* `MaintenanceLog`: (Optional) Tracks maintenance performed on vehicles.

*(Consider adding a link to an Entity-Relationship Diagram (ERD) if available, or list the main tables and their primary relationships here).*

## Usage Examples

Here are some example SQL queries you might run against the database:

**Find all available Toyota Camrys:**

```sql
SELECT Make, Model, Year, VIN, Price
FROM Vehicles
WHERE Make = 'Toyota' AND Model = 'Camry' AND SaleID IS NULL; -- Assuming SaleID links to the Sales table and is NULL if unsold
List all sales made in the last month:SELECT s.SaleID, s.SaleDate, v.Make, v.Model, c.FirstName || ' ' || c.LastName AS CustomerName, e.FirstName || ' ' || e.LastName AS SalespersonName, s.FinalPrice
FROM Sales s
JOIN Vehicles v ON s.VehicleID = v.VehicleID
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN Employees e ON s.EmployeeID = e.EmployeeID
WHERE s.SaleDate >= ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1) AND s.SaleDate < TRUNC(SYSDATE, 'MM');
Get total sales amount per salesperson this year:SELECT e.FirstName || ' ' || e.LastName AS SalespersonName, SUM(s.FinalPrice) AS TotalSales
FROM Sales s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
WHERE EXTRACT(YEAR FROM s.SaleDate) = EXTRACT(YEAR FROM SYSDATE)
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY TotalSales DESC;
ContributingContributions are welcome! If you'd like to contribute, please follow these steps:Fork the repository.Create a new branch (git checkout -b feature/your-feature-name).Make your changes.Commit your changes (git commit -am 'Add some feature').Push to the branch (git push origin feature/your-feature-name).Create a new Pull Request.Please ensure your code adheres to the existing style and includes relevant tests or documentation updates.License(Specify the license under which the project is released, e.g., MIT, Apache 2.0, or Proprietary).Example:This project is licensed under the MIT License - see the LICENSE.md file for details (if you have one).
