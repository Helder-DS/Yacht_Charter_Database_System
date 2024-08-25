/* Store procedures and Triggers */

/* Store procedure to insert deleted data to the out of Service Table */

USE Yachts

Create procedure Insert_into_Customer
(
	@Cust_id VARCHAR(15),
	@Cust_name VARCHAR(25),
	@cust_nationality VARCHAR(25),
	@cust_email VARCHAR(255),
	@cust_phone_no VARCHAR(15),
	@chart_id VARCHAR(15),
	@chart_start_date date,
	@duration tinyint

)

as
begin
	
	insert into Customer (cust_id, cust_name, cust_nationality, cust_email, cust_phone_no)
	values (@cust_id, @cust_name, @cust_nationality, @cust_email, @cust_phone_no) 

	insert into Charter (chart_id, chart_start_date, duration)
	values (@chart_id, @chart_start_date, @duration)

end



/* Trigger basically inserts all the data from any deleted yacht and inserts it into the out_of_service table */

CREATE TABLE out_of_service 
(yacht_name varchar(25) not null,
yacht_type varchar(25),
yacht_model varchar(25),
yacht_home_port varchar(25),
yacht_berths tinyint, 
cost decimal(10,2),

constraint PK_oos_yacht primary key (yacht_name)
);

CREATE TRIGGER tr1 ON Yacht AFTER DELETE AS 
BEGIN 
	INSERT INTO out_of_service(yacht_name, yacht_type, yacht_model, yacht_home_port, yacht_berths, cost)
	SELECT deleted.yacht_name, deleted.yacht_type, deleted.yacht_model, deleted.yacht_home_port, deleted.yacht_berths, deleted.cost
	FROM deleted
END;
