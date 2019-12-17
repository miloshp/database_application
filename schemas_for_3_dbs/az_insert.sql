DELETE FROM person; 
DELETE FROM course;
DELETE FROM section; 
DELETE FROM skill; 
DELETE FROM position; 
DELETE FROM job; 
DELETE FROM store; 
DELETE FROM inventory; 
DELETE FROM purchase; 
DELETE FROM supplier; 
DELETE FROM account_payable; 
DELETE FROM works; 
DELETE FROM teaches; 
DELETE FROM requires; 
DELETE FROM req_by_job; 
DELETE FROM prereq; 
DELETE FROM line_item; 
DELETE FROM sales; 
DELETE FROM payment_record; 
DELETE FROM takes; 
DELETE FROM has_skill; 


INSERT INTO person VALUES ('101', 'John','Myers', '70193', 'jmyers@live.com', 'male', '5049856412');
INSERT INTO person VALUES ('102', 'Hellen','Wiena', '71255', 'hewllen@hotmail.com', 'female', '9847291243');
INSERT INTO person VALUES ('103', 'Josh','Black', '23512', 'blackthejosh@gmail.com', 'male', '5047376243');
INSERT INTO person VALUES ('104', 'Sierra ','Willson', '71193', 'sirra@live.com', 'female', '504561923');
INSERT INTO person VALUES ('105', 'Matt','Dom', '70163', 'matt@gmail.com', 'male', '5049825617');
INSERT INTO person VALUES ('106', 'Frak','Johnson', '70293', 'frenkjohn@gmail.com', 'male', '504724343');
INSERT INTO person VALUES ('107', 'Mia ','Myers', '70223', 'miamyers@live.com', 'female', '21272111');
INSERT INTO person VALUES ('108', 'Mark','Tomson', '71143', 'tomson1982@live.com', 'male', '2127293343');
INSERT INTO person VALUES ('109', 'Flash','Begin', '72333', 'begin2301@hotmil.com', 'male', '9857291243');
INSERT INTO person VALUES ('110', 'Dwain','North', '70263', 'northdw@lcs.com', 'male', '504749232');
INSERT INTO person VALUES ('111', 'Dean','Malkowich', '75793', ' malkowitch@bren.com', 'male', '504729143');
INSERT INTO person VALUES ('112', 'Sara','Paulosn', '70393', 'sppaulson@hotmail.com', 'female', '2124732111');
INSERT INTO person VALUES ('113', 'Peter','Merch', '72993', 'petermer@live.com', 'male', '5047291243');
INSERT INTO person VALUES ('114', 'John ','Johnson', '71093', 'jj5619@live.com', 'male', '237729654');
INSERT INTO person VALUES ('115', 'Frank','Abrev', '82935', 'frankab33@gmail.com', 'male', '5047291243');
INSERT INTO person VALUES ('116', 'Joan','Sett', '14193', 'settjaaaon@live.com', 'male', '9857291765');
INSERT INTO person VALUES ('117', 'Mike','Willson', '23193', 'wilosnm@gmail.com', 'male', '5047259478');
INSERT INTO person VALUES ('118', 'Seth','Logan', '32193', 'loganseth@hotmail.com', 'male', '322726565');
INSERT INTO person VALUES ('119', 'Robert','Portales', '40593', 'robbport@ggd.com', 'male', '50472974892');

INSERT INTO course VALUES ('23654', 'Store management', '2000', ' Store organization, management and storage format that enables efficient access and modification', 'active', '320');
INSERT INTO course VALUES ('28595', 'Product management ', '2000', ' Managing Product', 'active', '320');
INSERT INTO course VALUES ('26695', 'Sales', '3000', ' Selling products', 'active', '430');
INSERT INTO course VALUES ('21313', 'ecomerce', '4000', ' intro to EComerce ', 'active', '320');
INSERT INTO course VALUES ('24478', 'Tax management', '2000', 'understanding taxes', 'expired', '450');
INSERT INTO course VALUES ('26987', 'Marketing', '4000', 'intro to Marketting', 'active', '200');
INSERT INTO course VALUES ('22658', 'Accounting', '4000', ' Advanced level in Accouting', 'expired', '600');
INSERT INTO course VALUES ('22489', 'Money management', '5000', ' managing money ', 'active', '430');
INSERT INTO course VALUES ('28987', 'customer service', '1000', 'dealing with customers ', 'expired', '400');
INSERT INTO course VALUES ('26989', 'Business Management.', '5000', 'Learning the ins and outs of the business', 'active', '550');
INSERT INTO course VALUES ('22698', 'Finance', '6000', 'Learning Finance', 'active', '720');
INSERT INTO course VALUES ('27985', 'HUman Resource Management', '2000', 'HR expertise', 'expired', '500');
INSERT INTO course VALUES ('29354', 'International Business', '2000', 'dealing with busines abroad ', 'expired', '550');
INSERT INTO course VALUES ('21965', 'Enterpenureship', '2000', ' Steps towards successful business', 'active', '300');
INSERT INTO course VALUES ('27938', 'Communication', '3000','communicating with partners', 'active', '750');
INSERT INTO course VALUES ('26482', 'Association', '1000', ' Intro to Association', 'active', '450');

