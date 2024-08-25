/*Inserting data*/

use Yachts

/* Data to be instered in the Customer table*/
INSERT INTO Customer (cust_id, cust_name, cust_nationality, cust_email, cust_phone_no)
VALUES
  ('D13-R20', 'Jean Harlow', 'German', 'jeanh99@gmail.com', '005866419887654'),
  ('D17-022', 'Marilyn Monroe', 'French', 'marilyn@hotmail.com', '+88487618356732'),
  ('D13-101', 'Bette Davis', 'American', 'bette.davis@ulster.ac.uk', '41728003'),
  ('D13-203', 'Cary Grant', 'British', 'bigcary@yahoo.com', '+44417654321'),
  ('D13-42', 'Humphrey Bogart', 'American', 'bogieh@gmail.com', '07782751839'),
  ('D13-306', 'William Holden', 'Irish', 'billyho66@yahoo.com', '+38198322843'),
  ('D14-38', 'Katharine Hepburn', 'Irish', 'kath_hep29@hotmail.com', '00447880708090'),
  ('D13-R93', 'John Wayne', 'South African', 'john.wayne@ulster.ac.uk', '02890112233'),
  ('D13-51', 'Ingrid Bergman', 'Swedish', 'IngridB@hotmail.com', '02890123456');

  select * from Customer

  /* Data to be instered in the Port table */
