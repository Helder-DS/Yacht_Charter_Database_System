# SQL Database Project: Holiday Charter Management System

## 1. Database Design and Justifications

### 1.1 Justification of Cardinality Ratios
- **Customers to Holiday Charters**: One-to-Many. A customer can book multiple holiday charters, but each holiday charter is booked by only one customer.
- **Holiday Charters to Yachts**: Many-to-One. Multiple holiday charters may involve the same yacht, but each charter involves only one yacht.
- **Holiday Charters to Ports**: Many-to-Many. A holiday charter can visit multiple ports, and each port can be visited by many charters.
- **Ports to Yachts**: One-to-Many. Each port can host multiple yachts, but each yacht is based at a single port.

### 1.2 Justification of Participation Constraints
- **Customer and Holiday Charter**: Full participation as every customer must book a charter, and every charter must be booked by a customer.
- **Holiday Charter and Yachts**: Full participation since each charter must involve a yacht, and every yacht must be involved in a charter.
- **Ports and Yachts**: Partial participation for ports as not all ports will have yachts based there. Full participation for yachts since every yacht must be based at a port.
- **Holiday Charter and Ports**: Full participation for both entities as every charter visits ports, and every port will have visiting charters.

### 1.3 Entities and Attributes
- **Customer**: id number, name, nationality, email address, phone number.
- **Yacht**: name, type, model, home port, number of berths, cost per day.
- **Port**: name, phone number, email address, number of dockings.
- **Charter**: charter id, start date, duration.
- **Visits**: visit id, expected arrival date, duration of stay.

### 1.4 Limitations and Assumptions
- **Cardinality Changes**: Assumptions about cardinality might change over time, leading to outdated data.
- **Data Type Selection**: Uncertainty in selecting data types, such as the maximum length for customer emails, which could result in future limitations.

## 2. Relational Schema and Normalisation

### 2.1 Relational Schema
- Detailed schema design, including table structures and relationships.

### 2.2 Choice of Data Types
- **Customer Table**: Mostly `VARCHAR`, with varying lengths depending on the attribute. `VARCHAR(255)` for email to accommodate longer addresses.
- **Port Table**: `VARCHAR` for text fields, `SMALLINT` for numbers like dockings to conserve space.
- **Yacht Table**: `VARCHAR` for text attributes, `TINYINT` for berths (0-255 range), and `DECIMAL(10,2)` for costs to ensure precision.
- **Charter Table**: `VARCHAR` for IDs and text, `DATE` for start date, and `TINYINT` for duration.
- **Visit Table**: `VARCHAR` for IDs and text, `DATE` for arrival date, and `TINYINT` for the length of stay.

### 2.3 Normalisation
- All tables have been normalized to the Third Normal Form (3NF), ensuring no repeating groups, composite keys, or transitive dependencies.

## 3. Database Construction

- **Primary Key Constraints**: Ensuring unique identification of records.
- **Foreign Key Constraints**: Maintaining relationships between tables with `ON DELETE CASCADE` for full participation.
- **Stored Procedures and Triggers**: Used to automate business processes, like adding customer details or handling out-of-service yachts.

## 4. Analysis and Interpretation

- **Successes**: The database accurately represents the business scenario with proper use of keys and relationships.
- **Limitations**: Potential changes in cardinality and data types that could affect future data integrity.