INSERT INTO section VALUES ('1021','23654', TO_DATE('2010-05-12', 'YYYY-MM-DD'), '2010', 'UNO', 'classrom', '320');
INSERT INTO section VALUES ('4026','28595', TO_DATE('2018-10-23', 'YYYY-MM-DD'), '2018','UNO', 'online-sync', '320');
INSERT INTO section VALUES ('1006','21313',  TO_DATE('2019-04-03', 'YYYY-MM-DD'), '2019', 'LSU', 'classrom', '450');
INSERT INTO section VALUES ('4024','24478',  TO_DATE('2011-02-01', 'YYYY-MM-DD'), '2011', 'UNO', 'online-sync', '430');
INSERT INTO section VALUES ('5001', '26987', TO_DATE('2013-03-04', 'YYYY-MM-DD'), '2013', 'ULS', 'online-selfpaced', '450');
INSERT INTO section VALUES ('5006', '22658', TO_DATE('2019-11-09', 'YYYY-MM-DD'), '2019', 'LSU', 'correspondence', '300');
INSERT INTO section VALUES ('5002','22489', TO_DATE('2007-11-11', 'YYYY-MM-DD'), '2007', 'UNO', 'online-sync', '1200');
INSERT INTO section VALUES ('5003', '28987', TO_DATE('2009-04-22', 'YYYY-MM-DD'), '2009', 'UNO', 'classrom', '600');
INSERT INTO section VALUES ('1042', '26989', TO_DATE('2012-02-22', 'YYYY-MM-DD'), '2012', 'UNO', 'online-selfpaced', '420');
INSERT INTO section VALUES ('1073', '22698', TO_DATE('2014-01-25', 'YYYY-MM-DD'), '2014', 'UNO', 'classrom', '820');
INSERT INTO section VALUES ('1061', '29354',  TO_DATE('2015-01-05', 'YYYY-MM-DD'), '2015', 'UNO', 'classrom', '750');
INSERT INTO section VALUES ('1043', '27938',  TO_DATE('2018-08-03', 'YYYY-MM-DD'), '2018', 'UNO', 'correspondence', '540');
INSERT INTO section VALUES ('1022','26482', TO_DATE('2017-07-10', 'YYYY-MM-DD'), '2017', 'UNO', 'online-selfpaced', '200');