INSERT INTO Port (port_name, port_phone_no, port_email, docking_places)
VALUES
  ('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160),
  ('Kusadasi', '+9045204295', 'Kusadasi_harbour@hotmail.co.tr', 96),
  ('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211),
  ('Marmaris', '+90(0)62228138', NULL, 69), 
  ('Perpignan', '+3373600125', NULL, 88),
  ('Paphos', '+35788301000', 'paphosmariana@cyprusports.cy', 47),
  ('Monaco', '0037788356302', 'mariana@monacoport.mc', 104),
  ('Dénia', '+90229453883', 'denia_port@denia_port.com', 31),
  ('St Tropez', NULL, 'master@sttropezmarina.fr', 239),
  ('Cartagena', '+34(0)62045005', NULL, 21),
  ('Palma', '+3494955320', NULL, 74),
  ('Marseiles', '+3330026016', 'marseiles_port@france_ports.fr', 92),
  ('Malaga', '+3430336117', 'harbour_master@malagaport.com', 198),
  ('Heraklion', NULL, 'herp@heraklioncity.co.gr', 85),
  ('Athens', '+3014936640', 'paays7@athensport.gr', 106),
  ('Valencia', '+3483884002', NULL, 74),
  ('Izmir', '009062602105', NULL, 93),
  ('Cagliari', '+3963660326', 'ettwu7@gmail.com', 40),
  ('Naples', '+3990583686', NULL, 132),
  ('Palermo', '+3922746104', 'ggaft4@visitpalermo.co.it', 57),
  ('Bodrum', '+9099264831', NULL, 40),
  ('Lisbon', '0035144700212', NULL, 79),
  ('Magaluf', NULL, 'maghar@maghar.com', 88),
  ('Cadiz', '+34(0)18128403', NULL, 90),
  ('Montpelier', '+33(0)51411947', NULL, 79),
  ('Cannes', '+3366295633', 'cannes.marina@yahoo.com', 148),
  ('Tangier', '+21245936724', 'tan778@tangierport.com', 63);

  SELECT * FROM Port

  /* Data to be instered in the Yacht table */
INSERT INTO Yacht (yacht_name, yacht_type, yacht_model, yacht_berths, yacht_home_port, cost)
VALUES
	('Serendipity', 'Monohull', 'Catalina 350', 9, 'Genoa', 2995.92),
	('Second Wind', 'Catamaran', 'MacGregor 26X', 8, 'Kusadasi', 1063.45),
	('Mad Hatter', 'Monohull', 'Jeanneau 42 DS', 4, 'Barcelona', 869.45),
	('Serenity', 'Powered', 'Ranger 28', 11, 'Genoa', 2294),
	('Windsong', 'Catamaran', 'MacGregor 26X', 7, 'Dénia', 1352.9),
	('Orion', 'Powered', 'Ranger 28', 9, 'Marmaris', 2309.56),
	('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 4, 'Barcelona', 892.4),
	('Escape', 'Monohull', 'Beneteau 373', 10, 'Kusadasi', 3016.34);

	SELECT * FROM Yacht

	/* Data to be instered in the Charter table  */
INSERT INTO Charter (chart_id, chart_start_date, duration, cust_id, yacht_name)
VALUES
	('CH-033', '2018/06/17', 7, 'D13-R20', 'Serendipity'),
	('CH-032', '2018/06/24', 36, 'D17-022', 'Second Wind'),
	('CH-027', '2018/06/25', 7, 'D13-101', 'Mad Hatter'),
	('CH-034', '2018/06/30', 18, 'D13-203', 'Serendipity'),
	('CH-036', '2018/07/02', 14, 'D13-42', 'Serenity'),
	('CH-028', '2018/07/05', 21, 'D13-42', 'Mad Hatter'),
	('CH-043', '2018/07/06', 10, 'D13-306', 'Windsong'),
	('CH-030', '2018/07/11', 14, 'D13-R20', 'Orion'),
	('CH-039', '2018/07/12', 7, 'D13-101', 'Wind Dancer'),
	('CH-035', '2018/07/22', 10, 'D13-R20', 'Serendipity'),
	('CH-037', '2018/07/23', 21, 'D14-38', 'Serenity'),
	('CH-044', '2018/07/29', 35, 'D13-306', 'Windsong'),
	('CH-031', '2018/07/30', 10, 'D13-101', 'Orion'),
	('CH-029', '2018/08/05', 14, 'D13-R93', 'Mad Hatter'),
	('CH-040', '2018/08/10', 10, 'D17-022', 'Wind Dancer'),
	('CH-038', '2018/08/18', 7, 'D13-203', 'Serenity'),
	('CH-041', '2018/08/23', 7, 'D13-51', 'Wind Dancer'),
	('CH-026', '2018/08/25', 14, 'D13-51', 'Escape'),
	('CH-042', '2018/09/06', 15, 'D14-38', 'Wind Dancer'),
	('CH-045', '2018/09/06', 21, 'D13-203', 'Windsong');

	  SELECT * FROM Charter

	/* Data to be instered in the Vsisted table  */
INSERT INTO Visit (visit_id, port_name, chart_id, date_of_arrival, length_of_stay)
VALUES
	('V101', 'Genoa', 'CH-033', '2018/06/17', 0),
	('V102', 'Kusadasi', 'CH-032', '2018/06/24', 0),
	('V103', 'Barcelona', 'CH-027', '2018/06/25', 0),
	('V104', 'Marmaris', 'CH-032', '2018/06/27', 1),
	('V105', 'Perpignan', 'CH-027', '2018/06/29', 1),
	('V106', 'Genoa', 'CH-034', '2018/06/30', 1),
	('V107', 'Genoa', 'CH-036', '2018/07/02', 1),
	('V108', 'Paphos', 'CH-032', '2018/07/04', 3),
	('V109', 'Monaco', 'CH-034', '2018/07/04', 2),
	('V110', 'Barcelona', 'CH-028', '2018/07/05', 1),
	('V111', 'Dénia', 'CH-043', '2018/07/06', 0),
	('V112', 'St Tropez', 'CH-036', '2018/07/07', 2),
	('V113', 'Cartagena', 'CH-043', '2018/07/08', 1),
	('V114', 'Palma', 'CH-028', '2018/07/09', 3),
	('V115', 'Marseiles', 'CH-034', '2018/07/10', 1),
	('V116', 'Marmaris', 'CH-030', '2018/07/11', 0),
	('V117', 'Malaga', 'CH-043', '2018/07/11', 3),
	('V118', 'Barcelona', 'CH-039', '2018/07/12', 1),
	('V119', 'Heraklion', 'CH-032', '2018/07/13', 1),
	('V120', 'Monaco', 'CH-036', '2018/07/13', 1),
	('V121', 'St Tropez', 'CH-034', '2018/07/15', 1),
	('V122', 'Cartagena', 'CH-028', '2018/07/16', 1),
	('V123', 'Paphos', 'CH-030', '2018/07/16', 2),
	('V124', 'Athens', 'CH-032', '2018/07/19', 3),
	('V125', 'Heraklion', 'CH-030', '2018/07/21', 1),
	('V126', 'Valencia', 'CH-028', '2018/07/22', 2),
	('V127', 'Genoa', 'CH-035', '2018/07/22', 1),
	('V128', 'Izmir', 'CH-032', '2018/07/23', 1),
	('V129', 'Genoa', 'CH-037', '2018/07/23', 0),
	('V130', 'Cagliari', 'CH-035', '2018/07/26', 1),
	('V131', 'Naples', 'CH-037', '2018/07/26', 1),
	('V132', 'Dénia', 'CH-044', '2018/07/29', 0),
	('V133', 'Marmaris', 'CH-031', '2018/07/30', 0),
	('V134', 'Naples', 'CH-035', '2018/07/30', 1),
	('V135', 'Palermo', 'CH-037', '2018/07/31', 1),
	('V136', 'Malaga', 'CH-044', '2018/08/02', 1),
	('V137', 'Heraklion', 'CH-031', '2018/08/03', 1),
	('V138', 'Barcelona', 'CH-029', '2018/08/05', 0),
	('V139', 'Cagliari', 'CH-037', '2018/08/05', 2),
	('V140', 'Bodrum', 'CH-031', '2018/08/06', 2),
	('V141', 'Lisbon', 'CH-044', '2018/08/07', 4),
	('V142', 'Cartagena', 'CH-029', '2018/08/10', 1),
	('V143', 'Naples', 'CH-037', '2018/08/10', 1),
	('V144', 'Barcelona', 'CH-040', '2018/08/10', 0),
	('V145', 'St Tropez', 'CH-040', '2018/08/13', 1),
	('V146', 'Magaluf', 'CH-029', '2018/08/15', 1),
	('V147', 'Cadiz', 'CH-044', '2018/08/15', 1),
	('V148', 'Montpelier', 'CH-040', '2018/08/17', 1),
	('V149', 'Genoa', 'CH-038', '2018/08/18', 0),
	('V150', 'Cannes', 'CH-038', '2018/08/22', 1),
	('V151', 'Tangier', 'CH-044', '2018/08/22', 2),
	('V152', 'Barcelona', 'CH-041', '2018/08/23', 0),
	('V153', 'Kusadasi', 'CH-026', '2018/08/25', 0),
	('V154', 'Montpelier', 'CH-041', '2018/08/27', 1),
	('V155', 'Palma', 'CH-044', '2018/08/27', 1),
	('V156', 'Athens', 'CH-026', '2018/08/29', 2),
	('V157', 'Izmir', 'CH-026', '2018/09/05', 1),
	('V158', 'Barcelona', 'CH-042', '2018/09/06', 0),
	('V159', 'Dénia', 'CH-045', '2018/09/06', 1),
	('V160', 'Magaluf', 'CH-042', '2018/09/08', 1),
	('V161', 'Cartagena', 'CH-042', '2018/09/10', 2),
	('V162', 'Barcelona', 'CH-045', '2018/09/12', 2),
	('V163', 'Dénia', 'CH-042', '2018/09/15', 1),
	('V164', 'Montpelier', 'CH-045', '2018/09/17', 2),
	('V165', 'Magaluf', 'CH-042', '2018/09/18', 1),
	('V166', 'Magaluf', 'CH-045', '2018/09/23', 1);

	Select * from Visit

  Select * from Port
  select * from Customer
  Select * from Yacht
  select * from Charter
  select * from visit



