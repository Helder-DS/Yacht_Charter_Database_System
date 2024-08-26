# SQL Database Project: Holiday Charter Management System

This project involves the design and implementation of a SQL database to manage holiday charter operations. The system tracks customers, yachts, ports, and charter bookings, ensuring accurate and efficient data management. The database is built with robust Entity Relationship Modelling (ERD) to reflect real-world business scenarios, including complex relationships such as many-to-many and one-to-many cardinalities. Key features include the use of primary and foreign key constraints, data normalization up to the Third Normal Form (3NF), and the incorporation of stored procedures and triggers to automate and streamline business processes.

## Table of Contents
- [Entity Relationship Modelling](#entity-relationship-modelling)
- [Database Design and Justifications](#database-design-and-justifications)
  - [Justification of Cardinality Ratios](#justification-of-cardinality-ratios)
  - [Justification of Participation Constraints](#justification-of-participation-constraints)
  - [Entities and Attributes](#entities-and-attributes)
  - [Limitations and Assumptions](#limitations-and-assumptions)
- [Relational Schema and Normalisation](#relational-schema-and-normalisation)
  - [Relational Schema](#relational-schema)
  - [Choice of Data Types](#choice-of-data-types)
  - [Normalisation](#normalisation)
- [Database Construction](#database-construction)
- [Analysis and Interpretation](#analysis-and-interpretation)

### Entity Relationship Modelling 

![image](https://github.com/user-attachments/assets/75694979-7648-4630-84d2-081a91f23835)


## Database Design and Justifications

### Justification of Cardinality Ratios
- **Customers to Holiday Charters**: One-to-Many. A customer can book multiple holiday charters, but each holiday charter is booked by only one customer.
- **Holiday Charters to Yachts**: Many-to-One. Multiple holiday charters may involve the same yacht, but each charter involves only one yacht.
- **Holiday Charters to Ports**: Many-to-Many. A holiday charter can visit multiple ports, and each port can be visited by many charters.
- **Ports to Yachts**: One-to-Many. Each port can host multiple yachts, but each yacht is based at a single port.

### Justification of Participation Constraints
- **Customer and Holiday Charter**: Full participation as every customer must book a charter, and every charter must be booked by a customer.
- **Holiday Charter and Yachts**: Full participation since each charter must involve a yacht, and every yacht must be involved in a charter.
- **Ports and Yachts**: Partial participation for ports as not all ports will have yachts based there. Full participation for yachts since every yacht must be based at a port.
- **Holiday Charter and Ports**: Full participation for both entities as every charter visits ports, and every port will have visiting charters.

### Entities and Attributes
- **Customer**: id number, name, nationality, email address, phone number.
- **Yacht**: name, type, model, home port, number of berths, cost per day.
- **Port**: name, phone number, email address, number of dockings.
- **Charter**: charter id, start date, duration.
- **Visits**: visit id, expected arrival date, duration of stay.

### Limitations and Assumptions
- **Cardinality Changes**: Assumptions about cardinality might change over time, leading to outdated data.
- **Data Type Selection**: Uncertainty in selecting data types, such as the maximum length for customer emails, which could result in future limitations.

## Relational Schema and Normalisation

### Relational Schema
- Detailed schema design, including table structures and relationships.

### Choice of Data Types
- **Customer Table**: Mostly `VARCHAR`, with varying lengths depending on the attribute. `VARCHAR(255)` for email to accommodate longer addresses.
- **Port Table**: `VARCHAR` for text fields, `SMALLINT` for numbers like dockings to conserve space.
- **Yacht Table**: `VARCHAR` for text attributes, `TINYINT` for berths (0-255 range), and `DECIMAL(10,2)` for costs to ensure precision.
- **Charter Table**: `VARCHAR` for IDs and text, `DATE` for start date, and `TINYINT` for duration.
- **Visit Table**: `VARCHAR` for IDs and text, `DATE` for arrival date, and `TINYINT` for the length of stay.

### Normalisation
- All tables have been normalized to the Third Normal Form (3NF), ensuring no repeating groups, composite keys, or transitive dependencies.

## Database Construction

- **Primary Key Constraints**: Ensuring unique identification of records.
- **Foreign Key Constraints**: Maintaining relationships between tables with `ON DELETE CASCADE` for full participation.
- **Stored Procedures and Triggers**: Used to automate business processes, like adding customer details or handling out-of-service yachts.

## Analysis and Interpretation

- **Successes**: The database accurately represents the business scenario with proper use of keys and relationships.
- **Limitations**: Potential changes in cardinality and data types that could affect future data integrity.