INSERT INTO skill VALUES ('1002', 'Vehicle Mechanic', 'Repairing vehicles', 'medium');
INSERT INTO skill VALUES ('1003', 'Fleet Mechanic ', 'pervious experience with repairing trailer ', 'advanced');
INSERT INTO skill VALUES ('1004', 'Trailer Mechanic', 'pervious experience with repairing trailer ', 'beginner');
INSERT INTO skill VALUES ('1005', 'Forklift', 'able to use a Forklift and do heavy duty', 'advanced');
INSERT INTO skill VALUES ('1006', 'Aerospace', 'no needed pervious experience', 'beginner');
INSERT INTO skill VALUES ('1008', 'Service Writer', 'direct problems to appropriate department', 'advanced');
INSERT INTO skill VALUES ('1009', 'Management', 'analyzing data and manage people', 'beginner');
INSERT INTO skill VALUES ('1010', 'Microsoft Powerpoint', 'powerpoint knowledge and experience', 'advanced');
INSERT INTO skill VALUES ('1011', 'Enterprise Resource Planning (ERP)', 'ERP', 'medium');
INSERT INTO skill VALUES ('1012', 'Enterprise Planning', 'ERP', 'medium');
INSERT INTO skill VALUES ('1013', 'Customer Service', 'able to deal with customers', 'medium');
INSERT INTO skill VALUES ('1014', 'Floor Management', 'skilled in handling staff members ', 'advanced');
INSERT INTO skill VALUES ('1015', 'Commercial Van Technician', 'on site installations', 'medium');
INSERT INTO skill VALUES ('1016', 'Repair', 'able to repair vehicles', 'advanced');
INSERT INTO skill VALUES ('1017', 'System Administration', 'good knowldge of of the system and work environment', 'advanced');
INSERT INTO skill VALUES ('1018', 'Automotive Service Advisor', 'Be able to recognize problem and advise on it', 'beginner');
INSERT INTO skill VALUES ('1019', 'Business Administration', 'paperwork', 'medium');
INSERT INTO skill VALUES ('1020', 'management', 'keeping track for inventory', 'advanced');
INSERT INTO skill VALUES ('1021', 'accountant', 'able to handle money ', 'beginner');
INSERT INTO skill VALUES ('1024', 'Application Support', 'support in app development', 'advanced');
INSERT INTO skill VALUES ('1025', 'Peoples Persion', 'somewhat experience in UI design', 'beginner');
INSERT INTO skill VALUES ('1026', 'Negotiation Skills', 'good negotiation skills', 'advanced');
INSERT INTO skill VALUES ('1027', 'Problem Solvings', 'experience in data mining/targeting', 'medium');
INSERT INTO skill VALUES ('1028', 'Technical Training', 'good communnication skills', 'beginner');

INSERT INTO position VALUES ('9285610', 'Service Technician Automotive', 'Seeking an experienced full-time PC Technician that will perform PC ', '300', '50');
INSERT INTO position VALUES ('9285611', 'Heavy Construction Equipment Mechanics', 'looking for someone who can operate construction equipment ', '200', '50');
INSERT INTO position VALUES ('9285612', 'HVAC Service Technician ', 'Looking for service technician in HAC', '400', '30');
INSERT INTO position VALUES ('9285613', 'Auto Technician', 'Auto technician that can work on autos', '200', '20');
INSERT INTO position VALUES ('9285614', 'Accountant', 'and accoutant that handles the money flow', '100', '24');
INSERT INTO position VALUES ('9285615', 'Financial Analysis', 'Someone that can go throw finance and solve the problems.', '320', '100');
INSERT INTO position VALUES ('9285616', 'Technical Consultant', 'we are looking for a Technical Consultant to join our Tech Ops team', '250', '70');
INSERT INTO position VALUES ('9285617', 'Marketing', 'markets the product  ', '220', '43');
INSERT INTO position VALUES ('9285618', 'Service Technician ', 'We’re a New Orleans based Ed-Tech startup seeking talented software engineers to join our team ', '400', '30');
INSERT INTO position VALUES ('9285619', 'Mechanic', 'good with cars.', '200', '20');
INSERT INTO position VALUES ('9285620', 'warehouse department', 'delas with the delivires', '100', '24');
INSERT INTO position VALUES ('9285621', 'Human Resources', 'deals with coworkers dispute and all', '320', '100');
INSERT INTO position VALUES ('9285622', 'CIO', 'solves coworkers schedules', '250', '70');

INSERT INTO store VALUES ('1000500', '8987 Launder St.', '70065', '5065874877');
INSERT INTO store VALUES ('1000501', '9874 Akel Blvd', '70022', '5687897568');
INSERT INTO store VALUES ('1000502', '9987 Shiek Rd', '69965', '4056987514');
INSERT INTO store VALUES ('1000503', '5654 Williams Blvd', '69987', '5048098753');
INSERT INTO store VALUES ('1000504', '9758 Level Blvd', '78878', '50498745264');
INSERT INTO store VALUES ('1000505', '7412 Pop Ct ', '74125', '5064785215');
INSERT INTO store VALUES ('1000506', '4454 Lemon Ln', '12345', '5698752158');
INSERT INTO store VALUES ('1000507', '4458 Lime St.', '21354', '6054785245');
INSERT INTO store VALUES ('1000508', '5556 Apple Ave. ', '69663', '50450698874');
INSERT INTO store VALUES ('1000509', '1125 Waller Way', '37895', '5069877445');
INSERT INTO store VALUES ('1000510', '6658 Veterans Pkwy', '69352', '5045099774');
INSERT INTO store VALUES ('1000511', '6696 Andre St.', '75395', '5066987442');
INSERT INTO store VALUES ('1000512', '8858 Common Blvd', '19564', '506338445');
INSERT INTO store VALUES ('1000513', '1124 Wall St.', '82456', '5809986654');
INSERT INTO store VALUES ('1000514', '2252 Park Ln', '39874', '5066978774');
INSERT INTO store VALUES ('1000515', '3565 Clearview Pkwy', '55698', '509877455');
INSERT INTO store VALUES ('1000516', '8858 Teuton St.', '19564', '506338445');
INSERT INTO store VALUES ('1000517', '1124 Oaklawn Ave.', '82456', '5809986654');
INSERT INTO store VALUES ('1000518', '2252 Park Ln', '39874', '5066978774');
INSERT INTO store VALUES ('1000519', '3565 Cleary Blvd', '55698', '509877455');


