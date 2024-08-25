/*Creating the yachts database */
Create database Yachts

/*Choosing the database*/
use Yachts


/* Creating the customer table */
create table Customer
(cust_id VARCHAR(15) not null,
cust_name VARCHAR(25),
cust_nationality VARCHAR(25),
cust_email varchar(255),
cust_phone_no varchar(15),

constraint PK_cust primary key (cust_id)

);

/*Creating the port table */
create table Port
(port_name varchar(25) not null, 
port_phone_no varchar(20),
port_email varchar(255),
docking_places smallint,

constraint PK_port_name primary key (port_name)

);

/*Creating the Yacht table */
create table Yacht
(yacht_name varchar(25) not null,
yacht_type varchar(25),
yacht_model varchar(25),
yacht_home_port varchar(25),
yacht_berths tinyint, 
cost decimal(10,2),

constraint PK_yacht primary key (yacht_name),
constraint fk_port foreign key (yacht_home_port) references Port (port_name) on delete cascade


);

/* Creating the Charter table */
create table Charter  
(chart_id VARCHAR(15) not null,
chart_start_date date, 
duration tinyint, 
cust_id VARCHAR(15),
yacht_name varchar(25),

constraint PK_charter primary key (chart_id),
constraint fk_cust foreign key (cust_id) references Customer (cust_id) on delete cascade,
constraint fk_yacht foreign key (yacht_name) references Yacht (yacht_name) on delete cascade

);


/*Creating the visit table */
create table Visit
(visit_id varchar(15) not null, 
port_name varchar(25), 
chart_id varchar(15),
date_of_arrival date, 
length_of_stay tinyint,

constraint pk_visit primary key (visit_id),
constraint fk_port_name foreign key (port_name) references PORT (port_name),
constraint fk_chart_id foreign key (chart_id) references Charter (chart_id)
);


/*Selecting all the tabels */
SELECT * FROM Customer

SELECT * FROM Charter

SELECT * FROM Yacht

SELECT * FROM Port

SELECT * FROM Visit
