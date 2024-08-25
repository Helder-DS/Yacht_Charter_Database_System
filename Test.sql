/*Questions*/

use Yachts

/* add details of a new customer together with the start date and duration of the charter they have booked, 
but without specifying the yacht to be used or the ports to be visited. */

/* Created a store Procedure */

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

/* Exacute query used to insert data into the customer table and charter table with specifying a yacht name */

EXEC Insert_into_Customer @cust_id = 'd100',  @cust_name = 'Steve James',  @cust_nationality = 'Irish', @cust_email = 'Steve.James@ulster.ac.uk',
@cust_phone_no = '07854785236', @chart_id = '668A', @chart_start_date = '2018-09-26', @duration = '20';


/*•	list the total length of stay, between two given dates, of yachts in the fleet in each port. */
SELECT Charter.yacht_name, Visit.date_of_arrival, Visit.port_name, SUM(Visit.length_of_stay) AS total_length_of_stay
FROM Charter
JOIN Visit ON Charter.chart_id = Visit.chart_id
WHERE Visit.date_of_arrival >= '2018-06-17' AND Visit.date_of_arrival <= '2018-09-23'
GROUP BY Visit.port_name, Charter.yacht_name, Visit.date_of_arrival;


/*•	get a list of yachts (by name) visiting their home port between two given dates, together with the date of arrival and the length of the stay. */
SELECT Yacht.yacht_name, Visit.date_of_arrival, Visit.length_of_stay
FROM Yacht
JOIN Port ON Yacht.yacht_home_port = Port.port_name
JOIN Visit ON port.port_name = Visit.port_name
WHERE Visit.port_name = Yacht.yacht_home_port AND Visit.date_of_arrival >= '2018-06-17' AND Visit.date_of_arrival <= '2018-09-23' AND NOT length_of_stay = '0'
GROUP BY Yacht.yacht_name, yacht_home_port, Visit.date_of_arrival, Visit.length_of_stay


/*•	list the ports visited by a given customer together with the date of arrival and length of stay, ordered by date. */
SELECT date_of_arrival, port_name, cust_name, length_of_stay
FROM Customer
JOIN Charter ON Customer.cust_id = charter.cust_id
JOIN Visit ON Charter.chart_id = Visit.chart_id
WHERE Customer.cust_name = 'Cary Grant'
ORDER BY date_of_arrival


/*remove a yacht temporarily for a period of time (e.g., for servicing) and get a list of yachts that are not available, */
/* Trigger */

CREATE TABLE out_of_service (yacht_name varchar(25) not null,
yacht_type varchar(25),
yacht_model varchar(25),
yacht_home_port varchar(25) not null,
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

/* inserting a new yacht record */
INSERT INTO Yacht
VALUES ('XD', 'XD', 'XD','Genoa', 123, 123)

/* Deleting the new yacht record */
DELETE FROM Yacht 
WHERE Yacht_name = 'XD'

/*The deleted yacht will appear in the out of service table under the yachts_not_available column  */
SELECT yacht_name AS Yachts_not_available 
FROM out_of_service


SELECT * FROM Yacht