INSERT INTO job VALUES ('189410', 'full-time', '20', 'wage', '1000500','9285610','101');
INSERT INTO job VALUES ('189419', 'full-time', '20', 'wage', '1000501','9285611','103');
INSERT INTO job VALUES ('189422', 'full-time', '20', 'wage', '1000502','9285612','104');
INSERT INTO job VALUES ('189411', 'full-time', '43000', 'salary', '1000503','9285613','105');
INSERT INTO job VALUES ('189412', 'part-time', '25', 'wage', '1000504','9285614','106');
INSERT INTO job VALUES ('189413', 'full-time', '30', 'wage', '1000505','9285615','107');
INSERT INTO job VALUES ('189414', 'part-time', '22', 'wage', '1000506','9285616','108');
INSERT INTO job VALUES ('189415', 'full-time', '80000', 'salary', '1000507','9285617','109');
INSERT INTO job VALUES ('189416', 'part-time', '25', 'wage','1000508','9285618','110');
INSERT INTO job VALUES ('189417', 'part-time', '15', 'wage', '1000509','9285619','111');
INSERT INTO job VALUES ('189418', 'full-time', '65000', 'salary', '1000510','9285620','112');
INSERT INTO job VALUES ('189420', 'full-time', '53000', 'salary', '1000503','9285621','113');
INSERT INTO job VALUES ('189425', 'full-time', '87000', 'salary', '1000511','9285622','114');
INSERT INTO job VALUES ('189423', 'full-time', '11000', 'salary', '1000512','9285611','116');
INSERT INTO job VALUES ('189421', 'full-time', '54200', 'salary', '1000513','9285613','117');


INSERT INTO inventory VALUES ('940', 'Motor Oil', 'lubrication for internal combustion engines', '50', '01', '65', TO_DATE('2010-10-12', 'YYYY-MM-DD'), '30', '1465821');
INSERT INTO inventory VALUES ('941', 'Oil Filter', 'removes contaminants from oil', '60', '02', '13', TO_DATE('2010-01-28', 'YYYY-MM-DD'), '24', '1469621');
INSERT INTO inventory VALUES ('942', 'Gauge cleaner', 'removes contaminants from gauge', '40', '03', '2', TO_DATE('2008-10-20', 'YYYY-MM-DD'), '11', '1466821');
INSERT INTO inventory VALUES ('943', 'Air Filter', 'prevents harmful debris, dirt and contaminants from entering engine', '45', '04', '58', TO_DATE('2009-08-30', 'YYYY-MM-DD'), '30', '1465658');
INSERT INTO inventory VALUES ('944', 'Spark Plug', 'device for delivering electric current from ignition system to combustion chamber', '55', '05', '61', TO_DATE('2008-06-06', 'YYYY-MM-DD'), '100', '1465854');
INSERT INTO inventory VALUES ('945', 'Speaker', 'audio device', '58', '06', '226', TO_DATE('2010-06-06', 'YYYY-MM-DD'), '120', '1465874');
INSERT INTO inventory VALUES ('946', 'Tire', 'rubber covering surrounding inflated inner tube around wheel', '60', '07', '105', TO_DATE('2000-04-29', 'YYYY-MM-DD'), '34', '1465886');
INSERT INTO inventory VALUES ('947', 'Battery', 'rechargeable battery that supplies electrical current to vehicle', '66', '08', '60', TO_DATE('2005-05-01', 'YYYY-MM-DD'), '11', '1464265');
INSERT INTO inventory VALUES ('948', 'Windshield Wipers', 'device for keeping a windshield clear of rain', '70', '10', '56', TO_DATE('2001-08-07', 'YYYY-MM-DD'), '17', '14645522');
INSERT INTO inventory VALUES ('949', 'Windshield Fluid', 'fluid for motor vehicles used to clean the windshield with the windshield wipers', '97', '10', '73', TO_DATE('2012-12-12', 'YYYY-MM-DD'), '22', '26548974');
INSERT INTO inventory VALUES ('950', 'Brakes', 'device for slowing or stopping a moving vehicle', '55', '11', '56', TO_DATE('2013-02-28', 'YYYY-MM-DD'), '60', '1465553');
INSERT INTO inventory VALUES ('951', 'Brake Fluid', 'fluid used in a hydraulic brake system', '19', '12', '49', TO_DATE('2000-01-01', 'YYYY-MM-DD'), '7', '14663581');
INSERT INTO inventory VALUES ('952', 'Brake Cleaner', 'removes oil, grease, brake fluid, brake pad material and/or dirt from motor vehicle brake mechanism', '6', '13', '59', TO_DATE('2004-12-31', 'YYYY-MM-DD'), '10', '1469684');
INSERT INTO inventory VALUES ('954', 'Detailing Spray', 'elevates shine while wiping away dirt, dust, and smudges', '10', '15', '65', TO_DATE('2009-05-12', 'YYYY-MM-DD'), '35', '1465821');
INSERT INTO inventory VALUES ('953', 'Headlight Spray', 'oxodizes cloudy headlights', '0', '14', '56', TO_DATE('2010-12-29', 'YYYY-MM-DD'), '10', '1465664');
INSERT INTO inventory VALUES ('955', 'Fuel Injector', 'prolongs the life of the fuel injection system and engine', '13', '16', '60', TO_DATE('2007-10-12', 'YYYY-MM-DD'), '10', '14689785');
INSERT INTO inventory VALUES ('957', 'Air Pump', 'device for pumping air into tires', '17', '17', '38', TO_DATE('2006-12-12', 'YYYY-MM-DD'), '15', '1468541');
INSERT INTO inventory VALUES ('956', 'Engine Flush', 'chemical additive that cleans accumulated deposits, sludge, and other gunk from engine', '16', '18', '16', TO_DATE('2003-06-13', 'YYYY-MM-DD'), '15', '6365821');
INSERT INTO inventory VALUES ('958', 'Rotor', 'component in the braking system that stops the vehicle', '19', '19', '26', TO_DATE('2018-01-12', 'YYYY-MM-DD'), '20', '1454221');


INSERT INTO supplier VALUES ('41421', 'www.lola.com','lola@hotmail.com');
INSERT INTO supplier VALUES ('41422', 'www.getparts.com','gparts@live.com');
INSERT INTO supplier VALUES ('41423', 'www.motor.org','motor@gmail.com');
INSERT INTO supplier VALUES ('41424', 'www.vehincle.com','contactus@vehincle.com');
INSERT INTO supplier VALUES ('41425', 'www.daveautos.com','daveM@davesauto.com');
INSERT INTO supplier VALUES ('41426', 'www.familyauto.com','familyauto@familyauto.com');
INSERT INTO supplier VALUES ('41427', 'www.customauto.com','customercare@customauto.com');
INSERT INTO supplier VALUES ('41428', 'www.autorepair.com','support@autorepair.com');
INSERT INTO supplier VALUES ('41429', 'www.differentparts.com','diffparts@differentparts.com');
INSERT INTO supplier VALUES ('41430', 'www.getafixed.net','gaf@getafixed.com');
INSERT INTO supplier VALUES ('41431', 'www.getallparts.com','gap@getallparts.com');
INSERT INTO supplier VALUES ('41432', 'www.wefixit.com','getfixed@wefixit.com');
INSERT INTO supplier VALUES ('41433', 'www.vehicleparts.com','ceo@vehicleparts.com');
INSERT INTO supplier VALUES ('41434', 'www.motorparts.com','customersupport@motorparts.com');
INSERT INTO supplier VALUES ('41435', 'www.onepart.com','contactus@onepart.com');
INSERT INTO supplier VALUES ('41436', 'www.usedtires.com','usedtires@hotmail.com');
INSERT INTO supplier VALUES ('41437', 'www.allsizetires.com','allst@hotmail.com');
INSERT INTO supplier VALUES ('41438', 'www.changeoil.com','contact@changeoil.com');
INSERT INTO supplier VALUES ('41439', 'www.brake.com','support@brake.com');
INSERT INTO supplier VALUES ('41440', 'www.partprovider.com','pat@partprovider.com');
INSERT INTO supplier VALUES ('41441', 'www.stanleycorp.com','stanley@stanleycorp.com');

INSERT INTO line_item VALUES ( '101125','940','10', '60');
INSERT INTO line_item VALUES ( '101126','941','23', '10');
INSERT INTO line_item VALUES ( '101127','942','21', '3');
INSERT INTO line_item VALUES ( '101128','943','33', '19');
INSERT INTO line_item VALUES ( '101129','944','50', '55');
INSERT INTO line_item VALUES ( '101130','945','76', '220');
INSERT INTO line_item VALUES ( '101131','946','14', '100');
INSERT INTO line_item VALUES ( '101132','947','23', '50');
INSERT INTO line_item VALUES ( '101133','948','12', '8');
INSERT INTO line_item VALUES ( '101134','949','35', '70');
INSERT INTO line_item VALUES ( '101135','950','45', '45');
INSERT INTO line_item VALUES ( '101136','951','35', '70');
INSERT INTO line_item VALUES ( '101137','952','3', '50');
INSERT INTO line_item VALUES ( '101138','953','8', '50');
INSERT INTO line_item VALUES ( '101139','954','8', '50');
INSERT INTO line_item VALUES ( '101140','955','12', '32');
INSERT INTO line_item VALUES ( '101142','956','52', '24');
INSERT INTO line_item VALUES ( '101141','957','1', '15');

INSERT INTO account_payable VALUES ('1310', '0','41421', '101126');
INSERT INTO account_payable VALUES ('1311', '0','41422', '101136');
INSERT INTO account_payable VALUES ('1312', '384','41423', '101140');
INSERT INTO account_payable VALUES ('1313', '2025','41424', '101135');
INSERT INTO account_payable VALUES ('1314', '0','41425', '101125');
INSERT INTO account_payable VALUES ('1315', '0','41426', '101138');
INSERT INTO account_payable VALUES ('1316', '0','41427', '101128');
INSERT INTO account_payable VALUES ('1317', '0','41429', '101129');
INSERT INTO account_payable VALUES ('1318', '0','41430', '101142');
INSERT INTO account_payable VALUES ('1319', '0','41431', '101130');
INSERT INTO account_payable VALUES ('1320', '180','41432', '101137');
INSERT INTO account_payable VALUES ('1321', '0','41433', '101131');
INSERT INTO account_payable VALUES ('1322', '0','41435', '101132');
INSERT INTO account_payable VALUES ('1323', '0','41437', '101133');
INSERT INTO account_payable VALUES ('1324', '0','41438', '101141');
INSERT INTO account_payable VALUES ('1325', '0','41439', '101134');
INSERT INTO account_payable VALUES ('1326', '400','41440', '101139');


INSERT INTO teaches VALUES ('23654', '1002');
INSERT INTO teaches VALUES ('21313', '1006');
INSERT INTO teaches VALUES ('26987', '1008');
INSERT INTO teaches VALUES ('22489', '1012');
INSERT INTO teaches VALUES ('26989', '1020');
INSERT INTO teaches VALUES ('29354', '1021');
INSERT INTO teaches VALUES ('26482', '1028');
INSERT INTO teaches VALUES ('27938', '1024');
INSERT INTO teaches VALUES ('28595', '1015');
INSERT INTO teaches VALUES ('22698', '1019');

INSERT INTO requires VALUES ('9285610', '1002');
INSERT INTO requires VALUES ('9285617', '1006');
INSERT INTO requires VALUES ('9285616', '1008');
INSERT INTO requires VALUES ('9285615', '1012');
INSERT INTO requires VALUES ('9285611', '1020');
INSERT INTO requires VALUES ('9285612', '1021');
INSERT INTO requires VALUES ('9285613', '1028');
INSERT INTO requires VALUES ('9285614', '1024');
INSERT INTO requires VALUES ('9285612', '1015');
INSERT INTO requires VALUES ('9285611', '1019');
INSERT INTO requires VALUES ('9285613', '1017');
INSERT INTO requires VALUES ('9285617', '1016');

INSERT INTO req_by_job VALUES ('189410', '1002');
INSERT INTO req_by_job VALUES ('189411', '1003');
INSERT INTO req_by_job VALUES ('189412', '1005');
INSERT INTO req_by_job VALUES ('189413', '1006');
INSERT INTO req_by_job VALUES ('189414', '1009');
INSERT INTO req_by_job VALUES ('189415', '1010');
INSERT INTO req_by_job VALUES ('189416', '1013');
INSERT INTO req_by_job VALUES ('189417', '1014');
INSERT INTO req_by_job VALUES ('189418', '1017');

INSERT INTO prereq VALUES ('23654');
INSERT INTO prereq VALUES ('21313');
INSERT INTO prereq VALUES ('26987');
INSERT INTO prereq VALUES ('22658');
INSERT INTO prereq VALUES ('22489');
INSERT INTO prereq VALUES ('26989');
INSERT INTO prereq VALUES ('27985');
INSERT INTO prereq VALUES ('21965');
INSERT INTO prereq VALUES ('27938');
INSERT INTO prereq VALUES ('26482');



INSERT INTO sales VALUES ('1000512', '951','49',  TO_DATE('2018-05-09', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000507', '946','105', TO_DATE('2018-01-27', 'YYYY-MM-DD'), '5');
INSERT INTO sales VALUES ('1000509', '948','56',  TO_DATE('2018-02-07', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000518', '957','38', TO_DATE('2018-12-13', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000513', '952','59', TO_DATE('2018-10-31', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000508', '947','60',TO_DATE('2018-01-09', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000517', '956', '16', TO_DATE('2018-09-17', 'YYYY-MM-DD'), '3');
INSERT INTO sales VALUES ('1000505', '944', '61',  TO_DATE('2018-06-16', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000516', '955', '60',  TO_DATE('2018-07-03', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000503', '942', '2',  TO_DATE('2017-12-31', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000514', '953', '56', TO_DATE('2018-01-19', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000501', '940', '65',  TO_DATE('2018-04-12', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000502', '941', '13', TO_DATE('2018-04-29', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000504', '943', '58',  TO_DATE('2018-06-08', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000506', '945', '226',  TO_DATE('2018-06-24', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000515', '954', '65', TO_DATE('2018-02-24', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000510', '949', '73', TO_DATE('2018-12-31', 'YYYY-MM-DD'), '1');
INSERT INTO sales VALUES ('1000511', '950', '56',  TO_DATE('2018-03-14', 'YYYY-MM-DD'), '2');
INSERT INTO sales VALUES ('1000519', '958', '26',  TO_DATE('2018-02-08', 'YYYY-MM-DD'), '1');


INSERT INTO payment_record VALUES ('101125', '1314', TO_DATE('2008-12-01', 'YYYY-MM-DD'), '600', 'credit');
INSERT INTO payment_record VALUES ('101126', '1310', TO_DATE('2010-01-10', 'YYYY-MM-DD'), '230', 'debit');
INSERT INTO payment_record VALUES ('101127', '1323', TO_DATE('2005-12-07', 'YYYY-MM-DD'), '63', 'debit');
INSERT INTO payment_record VALUES ('101128', '1316', TO_DATE('2002-08-14', 'YYYY-MM-DD'), '627', 'credit');
INSERT INTO payment_record VALUES ('101129', '1317', TO_DATE('2006-06-05', 'YYYY-MM-DD'), '2750', 'credit');
INSERT INTO payment_record VALUES ('101130', '1319', TO_DATE('2011-04-21', 'YYYY-MM-DD'), '16720', 'credit');
INSERT INTO payment_record VALUES ('101131', '1321', TO_DATE('2016-03-01', 'YYYY-MM-DD'), '1400', 'credit');
INSERT INTO payment_record VALUES ('101132', '1322', TO_DATE('2019-06-09', 'YYYY-MM-DD'), '1150', 'credit');
INSERT INTO payment_record VALUES ('101133', '1323', TO_DATE('2019-12-02', 'YYYY-MM-DD'), '96', 'debit');
INSERT INTO payment_record VALUES ('101134', '1325', TO_DATE('2017-07-29', 'YYYY-MM-DD'), '2450', 'credit');
INSERT INTO payment_record VALUES ('101136', '1311', TO_DATE('2012-09-11', 'YYYY-MM-DD'), '150', 'debit');
INSERT INTO payment_record VALUES ('101138', '1315', TO_DATE('2010-12-25', 'YYYY-MM-DD'), '400', 'debit');
INSERT INTO payment_record VALUES ('101141', '1324', TO_DATE('2003-01-17', 'YYYY-MM-DD'), '15', 'debit');
INSERT INTO payment_record VALUES ('101142', '1318', TO_DATE('2009-02-13', 'YYYY-MM-DD'), '1248', 'credit');


INSERT INTO takes VALUES ('101', '1021', '23654', TO_DATE('2010-10-12', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('112', '1006', '21313', TO_DATE('2012-01-10', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('114', '4024', '24478', TO_DATE('2014-02-10', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('116', '5001', '26987', TO_DATE('2011-11-11', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('117', '5002', '22489', TO_DATE('2010-02-01', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('118', '1042', '26989', TO_DATE('2011-04-01', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('102', '1073', '22698', TO_DATE('2016-04-04', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('104', '1061', '29354', TO_DATE('2017-07-02', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('107', '5003', '28987', TO_DATE('2019-07-03', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('106', '1043', '27938', TO_DATE('2013-11-03', 'YYYY-MM-DD'));
INSERT INTO takes VALUES ('111', '1022', '26482', TO_DATE('2012-12-11', 'YYYY-MM-DD'));


INSERT INTO has_skill VALUES ('1002', '101');
INSERT INTO has_skill VALUES ('1003', '102');
INSERT INTO has_skill VALUES ('1004', '103');
INSERT INTO has_skill VALUES ('1005', '104');
INSERT INTO has_skill VALUES ('1006', '105');
INSERT INTO has_skill VALUES ('1008', '107');
INSERT INTO has_skill VALUES ('1009', '108');
INSERT INTO has_skill VALUES ('1010', '109');
INSERT INTO has_skill VALUES ('1011', '110');
INSERT INTO has_skill VALUES ('1012', '111');
INSERT INTO has_skill VALUES ('1013', '112');
INSERT INTO has_skill VALUES ('1014', '113');
INSERT INTO has_skill VALUES ('1016', '115');
INSERT INTO has_skill VALUES ('1017', '116');
INSERT INTO has_skill VALUES ('1025', '117');
INSERT INTO has_skill VALUES ('1018', '118');
INSERT INTO has_skill VALUES ('1019', '119');
INSERT INTO has_skill VALUES ('1020', '102');
INSERT INTO has_skill VALUES ('1021', '103');
INSERT INTO has_skill VALUES ('1021', '109');
INSERT INTO has_skill VALUES ('1026', '108');
INSERT INTO has_skill VALUES ('1024', '105');
INSERT INTO has_skill VALUES ('1026', '104');
INSERT INTO has_skill VALUES ('1027', '103');
INSERT INTO has_skill VALUES ('1028', '117');
INSERT INTO has_skill VALUES ('1020', '117');
INSERT INTO has_skill VALUES ('1021', '115');
INSERT INTO has_skill VALUES ('1025', '115');
INSERT INTO has_skill VALUES ('1026', '112');
INSERT INTO has_skill VALUES ('1028', '112');
INSERT INTO has_skill VALUES ('1002', '114');
INSERT INTO has_skill VALUES ('1003', '114');
INSERT INTO has_skill VALUES ('1004', '114');
INSERT INTO has_skill VALUES ('1005', '114');
INSERT INTO has_skill VALUES ('1006', '110');
INSERT INTO has_skill VALUES ('1003', '106');
INSERT INTO has_skill VALUES ('1008', '101');
INSERT INTO has_skill VALUES ('1009', '102');
INSERT INTO has_skill VALUES ('1010', '103');
INSERT INTO has_skill VALUES ('1011', '119');
INSERT INTO has_skill VALUES ('1012', '119');
INSERT INTO has_skill VALUES ('1013', '111');
INSERT INTO has_skill VALUES ('1014', '111');
INSERT INTO has_skill VALUES ('1015', '114');
INSERT INTO has_skill VALUES ('1005', '116');
INSERT INTO has_skill VALUES ('1006', '117');
INSERT INTO has_skill VALUES ('1018', '110');
INSERT INTO has_skill VALUES ('1019', '102');
INSERT INTO has_skill VALUES ('1010', '101');
INSERT INTO has_skill VALUES ('1011', '106');
INSERT INTO has_skill VALUES ('1012', '105');
INSERT INTO has_skill VALUES ('1013', '103');
INSERT INTO has_skill VALUES ('1014', '102');
INSERT INTO has_skill VALUES ('1015', '110');

COMMIT;