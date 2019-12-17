DELETE FROM person; 
DELETE FROM course; 
DELETE FROM section;  
DELETE FROM skill; 
DELETE FROM position; 
DELETE FROM job; 
DELETE FROM factory; 
DELETE FROM product; 
DELETE FROM materials; 
DELETE FROM customer; 
DELETE FROM purchase; 
DELETE FROM contract; 
DELETE FROM supplier; 
DELETE FROM teaches; 
DELETE FROM requires; 
DELETE FROM req_by_job; 
DELETE FROM prereq; 
DELETE FROM line_item; 
DELETE FROM makes; 
DELETE FROM orders; 
DELETE FROM uses; 
DELETE FROM purchase_line; 
DELETE FROM takes; 
DELETE FROM has_skill; 


INSERT INTO person VALUES ('120', 'Peter', 'Bosel', '40193', 'peterboss@rta.com', 'male', '21247291243'); 
INSERT INTO person VALUES ('121', 'Sandra', 'Wien', '55193', 'sandraawien@serts.com', 'female', '5047255643'); 
INSERT INTO person VALUES ('122', 'Mia', 'Dorth', '62183', 'miami23@live.com', 'female', '34372986734'); 
INSERT INTO person VALUES ('123', 'Judi', 'Fren', '60162', 'jjff454@live.com', 'female', '5047291444'); 
INSERT INTO person VALUES ('124', 'Frank', 'Seth', '71193', 'frank_seth@gmail.com', 'male', '343229775');
INSERT INTO person VALUES ('125', 'Logan,', 'Peterson', '90193', 'peter243@brent.com', 'male', '985473672'); 
INSERT INTO person VALUES ('126', 'Paul', 'Olsen', '70864', 'olsenn93@cox.com', 'male', '5047289920'); 
INSERT INTO person VALUES ('127', 'Newt', 'Thommas', '75642', 'reveers@sstp.com', 'male', '504799873'); 
INSERT INTO person VALUES ('128', 'Tom', 'Ma', '71243', 'tommma@live.com', 'male', '2127293345'); 
INSERT INTO person VALUES ('129', 'Sleth', 'Seng', '70193', 'sseng@gmail.com', 'male', '5047299026'); 
INSERT INTO person VALUES ('130', 'James', 'Brown', '82452', 'brownj@gmail.com', 'male', '50472954182'); 
INSERT INTO person VALUES ('131', 'Celin', 'Breeta', '82459', 'celinbr@hotmail.com', 'female', '2127288716'); 
INSERT INTO person VALUES ('132', 'Kate', 'Cheny', '70118', 'went@fxrt.com', 'male', '985720081'); 
INSERT INTO person VALUES ('133', 'Jorge', 'Merlin', '70219', 'jmycvhen@gmail.com', 'male', '9857290001');
INSERT INTO person VALUES ('134', 'Sims', 'Rogers', '70120', 'simsr@live.com', 'male', '2123721123'); 
INSERT INTO person VALUES ('135', 'Tara', 'Tomson', '71990', 'only_me@hotmail.com', 'female', '985727676'); 
INSERT INTO person VALUES ('136', 'Diane', 'Hartwell', '70043', 'diane@hhg.com', 'female', '5046161993'); 
INSERT INTO person VALUES ('137', 'Samwell', 'Tarly', '31419', 'maestersam21@hotmail.com', 'male', '9126607887'); 



INSERT INTO course VALUES ('23654', 'Heavy Equipment Operator Training', 'advanced', 'designed to teach the fundamental skills and knowledge needed to operate heavy equipment', 'active','100');
INSERT INTO course VALUES ('28595', 'Welding', 'beginner', 'provides introduction to various processes and techniqies of welding', 'active','120');
INSERT INTO course VALUES ('21313', 'Weight Lifting', 'advanced', 'combines the benefits of building strength with the motivation and positive atmosphere of a group exercise', 'inactive','150');
INSERT INTO course VALUES ('24478', 'Quality Assurance', 'beginner', 'structured to teach students how to avoid problems when delivering solutions or services to customers', 'active','200');
INSERT INTO course VALUES ('26987', 'Auto Painting Techniques', 'beginner', 'automotive painting including spray equipment, preparation of paint surface, masking, color matching, color shading, and advanced spray techniques', 'active','121');
INSERT INTO course VALUES ('22658', 'Principals of Financial Management', 'intermediate', 'introduction to investment, financing, and dividend decisions of business firms', 'active','300');
INSERT INTO course VALUES ('22489', 'Character and Leadership', 'advanced', 'comprehensive program designed to develop the character and leadership of students', 'active','120');
INSERT INTO course VALUES ('28987', 'Technology Consulting', 'beginner', 'a mix of elearning, self-study, instructor-led workshops, and shadowing of active consulting engagements', 'active','300');
INSERT INTO course VALUES ('26989', 'Business Communications', 'advanced', 'advanced techniques of written and oral communication, word usage, organization, and style', 'active','200');
INSERT INTO course VALUES ('22698', 'A Survey of Mathematical Thought 1', 'intermediate', 'inductive and deductive reasoning, set theory, logic, and basic concepts of number theory', 'active','400');
INSERT INTO course VALUES ('29354', 'Computer Networks and Telecommunications', 'intermediate', 'overview of modern computer communication networks covering the theoretic multi-layered model from the top down with an emphasis on working protocols and algorithms', 'active','132');
INSERT INTO course VALUES ('27938', 'Corrections Process', 'beginner','survey of criminal corrections', 'active','130');
INSERT INTO course VALUES ('26482', 'Human Resource Management', 'advanced', 'examines the role of the human resource professional as a strategic partner in managing present day organizations', 'active','100');



INSERT INTO section VALUES ('1021', '23654', TO_DATE('2010-05-12', 'YYYY-MM-DD'), '2010', 'Associated Training Services', 'online', '350');
INSERT INTO section VALUES ('4026', '28595', TO_DATE('2018-10-23', 'YYYY-MM-DD'), '2018', 'Delgado Community College', 'classroom', '420');
INSERT INTO section VALUES ('4006', '21313',  TO_DATE('2019-04-03', 'YYYY-MM-DD'), '2019', 'YMCA', 'gym', '50');
INSERT INTO section VALUES ('4024', '24478',  TO_DATE('2011-02-01', 'YYYY-MM-DD'), '2011', 'ASQ', 'online', '470');
INSERT INTO section VALUES ('5001', '26987', TO_DATE('2013-03-04', 'YYYY-MM-DD'), '2013', 'Delgado Community College', 'workshop', '500');
INSERT INTO section VALUES ('5006', '22658', TO_DATE('2019-11-09', 'YYYY-MM-DD'), '2019', 'University of New Orleans', 'classroom', '650');
INSERT INTO section VALUES ('5002', '22489', TO_DATE('2007-11-11', 'YYYY-MM-DD'), '2007', 'CDL', 'online', '200');
INSERT INTO section VALUES ('5003', '28987', TO_DATE('2009-04-22', 'YYYY-MM-DD'), '2009', 'Oracle', 'online', '200');
INSERT INTO section VALUES ('1042', '26989', TO_DATE('2015-08-01', 'YYYY-MM-DD'), '2015', 'Delgado Community College', 'classroom', '360');
INSERT INTO section VALUES ('1073', '22698', TO_DATE('2018-01-25', 'YYYY-MM-DD'), '2018', 'University of New Orleans', 'classroom', '610');
INSERT INTO section VALUES ('1061', '29354',  TO_DATE('2017-01-05', 'YYYY-MM-DD'), '2017', 'University of New Orleans', 'classroom', '680');
INSERT INTO section VALUES ('1043', '27938',  TO_DATE('2018-08-03', 'YYYY-MM-DD'), '2018', 'UNO', 'correspondence', '540');
INSERT INTO section VALUES ('1022', '26482', TO_DATE('2017-07-10', 'YYYY-MM-DD'), '2017', 'UNO', 'online-selfpaced', '200');







INSERT INTO skill VALUES ('1002', 'Heavy Equipment Operation', 'the ability to operate heavy equipment', 'intermediate'); 
INSERT INTO skill VALUES ('1003', 'Quality Testing', 'familiarity with auditing, quality standards, and quality control measurements', 'advanced');  
INSERT INTO skill VALUES ('1004', 'Automotive Parts Painting', 'skilled with the use of spray guns, air compressors, paint thinners, primer, acrylic top coat, clear coat lacquer, and buffers ', 'advanced'); 
INSERT INTO skill VALUES ('1005', 'Data Analysis', 'ability to evaluate data using analytical and logical reasoning', 'advanced'); 
INSERT INTO skill VALUES ('1006', 'Dependability', 'confident in ability to be reliable and trustworthy', 'N/A'); 
INSERT INTO skill VALUES ('1007', 'Technical Skills', 'knowledge of mechanical, information technology, and scientific tasks', 'intermediate'); 
INSERT INTO skill VALUES ('1008', 'Scheduling', 'ability to make arangements and plan efficiently and meet deadlines in a timely manner', 'advanced');
INSERT INTO skill VALUES ('1009', 'Occupational Safety', 'familiarity with health standards, use of proper safety equipment, and avoiding workplace risks', 'advanced');
INSERT INTO skill VALUES ('1010', 'Microsoft Office Suite', 'creating spreadsheets, presentations, and professional documents', 'intermediate'); 
INSERT INTO skill VALUES ('1011', 'Leadership', 'ability to guide other individuals and teams', 'intermediate'); 
INSERT INTO skill VALUES ('1012', 'Organization', 'ability to focus on different projects without getting disoriented or lost and maintain productivity', 'intermediate');
INSERT INTO skill VALUES ('1013', 'Maintainence', 'experienced in buffing, chemical use, cleaning, sweeping, mopping, dusting, waste disposal, and sanitation', 'advanced');
INSERT INTO skill VALUES ('1014', 'Heavy Lifting', 'ability to lift and carry up to 50lbs in materials, boxes, and crates', 'N/A'); 
INSERT INTO skill VALUES ('1015', 'Customer Service', 'helping customers in a friendly and efficient manner', 'beginner');  
INSERT INTO skill VALUES ('1016', 'Surveillance', 'ability to monitor behavior and observe suspicious activity', 'advanced');
INSERT INTO skill VALUES ('1017', 'Adaptability', 'capabile of working methodically in a fast-paced environment', 'advanced'); 
INSERT INTO skill VALUES ('1018', 'Welding', 'extensive knowledge in advanced welding techniques', 'advanced'); 
INSERT INTO skill VALUES ('1019', 'Business Ethics', 'the ability to examine ethical and moral principals in a business environment', 'intermediate'); 
INSERT INTO skill VALUES ('1020', 'Networking Configuration', 'the ability to install and configure computer networks and systems', 'advanced'); 
INSERT INTO skill VALUES ('1021', 'Communication', 'the ability to convey information to another effectively and efficiently', 'intermediate'); 
INSERT INTO skill VALUES ('1022', 'Application Support', 'support in app development', 'advanced'); 
INSERT INTO skill VALUES ('1023', 'Mathematical Reasoning', 'the ability to use the right mathematical methods or formulas to solve a problem', 'advanced'); 
INSERT INTO skill VALUES ('1024', 'Negotiation', 'ability to make profitable decisions and settle differences in an effective manner', 'advanced'); 
INSERT INTO skill VALUES ('1025', 'Problem Solving', 'ability to find solutions to difficult or complex problems', 'intermediate'); 




INSERT INTO position VALUES ('9285610', 'Forklift Driver', 'transfers containers of materials via forklift/other heavy machinery', '20', '10'); 
INSERT INTO position VALUES ('9285611', 'Network Administrator', 'maintains company network', '40', '20'); 
INSERT INTO position VALUES ('9285612', 'Delivery Driver', 'delivers finished products to stores', '21', '9'); 
INSERT INTO position VALUES ('9285613', 'Technical Consultant', 'conducts training sessions and reports on daily responsibilities and tasks', '55', '25'); 
INSERT INTO position VALUES ('9285614', 'Accountant', 'analyzes data, finance reports, budgets, taxes, and financial records', '34', '18'); 
INSERT INTO position VALUES ('9285615', 'Assembly Line Worker', 'constructs parts and products for consumer', '20', '10'); 
INSERT INTO position VALUES ('9285616', 'Welder', 'fabricates and assembles metal structures', '26', '13'); 
INSERT INTO position VALUES ('9285617', 'Order Clerk', 'analyzes customer documentation to determine items required, ', '19', '10'); 
INSERT INTO position VALUES ('9285618', 'Warehouse Worker', 'processes incoming stock/materials, picks/fills orders from stock, packs/ships orders, and organizes/retrieves stock', '18', '10'); 
INSERT INTO position VALUES ('9285619', 'Custodian', 'cleans and maintains buildings', '18', '9'); 
INSERT INTO position VALUES ('9285620', 'Security Guard', 'protects company assets', '16', '9'); 
INSERT INTO position VALUES ('9285621', 'Human Resources Manager', 'oversees recruiting, interviewing, and hiring of new staff and coordinates administrative functions', '44', '22');
INSERT INTO position VALUES ('9285622', 'Factory Manager', 'all work activities and implements rules ', '67', '42');
INSERT INTO position VALUES ('9285623', 'Contract Negotiator', 'manages vendor services and labor agreements', '52', '24'); 
INSERT INTO position VALUES ('9285624', 'CIO', 'inspects and tests products to ensure the quality deliverable', '57', '24'); 
INSERT INTO position VALUES ('9285625', 'Machine Operator', 'operates turning centers, lathes, mills, routers, grinders, and painting equipment', '21', '12'); 


INSERT INTO factory VALUES ('20001', 'GV Covington', '1331 Lowerline Ln' ,'70192', '9857904361', 'Michael Cooper');
INSERT INTO factory VALUES ('20002', 'GV Jefferson', '2132 4th St', '70123', '5044397887', 'Wayne Higgins');
INSERT INTO factory VALUES ('20003', 'GV New Orleans','144 22nd Ave', '70122', '5048283440', 'LaToya Cantrell');
INSERT INTO factory VALUES ('20004', 'GV Oaxaca', '2321 Newport Rd', '71982', '7196584395', 'Alejandro Hinojosa');
INSERT INTO factory VALUES ('20005', 'GV Hoonah-Angoon', '555 Seaway Dr', '99826', '9076352729', 'Gerald Byers');
INSERT INTO factory VALUES ('20006', 'GV Banjarmasin', '3131 Broadway Blvd', '70111', '6224567543', 'Ibnu Sina');
INSERT INTO factory VALUES ('20007', 'GV Chittenango', '3232 5th Ave', '71098', '3154568743', 'Frank Baum');
INSERT INTO factory VALUES ('20008', 'GV Roosevelt', '2321 Carrollton Ct', '88123', '5756435766', 'JR Bird');
INSERT INTO factory VALUES ('20009', 'GV Riviera', '8887 Bay Rd', '21123', '4432768345', 'Thomas Masters');
INSERT INTO factory VALUES ('20010', 'GV Klynets', '46 Pionerska St', '11133', '4027190432', 'Danylo Shumuk');
INSERT INTO factory VALUES ('20011', 'GV Kenilworth', '421 Brooks Ln', '70333', '3154768234', 'Anthony DeLuca');
INSERT INTO factory VALUES ('20012', 'GV Goshen', '762 Louisiana Ave', '45980', '3345289199', 'Howard Hawks');
INSERT INTO factory VALUES ('20013', 'GV Trelleborg', '4416 Trace Ct', '23144', '3472819463', 'Peter Nilsson');


INSERT INTO job VALUES ('189510', 'full-time', '14', 'wage', '113276','9285610','120','20001'); 
INSERT INTO job VALUES ('189511', 'full-time', '58000', 'salary', '542617','9285611','121','20002'); 
INSERT INTO job VALUES ('189512', 'full-time', '14', 'wage', '827132','9285612','122','20003'); 
INSERT INTO job VALUES ('189513', 'full-time', '74000', 'salary', '726381','9285613','123','20004'); 
INSERT INTO job VALUES ('189514', 'full-time', '510000', 'salary', '827635','9285614','124','20005'); 
INSERT INTO job VALUES ('189515', 'full-time', '13', 'wage', '635217','9285615','125','20005'); 
INSERT INTO job VALUES ('189516', 'full-time', '18', 'wage', '323243','9285611','126','20007'); 
INSERT INTO job VALUES ('189517', 'full-time', '14', 'wage', '362853','9285617','127','20008'); 
INSERT INTO job VALUES ('189518', 'full-time', '13', 'wage', '843433','9285618','128','20009'); 
INSERT INTO job VALUES ('189519', 'part-time', '12', 'wage', '113221','9285619','129','20010'); 
INSERT INTO job VALUES ('189520', 'full-time', '11', 'wage', '113221','9285620','130','20011'); 
INSERT INTO job VALUES ('189521', 'full-time', '65000', 'salary', '113221','9285621','131','20012'); 
INSERT INTO job VALUES ('189522', 'full-time', '79000', 'salary', '111132','9285622','132','20013'); 
INSERT INTO job VALUES ('189523', 'full-time', '70000', 'salary', '895241','9285623','133','20011'); 
INSERT INTO job VALUES ('189524', 'full-time', '77000', 'salary', '899943','9285624','134','20010'); 
INSERT INTO job VALUES ('189525', 'full-time', '16', 'wage', '892732','9285625','135','20003'); 



INSERT INTO product VALUES ('640', 'Motor Oil', 'lubrication for internal combustion engines', '1000', '65');
INSERT INTO product VALUES ('641', 'Oil Filter', 'removes contaminants from oil', '1200', '13');
INSERT INTO product VALUES ('642', 'Gauge cleaner', 'removes contaminants from gauge', '6500', '2');
INSERT INTO product VALUES ('643', 'Air Filter', 'prevents harmful debris, dirt and contaminants from entering engine', '4500', '58');
INSERT INTO product VALUES ('644', 'Spark Plug', 'device for delivering electric current from ignition system to combustion chamber', '5500', '60');
INSERT INTO product VALUES ('645', 'Speaker', 'audio device', '5800', '225');
INSERT INTO product VALUES ('646', 'Tire', 'rubber covering surrounding inflated inner tube around wheel', '6000', '124');
INSERT INTO product VALUES ('647', 'Battery', 'rechargeable battery that supplies electrical current to vehicle', '6600', '60');
INSERT INTO product VALUES ('648', 'Windshield Wipers', 'device for keeping a windshield clear of rain', '7000', '56');
INSERT INTO product VALUES ('649', 'Windshield Fluid', 'fluid for motor vehicles used to clean the windshield with the windshield wipers', '9700', '75');
INSERT INTO product VALUES ('650', 'Brakes', 'device for slowing or stopping a moving vehicle', '5500', '56');
INSERT INTO product VALUES ('651', 'Brake Fluid', 'fluid used in a hydraulic brake system', '1900', '50');
INSERT INTO product VALUES ('652', 'Brake Cleaner', 'removes oil, grease, brake fluid, brake pad material and/or dirt from motor vehicle brake mechanism', '6000', '59');
INSERT INTO product VALUES ('653', 'Detailing Spray', 'elevates shine while wiping away dirt, dust, and smudges', '1000', '65');
INSERT INTO product VALUES ('654', 'Headlight Spray', 'oxodizes cloudy headlights', '500', '56');
INSERT INTO product VALUES ('655', 'Fuel Injector', 'prolongs the life of the fuel injection system and engine', '1600', '60');
INSERT INTO product VALUES ('656', 'Air Pump', 'device for pumping air into tires', '1700', '38');
INSERT INTO product VALUES ('657', 'Engine Flush', 'chemical additive that cleans accumulated deposits, sludge, and other gunk from engine', '1600', '16');
INSERT INTO product VALUES ('658', 'Rotor', 'component in the braking system that stops the vehicle', '1900', '26');



INSERT INTO materials VALUES('800001', 'Electronic Parts', '10000', '1000');
INSERT INTO materials VALUES('800002', 'Rubber', '100000', '20000');
INSERT INTO materials VALUES('800003', 'Steel', '800000', '400000');
INSERT INTO materials VALUES('800004', 'Copper', '4000', '1000');
INSERT INTO materials VALUES('800005', 'Aluminum', '200000', '50000');
INSERT INTO materials VALUES('800006', 'Plastic Parts', '500000', '200000');
INSERT INTO materials VALUES('800008', 'Molds', '200', '75');
INSERT INTO materials VALUES('800009', 'Paint', '10000', '5000');
INSERT INTO materials VALUES('800010', 'Fabric', '10000', '5000');
INSERT INTO materials VALUES('800011', 'Leather', '6000', '4000');
INSERT INTO materials VALUES('800012', 'Glass', '50000', '30000');
INSERT INTO materials VALUES('800013', 'Petroleum', '100000', '65000');




INSERT INTO customer VALUES ('901', 'Charles', 'Watkins', '70001', 'charlieboyy6@live.com','5044398827');
INSERT INTO customer VALUES ('902', 'Christian', 'Peters', '78201', 'chrispy_pete@msn.com','2104345567');
INSERT INTO customer VALUES ('903', 'Chip', 'Welch', '70293', 'goseewelch@att.net', '9854423213');
INSERT INTO customer VALUES ('904', 'Claire', 'Redfield', '46001', 'clredfield@rpd.com', '7654590001');
INSERT INTO customer VALUES ('905', 'Robert', 'Mallard', '98001', 'rmallard1988@att.net', '2355509897');
INSERT INTO customer VALUES ('906', 'Benjamin', 'Townshend', '71454', 'bentownsend42@hotmail.com', '3186775486');
INSERT INTO customer VALUES ('907', 'Bertha', 'Louis', '39073', 'bigbertha77@live.com', '7696012767');
INSERT INTO customer VALUES ('908', 'James', 'Mallard', '36016', 'jj_mally45@gmail.com','3345896034');
INSERT INTO customer VALUES ('909', 'Rita', 'Paulson', '75457', 'rpaulson68@hotmail.com', '9034309989');
INSERT INTO customer VALUES ('910', 'Lesley', 'Aiken', '30627', 'lesley_marie_00@att.net', '7627067894');
INSERT INTO customer VALUES ('911', 'Aurora', 'Leonard', '70068', 'l4dy_4ur0r4@yahoo.com',  '9856764309');
INSERT INTO customer VALUES ('912', 'Trisha', 'Maestri', '70052', 't_mae_441@gmail.com',  '2259357854');
INSERT INTO customer VALUES ('913', 'Ryan', 'Charleston', '70172', 'ryrycharlie@cox.net', '5048282547');
INSERT INTO customer VALUES ('914', 'Daniel', 'Stephens', '38677', 'danny_steph14@gmail.com', '6623459878');
INSERT INTO customer VALUES ('915', 'ExchangeMarket', 'EM', '70339', 'emarket@hotmail.com', '9854290043');


INSERT INTO supplier VALUES ('41421', 'www.ngkinteriors.com', 'ngk@ngkinteriors.com');
INSERT INTO supplier VALUES ('41422', 'www.moldmastersco.com', 'damien@moldmastersco.com');
INSERT INTO supplier VALUES ('41423', 'www.bosecorp.org', 'bkeller@bosecorp.com');
INSERT INTO supplier VALUES ('41424', 'www.buildit.com',' contactus@buildit.com');
INSERT INTO supplier VALUES ('41425', 'www.makersrow.com', 'support@makersrow.com');
INSERT INTO supplier VALUES ('41426', 'www.number1source.com', 'source@number1source.com');
INSERT INTO supplier VALUES ('41427', 'www.factorydirect.com', 'customercare@factorydirect.com');
INSERT INTO supplier VALUES ('41428', 'www.paintersworldsupply.com', 'support@pwsupply.com');
INSERT INTO supplier VALUES ('41429', 'www.topteirstock.com', 'ceo@topteirstock.com');
INSERT INTO supplier VALUES ('41430', 'www.grandplastics.com', 'customersupport@grandplastics.com');
INSERT INTO supplier VALUES ('41431', 'www.ExchangeMarket.com', 'EM@exchangemarket.com');


INSERT INTO purchase VALUES ('000001', '41424', '101125', TO_DATE('2018-05-06', 'YYYY-MM-DD'), TO_DATE('2018-05-01', 'YYYY-MM-DD'), 'petrolium restock');
INSERT INTO purchase VALUES ('000002', '41427', '101126', TO_DATE('2018-08-07', 'YYYY-MM-DD'), TO_DATE('2018-08-01', 'YYYY-MM-DD'), 'steel order');
INSERT INTO purchase VALUES ('000003', '41421', '101127', TO_DATE('2018-04-02', 'YYYY-MM-DD'), TO_DATE('2018-04-01', 'YYYY-MM-DD'), 'fabric restock');
INSERT INTO purchase VALUES ('000004', '41428', '101128', TO_DATE('2018-02-01', 'YYYY-MM-DD'), TO_DATE('2018-01-01', 'YYYY-MM-DD'), 'paint restock');
INSERT INTO purchase VALUES ('000005', '41421', '101129', TO_DATE('2018-01-05', 'YYYY-MM-DD'), TO_DATE('2018-04-01', 'YYYY-MM-DD'), 'fabric restock');
INSERT INTO purchase VALUES ('000006', '41422', '101130', TO_DATE('2018-11-07', 'YYYY-MM-DD'), TO_DATE('2018-11-01', 'YYYY-MM-DD'), 'molding equipment upgrade');
INSERT INTO purchase VALUES ('000007', '41423', '101131', TO_DATE('2018-10-08', 'YYYY-MM-DD'), TO_DATE('2018-10-01', 'YYYY-MM-DD'), 'audio/speaker parts restock');
INSERT INTO purchase VALUES ('000008', '41429', '101132', TO_DATE('2018-12-09', 'YYYY-MM-DD'), TO_DATE('2018-12-01', 'YYYY-MM-DD'), 'plastic parts order');
INSERT INTO purchase VALUES ('000009', '41430', '101133', TO_DATE('2018-03-20', 'YYYY-MM-DD'), TO_DATE('2018-03-01', 'YYYY-MM-DD'), 'plastic parts restock');
INSERT INTO purchase VALUES ('000010', '41431', '101134', TO_DATE('2018-01-30', 'YYYY-MM-DD'), TO_DATE('2018-01-01', 'YYYY-MM-DD'), 'electric parts restock');
INSERT INTO purchase VALUES ('000011', '41422', '101135', TO_DATE('2018-02-10', 'YYYY-MM-DD'), TO_DATE('2018-01-01', 'YYYY-MM-DD'), 'molding equipment upgrade');
INSERT INTO purchase VALUES ('000012', '41428', '101136', TO_DATE('2018-04-15', 'YYYY-MM-DD'), TO_DATE('2018-04-01', 'YYYY-MM-DD'), 'paint restock');
INSERT INTO purchase VALUES ('000013', '41423', '101137', TO_DATE('2018-05-18', 'YYYY-MM-DD'), TO_DATE('2018-05-01', 'YYYY-MM-DD'), 'audio/speaker parts restock');
INSERT INTO purchase VALUES ('000014', '41423', '101138', TO_DATE('2018-09-27', 'YYYY-MM-DD'), TO_DATE('2018-09-01', 'YYYY-MM-DD'), 'audio/speaker parts restock');
INSERT INTO purchase VALUES ('000015', '41430', '101139', TO_DATE('2018-07-19', 'YYYY-MM-DD'), TO_DATE('2018-07-01', 'YYYY-MM-DD'), 'plastic parts restock');
INSERT INTO purchase VALUES ('000016', '41425', '101140', TO_DATE('2018-05-31', 'YYYY-MM-DD'), TO_DATE('2018-05-01', 'YYYY-MM-DD'), 'copper/wire restock');
INSERT INTO purchase VALUES ('000017', '41426', '101141', TO_DATE('2018-08-26', 'YYYY-MM-DD'), TO_DATE('2018-08-01', 'YYYY-MM-DD'), 'rubber restock');
INSERT INTO purchase VALUES ('000018', '41428', '101142', TO_DATE('2018-04-24', 'YYYY-MM-DD'), TO_DATE('2018-04-01', 'YYYY-MM-DD'), 'paint restock');



INSERT INTO contract VALUES ('5000001', '901', TO_DATE('2018-03-05', 'YYYY-MM-DD'), '5250', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000002', '902', TO_DATE('2018-05-17', 'YYYY-MM-DD'), '1200', '6 monthly payments at 200 each');
INSERT INTO contract VALUES ('5000003', '903', TO_DATE('2018-01-30', 'YYYY-MM-DD'), '390', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000004', '904', TO_DATE('2018-12-02', 'YYYY-MM-DD'), '1200', '600 down on sale date, 600 due in 3 months');
INSERT INTO contract VALUES ('5000005', '902', TO_DATE('2018-08-14', 'YYYY-MM-DD'), '8400', '3 payments of 2800 bimonthly starting on 9/1/04');
INSERT INTO contract VALUES ('5000006', '905', TO_DATE('2005-07-11', 'YYYY-MM-DD'), '912', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000007', '906', TO_DATE('2018-07-09', 'YYYY-MM-DD'), '780', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000008', '907', TO_DATE('2018-02-23', 'YYYY-MM-DD'), '10800', '450 down, followed by monthly payments of 450 due on the first of each month');
INSERT INTO contract VALUES ('5000009', '905', TO_DATE('2018-04-24', 'YYYY-MM-DD'), '300', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000010', '908', TO_DATE('2018-06-08', 'YYYY-MM-DD'), '840', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000011', '909', TO_DATE('2018-03-15', 'YYYY-MM-DD'), '9700', '2425 down followed by 3 payments of 2425 quarterly');
INSERT INTO contract VALUES ('5000012', '910', TO_DATE('2018-04-19', 'YYYY-MM-DD'), '40500', '24 monthly payments at 1687.50 each over two year span');
INSERT INTO contract VALUES ('5000013', '908', TO_DATE('2018-11-28', 'YYYY-MM-DD'), '240', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000014', '911', TO_DATE('2018-08-20', 'YYYY-MM-DD'), '675', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000015', '902', TO_DATE('2018-10-31', 'YYYY-MM-DD'), '16200', '12 monthly payments at 1350 each');
INSERT INTO contract VALUES ('5000016', '907', TO_DATE('2018-05-04', 'YYYY-MM-DD'), '980', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000017', '912', TO_DATE('2018-02-10', 'YYYY-MM-DD'), '560', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000018', '913', TO_DATE('2018-04-01', 'YYYY-MM-DD'), '6500', '3250 down on sale date, remaining balance due in 6 months');
INSERT INTO contract VALUES ('5000019', '914', TO_DATE('2018-04-11', 'YYYY-MM-DD'), '715', 'paid in full on sale date');
INSERT INTO contract VALUES ('5000020', '915', TO_DATE('2018-10-22', 'YYYY-MM-DD'), '100000000', 'paid in full on sale date');




INSERT INTO teaches VALUES ('23654', '1002'); 			

INSERT INTO teaches VALUES ('28595', '1018'); 			

INSERT INTO teaches VALUES ('21313', '1014'); 			

INSERT INTO teaches VALUES ('24478', '1003'); 			

INSERT INTO teaches VALUES ('26987', '1004'); 			

INSERT INTO teaches VALUES ('22658', '1005'); 			

INSERT INTO teaches VALUES ('22489', '1006'); 			
INSERT INTO teaches VALUES ('22489', '1011'); 			

INSERT INTO teaches VALUES ('28987', '1007'); 			
INSERT INTO teaches VALUES ('28987', '1022'); 			

INSERT INTO teaches VALUES ('26989', '1008'); 			
INSERT INTO teaches VALUES ('26989', '1017'); 			
INSERT INTO teaches VALUES ('26989', '1019'); 			
INSERT INTO teaches VALUES ('26989', '1021'); 			
INSERT INTO teaches VALUES ('26989', '1024'); 			

INSERT INTO teaches VALUES ('22698', '1023');  			
INSERT INTO teaches VALUES ('22698', '1025'); 			

INSERT INTO teaches VALUES ('29354', '1020'); 			

INSERT INTO teaches VALUES ('27938', '1016'); 			

INSERT INTO teaches VALUES ('26482', '1015');			






INSERT INTO requires VALUES ('9285610', '1002'); 
INSERT INTO requires VALUES ('9285625', '1002'); 

INSERT INTO requires VALUES ('9285624', '1003'); 

INSERT INTO requires VALUES ('9285625', '1004'); 

INSERT INTO requires VALUES ('9285617', '1005'); 
INSERT INTO requires VALUES ('9285614', '1005'); 
INSERT INTO requires VALUES ('9285621', '1005'); 
INSERT INTO requires VALUES ('9285623', '1005'); 
INSERT INTO requires VALUES ('9285622', '1005'); 

INSERT INTO requires VALUES ('9285610', '1006'); 
INSERT INTO requires VALUES ('9285611', '1006'); 
INSERT INTO requires VALUES ('9285612', '1006'); 
INSERT INTO requires VALUES ('9285613', '1006'); 
INSERT INTO requires VALUES ('9285614', '1006'); 
INSERT INTO requires VALUES ('9285615', '1006'); 
INSERT INTO requires VALUES ('9285616', '1006'); 
INSERT INTO requires VALUES ('9285617', '1006'); 
INSERT INTO requires VALUES ('9285618', '1006'); 
INSERT INTO requires VALUES ('9285619', '1006'); 
INSERT INTO requires VALUES ('9285620', '1006'); 
INSERT INTO requires VALUES ('9285621', '1006'); 
INSERT INTO requires VALUES ('9285622', '1006'); 
INSERT INTO requires VALUES ('9285623', '1006'); 
INSERT INTO requires VALUES ('9285624', '1006'); 
INSERT INTO requires VALUES ('9285625', '1006'); 

INSERT INTO requires VALUES ('9285611', '1007'); 
INSERT INTO requires VALUES ('9285613', '1007'); 
INSERT INTO requires VALUES ('9285625', '1007'); 
INSERT INTO requires VALUES ('9285624', '1007'); 

INSERT INTO requires VALUES ('9285616', '1008'); 
INSERT INTO requires VALUES ('9285617', '1008'); 
INSERT INTO requires VALUES ('9285619', '1008'); 
INSERT INTO requires VALUES ('9285611', '1008'); 
INSERT INTO requires VALUES ('9285613', '1008'); 
INSERT INTO requires VALUES ('9285621', '1008'); 
INSERT INTO requires VALUES ('9285622', '1008'); 
INSERT INTO requires VALUES ('9285623', '1008'); 
INSERT INTO requires VALUES ('9285614', '1008'); 
INSERT INTO requires VALUES ('9285624', '1008'); 

INSERT INTO requires VALUES ('9285610', '1009'); 
INSERT INTO requires VALUES ('9285612', '1009'); 
INSERT INTO requires VALUES ('9285615', '1009'); 
INSERT INTO requires VALUES ('9285616', '1009'); 
INSERT INTO requires VALUES ('9285618', '1009'); 
INSERT INTO requires VALUES ('9285620', '1009'); 
INSERT INTO requires VALUES ('9285621', '1009'); 
INSERT INTO requires VALUES ('9285622', '1009'); 
INSERT INTO requires VALUES ('9285619', '1009'); 

INSERT INTO requires VALUES ('9285617', '1010'); 
INSERT INTO requires VALUES ('9285614', '1010'); 

INSERT INTO requires VALUES ('9285621', '1011');
INSERT INTO requires VALUES ('9285613', '1012'); 
INSERT INTO requires VALUES ('9285611', '1012'); 
INSERT INTO requires VALUES ('9285614', '1012'); 
INSERT INTO requires VALUES ('9285617', '1012'); 
INSERT INTO requires VALUES ('9285618', '1012'); 
INSERT INTO requires VALUES ('9285619', '1012'); 
INSERT INTO requires VALUES ('9285620', '1012'); 
INSERT INTO requires VALUES ('9285621', '1012'); 
INSERT INTO requires VALUES ('9285622', '1012'); 
INSERT INTO requires VALUES ('9285623', '1012'); 
INSERT INTO requires VALUES ('9285619', '1013'); 
INSERT INTO requires VALUES ('9285618', '1014'); 
INSERT INTO requires VALUES ('9285612', '1015'); 
INSERT INTO requires VALUES ('9285617', '1015'); 
INSERT INTO requires VALUES ('9285623', '1015'); 
INSERT INTO requires VALUES ('9285610', '1017'); 
INSERT INTO requires VALUES ('9285612', '1017'); 
INSERT INTO requires VALUES ('9285616', '1017'); 
INSERT INTO requires VALUES ('9285618', '1017'); 
INSERT INTO requires VALUES ('9285622', '1011'); 
INSERT INTO requires VALUES ('9285616', '1018'); 
INSERT INTO requires VALUES ('9285611', '1019'); 
INSERT INTO requires VALUES ('9285613', '1019'); 
INSERT INTO requires VALUES ('9285617', '1019'); 
INSERT INTO requires VALUES ('9285612', '1019'); 
INSERT INTO requires VALUES ('9285621', '1019'); 
INSERT INTO requires VALUES ('9285620', '1019'); 
INSERT INTO requires VALUES ('9285622', '1019'); 
INSERT INTO requires VALUES ('9285623', '1019'); 

INSERT INTO requires VALUES ('9285611', '1020'); 

INSERT INTO requires VALUES ('9285612', '1021'); 
INSERT INTO requires VALUES ('9285617', '1021'); 
INSERT INTO requires VALUES ('9285622', '1021'); 
INSERT INTO requires VALUES ('9285621', '1021'); 
INSERT INTO requires VALUES ('9285623', '1021'); 
INSERT INTO requires VALUES ('9285616', '1021'); 
INSERT INTO requires VALUES ('9285618', '1021'); 
INSERT INTO requires VALUES ('9285620', '1021'); 

INSERT INTO requires VALUES ('9285613', '1022'); 

INSERT INTO requires VALUES ('9285614', '1023'); 
INSERT INTO requires VALUES ('9285613', '1023'); 
INSERT INTO requires VALUES ('9285611', '1023'); 

INSERT INTO requires VALUES ('9285623', '1024'); 
INSERT INTO requires VALUES ('9285614', '1024'); 

INSERT INTO requires VALUES ('9285613', '1025'); 
INSERT INTO requires VALUES ('9285611', '1025'); 
INSERT INTO requires VALUES ('9285621', '1025'); 
INSERT INTO requires VALUES ('9285622', '1025'); 
INSERT INTO requires VALUES ('9285623', '1025'); 
INSERT INTO requires VALUES ('9285614', '1025'); 
INSERT INTO requires VALUES ('9285620', '1025'); 
INSERT INTO requires VALUES ('9285617', '1025'); 




INSERT INTO req_by_job VALUES ('189510', '1002'); 
INSERT INTO req_by_job VALUES ('189525', '1002'); 

INSERT INTO req_by_job VALUES ('189524', '1003'); 

INSERT INTO req_by_job VALUES ('189525', '1004'); 

INSERT INTO req_by_job VALUES ('189517', '1005'); 
INSERT INTO req_by_job VALUES ('189514', '1005'); 
INSERT INTO req_by_job VALUES ('189521', '1005'); 
INSERT INTO req_by_job VALUES ('189523', '1005'); 
INSERT INTO req_by_job VALUES ('189522', '1005'); 

INSERT INTO req_by_job VALUES ('189510', '1006'); 
INSERT INTO req_by_job VALUES ('189511', '1006'); 
INSERT INTO req_by_job VALUES ('189512', '1006'); 
INSERT INTO req_by_job VALUES ('189513', '1006'); 
INSERT INTO req_by_job VALUES ('189514', '1006'); 
INSERT INTO req_by_job VALUES ('189515', '1006'); 
INSERT INTO req_by_job VALUES ('189516', '1006'); 
INSERT INTO req_by_job VALUES ('189517', '1006'); 
INSERT INTO req_by_job VALUES ('189518', '1006'); 
INSERT INTO req_by_job VALUES ('189519', '1006'); 
INSERT INTO req_by_job VALUES ('189520', '1006'); 
INSERT INTO req_by_job VALUES ('189521', '1006'); 
INSERT INTO req_by_job VALUES ('189522', '1006'); 
INSERT INTO req_by_job VALUES ('189523', '1006'); 
INSERT INTO req_by_job VALUES ('189524', '1006'); 
INSERT INTO req_by_job VALUES ('189525', '1006'); 

INSERT INTO req_by_job VALUES ('189511', '1007'); 
INSERT INTO req_by_job VALUES ('189513', '1007'); 
INSERT INTO req_by_job VALUES ('189525', '1007'); 
INSERT INTO req_by_job VALUES ('189524', '1007'); 

INSERT INTO req_by_job VALUES ('189516', '1008'); 
INSERT INTO req_by_job VALUES ('189517', '1008'); 
INSERT INTO req_by_job VALUES ('189519', '1008'); 
INSERT INTO req_by_job VALUES ('189511', '1008'); 
INSERT INTO req_by_job VALUES ('189513', '1008'); 
INSERT INTO req_by_job VALUES ('189521', '1008'); 
INSERT INTO req_by_job VALUES ('189522', '1008'); 
INSERT INTO req_by_job VALUES ('189523', '1008'); 
INSERT INTO req_by_job VALUES ('189514', '1008'); 
INSERT INTO req_by_job VALUES ('189524', '1008'); 

INSERT INTO req_by_job VALUES ('189510', '1009'); 
INSERT INTO req_by_job VALUES ('189512', '1009'); 
INSERT INTO req_by_job VALUES ('189515', '1009'); 
INSERT INTO req_by_job VALUES ('189516', '1009'); 
INSERT INTO req_by_job VALUES ('189518', '1009'); 
INSERT INTO req_by_job VALUES ('189520', '1009'); 
INSERT INTO req_by_job VALUES ('189521', '1009'); 
INSERT INTO req_by_job VALUES ('189522', '1009'); 
INSERT INTO req_by_job VALUES ('189519', '1009'); 

INSERT INTO req_by_job VALUES ('189517', '1010'); 
INSERT INTO req_by_job VALUES ('189514', '1010'); 

INSERT INTO req_by_job VALUES ('189521', '1011'); 

INSERT INTO req_by_job VALUES ('189513', '1012'); 
INSERT INTO req_by_job VALUES ('189511', '1012'); 
INSERT INTO req_by_job VALUES ('189514', '1012'); 
INSERT INTO req_by_job VALUES ('189517', '1012'); 
INSERT INTO req_by_job VALUES ('189518', '1012'); 
INSERT INTO req_by_job VALUES ('189519', '1012'); 
INSERT INTO req_by_job VALUES ('189520', '1012'); 
INSERT INTO req_by_job VALUES ('189521', '1012'); 
INSERT INTO req_by_job VALUES ('189522', '1012'); 
INSERT INTO req_by_job VALUES ('189523', '1012'); 

INSERT INTO req_by_job VALUES ('189519', '1013'); 

INSERT INTO req_by_job VALUES ('189518', '1014'); 

INSERT INTO req_by_job VALUES ('189512', '1015'); 
INSERT INTO req_by_job VALUES ('189517', '1015'); 
INSERT INTO req_by_job VALUES ('189523', '1015'); 
INSERT INTO req_by_job VALUES ('189510', '1017'); 
INSERT INTO req_by_job VALUES ('189512', '1017'); 
INSERT INTO req_by_job VALUES ('189516', '1017'); 
INSERT INTO req_by_job VALUES ('189518', '1017'); 
INSERT INTO req_by_job VALUES ('189522', '1011'); 

INSERT INTO req_by_job VALUES ('189516', '1018'); 

INSERT INTO req_by_job VALUES ('189511', '1019'); 
INSERT INTO req_by_job VALUES ('189513', '1019'); 
INSERT INTO req_by_job VALUES ('189517', '1019'); 
INSERT INTO req_by_job VALUES ('189512', '1019'); 
INSERT INTO req_by_job VALUES ('189521', '1019'); 
INSERT INTO req_by_job VALUES ('189520', '1019'); 
INSERT INTO req_by_job VALUES ('189522', '1019'); 
INSERT INTO req_by_job VALUES ('189523', '1019'); 

INSERT INTO req_by_job VALUES ('189511', '1020'); 

INSERT INTO req_by_job VALUES ('189512', '1021'); 
INSERT INTO req_by_job VALUES ('189517', '1021'); 
INSERT INTO req_by_job VALUES ('189522', '1021'); 
INSERT INTO req_by_job VALUES ('189521', '1021'); 
INSERT INTO req_by_job VALUES ('189523', '1021'); 
INSERT INTO req_by_job VALUES ('189516', '1021'); 
INSERT INTO req_by_job VALUES ('189518', '1021'); 
INSERT INTO req_by_job VALUES ('189520', '1021'); 

INSERT INTO req_by_job VALUES ('189513', '1022'); 

INSERT INTO req_by_job VALUES ('189514', '1023'); 
INSERT INTO req_by_job VALUES ('189513', '1023'); 
INSERT INTO req_by_job VALUES ('189511', '1023'); 

INSERT INTO req_by_job VALUES ('189523', '1024'); 
INSERT INTO req_by_job VALUES ('189514', '1024'); 

INSERT INTO req_by_job VALUES ('189513', '1025'); 
INSERT INTO req_by_job VALUES ('189511', '1025'); 
INSERT INTO req_by_job VALUES ('189521', '1025'); 
INSERT INTO req_by_job VALUES ('189522', '1025'); 
INSERT INTO req_by_job VALUES ('189523', '1025'); 
INSERT INTO req_by_job VALUES ('189514', '1025'); 
INSERT INTO req_by_job VALUES ('189520', '1025'); 
INSERT INTO req_by_job VALUES ('189517', '1025'); 



INSERT INTO prereq VALUES ('23654');
INSERT INTO prereq VALUES ('28595');
INSERT INTO prereq VALUES ('21313');
INSERT INTO prereq VALUES ('24478');
INSERT INTO prereq VALUES ('26987');
INSERT INTO prereq VALUES ('22658');
INSERT INTO prereq VALUES ('22489');
INSERT INTO prereq VALUES ('28987');
INSERT INTO prereq VALUES ('26989');
INSERT INTO prereq VALUES ('22698');
INSERT INTO prereq VALUES ('29354');
INSERT INTO prereq VALUES ('27938');
INSERT INTO prereq VALUES ('26482');



INSERT INTO line_item VALUES ('5000001', '646', '50');
INSERT INTO line_item VALUES ('5000002', '647', '20');
INSERT INTO line_item VALUES ('5000003', '641', '30');
INSERT INTO line_item VALUES ('5000004', '644', '20');
INSERT INTO line_item VALUES ('5000005', '650', '150');
INSERT INTO line_item VALUES ('5000006', '656', '24');
INSERT INTO line_item VALUES ('5000007', '641', '60');
INSERT INTO line_item VALUES ('5000008', '645', '48');
INSERT INTO line_item VALUES ('5000009', '642', '150');
INSERT INTO line_item VALUES ('5000010', '648', '15');
INSERT INTO line_item VALUES ('5000011', '651', '194');
INSERT INTO line_item VALUES ('5000012', '645', '180');
INSERT INTO line_item VALUES ('5000013', '657', '15');
INSERT INTO line_item VALUES ('5000014', '649', '9');
INSERT INTO line_item VALUES ('5000015', '645', '72');
INSERT INTO line_item VALUES ('5000016', '658', '35');
INSERT INTO line_item VALUES ('5000017', '654', '10');
INSERT INTO line_item VALUES ('5000018', '640', '100');
INSERT INTO line_item VALUES ('5000019', '653', '11');
INSERT INTO line_item VALUES ('5000020', '644', '15');



INSERT INTO makes VALUES ('640', '20008');
INSERT INTO makes VALUES ('641', '20003');
INSERT INTO makes VALUES ('642', '20009');
INSERT INTO makes VALUES ('643', '20010');
INSERT INTO makes VALUES ('644', '20012');
INSERT INTO makes VALUES ('645', '20005');
INSERT INTO makes VALUES ('646', '20001');
INSERT INTO makes VALUES ('647', '20007');
INSERT INTO makes VALUES ('648', '20011');
INSERT INTO makes VALUES ('649', '20009');
INSERT INTO makes VALUES ('650', '20012');
INSERT INTO makes VALUES ('651', '20006');
INSERT INTO makes VALUES ('652', '20002');
INSERT INTO makes VALUES ('653', '20006');
INSERT INTO makes VALUES ('654', '20013');
INSERT INTO makes VALUES ('655', '20005');
INSERT INTO makes VALUES ('656', '20004');
INSERT INTO makes VALUES ('657', '20013');
INSERT INTO makes VALUES ('658', '20007');



INSERT INTO purchase_line VALUES ('000001', '800001','2');
INSERT INTO purchase_line VALUES ('000001', '800002','3');
INSERT INTO purchase_line VALUES ('000002', '800001','1');
INSERT INTO purchase_line VALUES ('000002', '800002','1');
INSERT INTO purchase_line VALUES ('000002', '800003','2');
INSERT INTO purchase_line VALUES ('000002', '800004','1');
INSERT INTO purchase_line VALUES ('000003', '800004','3');
INSERT INTO purchase_line VALUES ('000003', '800005','2');
INSERT INTO purchase_line VALUES ('000004', '800006','1');
INSERT INTO purchase_line VALUES ('000005', '800001','1');
INSERT INTO purchase_line VALUES ('000005', '800002','1');
INSERT INTO purchase_line VALUES ('000006', '800003','2');
INSERT INTO purchase_line VALUES ('000007', '800009','3');
INSERT INTO purchase_line VALUES ('000008', '800008','3');
INSERT INTO purchase_line VALUES ('000008', '800009','2');
INSERT INTO purchase_line VALUES ('000009', '800001','1');
INSERT INTO purchase_line VALUES ('000009', '800002','2');
INSERT INTO purchase_line VALUES ('000010', '800001','1');
INSERT INTO purchase_line VALUES ('000010', '800002','2');
INSERT INTO purchase_line VALUES ('000011', '800003','1');
INSERT INTO purchase_line VALUES ('000012', '800001','2');
INSERT INTO purchase_line VALUES ('000013', '800005','1');
INSERT INTO purchase_line VALUES ('000014', '800006','1');
INSERT INTO purchase_line VALUES ('000015', '800010','4');
INSERT INTO purchase_line VALUES ('000016', '800011','5');
INSERT INTO purchase_line VALUES ('000017', '800010','1');
INSERT INTO purchase_line VALUES ('000017', '800012','1');
INSERT INTO purchase_line VALUES ('000017', '800013','2');
INSERT INTO purchase_line VALUES ('000018', '800003','3');




INSERT INTO takes VALUES ('120', '23654', '1021', TO_DATE('2010-05-12', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('120', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('120', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('121', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('121', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('121', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('121', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('121', '26482', '1022', TO_DATE('2017-07-10', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('122', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('122', '21313', '4006', TO_DATE('2019-04-03', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('122', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('123', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('123', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('123', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('123', '26482', '1022', TO_DATE('2017-07-10', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('123', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('124', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('124', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('124', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('125', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('125', '21313', '4006', TO_DATE('2019-04-03', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('125', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('126', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('126', '28987', '5003', TO_DATE('2009-04-22', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('126', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('126', '29354', '1061', TO_DATE('2017-01-05', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('126', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('127', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('127', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('127', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('127', '28595', '4026', TO_DATE('2018-10-23', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('128', '24478', '4026', TO_DATE('2011-02-01', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('128', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('128', '28987', '5003', TO_DATE('2009-04-22', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('128', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('129', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('129', '28987', '5003', TO_DATE('2009-04-22', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('129', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 


INSERT INTO takes VALUES ('130', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('130', '27938', '1043', TO_DATE('2018-08-03', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('130', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('130', '28987', '5003', TO_DATE('2009-04-22', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('131', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('131', '21313', '4006', TO_DATE('2019-04-03', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('131', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('132', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('133', '23654', '1021', TO_DATE('2010-05-12', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('133', '26987', '5001', TO_DATE('2013-03-04', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('133', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('133', '28987', '5003', TO_DATE('2009-04-22', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('134', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('134', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('134', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('134', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('135', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('135', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 

INSERT INTO takes VALUES ('136', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('136', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('136', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('136', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('137', '22658', '5006', TO_DATE('2019-11-09', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('137', '22489', '5002', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('137', '26989', '1042', TO_DATE('2007-11-11', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('137', '26482', '1022', TO_DATE('2017-07-10', 'YYYY-MM-DD')); 
INSERT INTO takes VALUES ('137', '22698', '1073', TO_DATE('2018-01-25', 'YYYY-MM-DD')); 


INSERT INTO uses VALUES ('640','800001');
INSERT INTO uses VALUES ('640','800002');
INSERT INTO uses VALUES ('640','800003');
INSERT INTO uses VALUES ('640','800004');
INSERT INTO uses VALUES ('641','800001');
INSERT INTO uses VALUES ('641','800002');
INSERT INTO uses VALUES ('641','800012');
INSERT INTO uses VALUES ('641','800010');
INSERT INTO uses VALUES ('641','800011');
INSERT INTO uses VALUES ('642','800006');
INSERT INTO uses VALUES ('642','800008');
INSERT INTO uses VALUES ('643','800009');
INSERT INTO uses VALUES ('643','800001');
INSERT INTO uses VALUES ('644','800001');
INSERT INTO uses VALUES ('644','800002');
INSERT INTO uses VALUES ('645','800003');
INSERT INTO uses VALUES ('646','800004');
INSERT INTO uses VALUES ('646','800003');
INSERT INTO uses VALUES ('647','800008');
INSERT INTO uses VALUES ('647','800010');
INSERT INTO uses VALUES ('648','800010');
INSERT INTO uses VALUES ('648','800011');
INSERT INTO uses VALUES ('648','800012');
INSERT INTO uses VALUES ('649','800013');
INSERT INTO uses VALUES ('649','800010');
INSERT INTO uses VALUES ('650','800001');
INSERT INTO uses VALUES ('651','800002');
INSERT INTO uses VALUES ('651','800003');
INSERT INTO uses VALUES ('652','800001');
INSERT INTO uses VALUES ('652','800008');
INSERT INTO uses VALUES ('653','800009');
INSERT INTO uses VALUES ('654','800001');
INSERT INTO uses VALUES ('655','800002');
INSERT INTO uses VALUES ('656','800003');
INSERT INTO uses VALUES ('656','800001');
INSERT INTO uses VALUES ('657','800002');
INSERT INTO uses VALUES ('658','800008');



INSERT INTO has_skill VALUES ('1002', '120'); 
INSERT INTO has_skill VALUES ('1002', '133'); 

INSERT INTO has_skill VALUES ('1003', '128'); 

INSERT INTO has_skill VALUES ('1004', '133'); 

INSERT INTO has_skill VALUES ('1005', '123'); 
INSERT INTO has_skill VALUES ('1005', '136'); 
INSERT INTO has_skill VALUES ('1005', '121'); 
INSERT INTO has_skill VALUES ('1005', '137'); 
INSERT INTO has_skill VALUES ('1005', '134'); 

INSERT INTO has_skill VALUES ('1006', '120'); 
INSERT INTO has_skill VALUES ('1006', '121'); 
INSERT INTO has_skill VALUES ('1006', '126'); 
INSERT INTO has_skill VALUES ('1006', '124'); 
INSERT INTO has_skill VALUES ('1006', '129'); 
INSERT INTO has_skill VALUES ('1006', '136'); 
INSERT INTO has_skill VALUES ('1006', '132'); 
INSERT INTO has_skill VALUES ('1006', '127'); 
INSERT INTO has_skill VALUES ('1006', '123'); 
INSERT INTO has_skill VALUES ('1006', '122'); 
INSERT INTO has_skill VALUES ('1006', '125'); 
INSERT INTO has_skill VALUES ('1006', '131'); 
INSERT INTO has_skill VALUES ('1006', '135'); 
INSERT INTO has_skill VALUES ('1006', '130'); 
INSERT INTO has_skill VALUES ('1006', '134'); 
INSERT INTO has_skill VALUES ('1006', '137'); 
INSERT INTO has_skill VALUES ('1006', '128'); 
INSERT INTO has_skill VALUES ('1006', '133'); 

INSERT INTO has_skill VALUES ('1007', '129'); 
INSERT INTO has_skill VALUES ('1007', '126'); 
INSERT INTO has_skill VALUES ('1007', '128'); 
INSERT INTO has_skill VALUES ('1007', '133'); 

INSERT INTO has_skill VALUES ('1008', '127'); 
INSERT INTO has_skill VALUES ('1008', '123'); 
INSERT INTO has_skill VALUES ('1008', '135'); 
INSERT INTO has_skill VALUES ('1008', '126'); 
INSERT INTO has_skill VALUES ('1008', '129'); 
INSERT INTO has_skill VALUES ('1008', '121'); 
INSERT INTO has_skill VALUES ('1008', '134'); 
INSERT INTO has_skill VALUES ('1008', '137'); 
INSERT INTO has_skill VALUES ('1008', '136'); 
INSERT INTO has_skill VALUES ('1008', '128'); 

INSERT INTO has_skill VALUES ('1009', '120'); 
INSERT INTO has_skill VALUES ('1009', '124'); 
INSERT INTO has_skill VALUES ('1009', '132'); 
INSERT INTO has_skill VALUES ('1009', '127'); 
INSERT INTO has_skill VALUES ('1009', '125'); 
INSERT INTO has_skill VALUES ('1009', '122'); 
INSERT INTO has_skill VALUES ('1009', '131'); 
INSERT INTO has_skill VALUES ('1009', '130'); 
INSERT INTO has_skill VALUES ('1009', '121'); 
INSERT INTO has_skill VALUES ('1009', '134'); 
INSERT INTO has_skill VALUES ('1009', '135'); 

INSERT INTO has_skill VALUES ('1010', '123'); 
INSERT INTO has_skill VALUES ('1010', '136'); 

INSERT INTO has_skill VALUES ('1011', '121'); 
INSERT INTO has_skill VALUES ('1011', '134'); 

INSERT INTO has_skill VALUES ('1012', '129'); 
INSERT INTO has_skill VALUES ('1012', '126'); 
INSERT INTO has_skill VALUES ('1012', '136'); 
INSERT INTO has_skill VALUES ('1012', '123'); 
INSERT INTO has_skill VALUES ('1012', '122'); 
INSERT INTO has_skill VALUES ('1012', '125'); 
INSERT INTO has_skill VALUES ('1012', '131'); 
INSERT INTO has_skill VALUES ('1012', '135'); 
INSERT INTO has_skill VALUES ('1012', '130'); 
INSERT INTO has_skill VALUES ('1012', '121'); 
INSERT INTO has_skill VALUES ('1012', '134'); 
INSERT INTO has_skill VALUES ('1012', '137'); 

INSERT INTO has_skill VALUES ('1013', '135'); 

INSERT INTO has_skill VALUES ('1014', '122'); 
INSERT INTO has_skill VALUES ('1014', '125'); 
INSERT INTO has_skill VALUES ('1014', '131'); 

INSERT INTO has_skill VALUES ('1015', '124'); 
INSERT INTO has_skill VALUES ('1015', '123'); 
INSERT INTO has_skill VALUES ('1015', '137'); 

INSERT INTO has_skill VALUES ('1016', '130'); 

INSERT INTO has_skill VALUES ('1017', '120'); 
INSERT INTO has_skill VALUES ('1017', '124'); 
INSERT INTO has_skill VALUES ('1017', '127'); 
INSERT INTO has_skill VALUES ('1017', '122'); 
INSERT INTO has_skill VALUES ('1017', '125'); 
INSERT INTO has_skill VALUES ('1017', '131'); 
INSERT INTO has_skill VALUES ('1017', '134'); 

INSERT INTO has_skill VALUES ('1018', '127'); 

INSERT INTO has_skill VALUES ('1019', '129'); 
INSERT INTO has_skill VALUES ('1019', '126'); 
INSERT INTO has_skill VALUES ('1019', '123'); 
INSERT INTO has_skill VALUES ('1019', '124'); 
INSERT INTO has_skill VALUES ('1019', '121'); 
INSERT INTO has_skill VALUES ('1019', '130'); 
INSERT INTO has_skill VALUES ('1019', '134'); 
INSERT INTO has_skill VALUES ('1019', '137'); 

INSERT INTO has_skill VALUES ('1020', '126'); 

INSERT INTO has_skill VALUES ('1021', '124'); 
INSERT INTO has_skill VALUES ('1021', '123'); 
INSERT INTO has_skill VALUES ('1021', '134'); 
INSERT INTO has_skill VALUES ('1021', '121'); 
INSERT INTO has_skill VALUES ('1021', '137'); 
INSERT INTO has_skill VALUES ('1021', '127'); 
INSERT INTO has_skill VALUES ('1021', '122'); 
INSERT INTO has_skill VALUES ('1021', '125'); 
INSERT INTO has_skill VALUES ('1021', '131'); 
INSERT INTO has_skill VALUES ('1021', '130'); 

INSERT INTO has_skill VALUES ('1022', '129'); 

INSERT INTO has_skill VALUES ('1023', '136'); 
INSERT INTO has_skill VALUES ('1023', '129'); 
INSERT INTO has_skill VALUES ('1023', '126'); 

INSERT INTO has_skill VALUES ('1024', '137'); 
INSERT INTO has_skill VALUES ('1024', '136'); 

INSERT INTO has_skill VALUES ('1025', '129'); 
INSERT INTO has_skill VALUES ('1025', '126'); 
INSERT INTO has_skill VALUES ('1025', '121'); 
INSERT INTO has_skill VALUES ('1025', '134'); 
INSERT INTO has_skill VALUES ('1025', '137'); 
INSERT INTO has_skill VALUES ('1025', '136'); 
INSERT INTO has_skill VALUES ('1025', '130'); 
INSERT INTO has_skill VALUES ('1025', '123'); 


INSERT INTO orders VALUES ('41421', '000001','2050');
INSERT INTO orders VALUES ('41422', '000003','21050');
INSERT INTO orders VALUES ('41423', '000007','1050');
INSERT INTO orders VALUES ('41424', '000006','150');
INSERT INTO orders VALUES ('41425', '000008','2010');
INSERT INTO orders VALUES ('41426', '000012','110');
INSERT INTO orders VALUES ('41427', '000015','2000');
INSERT INTO orders VALUES ('41428', '000011','2023');
INSERT INTO orders VALUES ('41429', '000002','20502');
INSERT INTO orders VALUES ('41430', '000004','2050');
INSERT INTO orders VALUES ('41431', '000018','75000000');
INSERT INTO orders VALUES ('41422', '000009','2050');
INSERT INTO orders VALUES ('41423', '000014','2052');
INSERT INTO orders VALUES ('41422', '000010','2011');
INSERT INTO orders VALUES ('41424', '000004','2000');
INSERT INTO orders VALUES ('41425', '000005','20100');
INSERT INTO orders VALUES ('41426', '000010','20222');
INSERT INTO orders VALUES ('41427', '000013','200');
INSERT INTO orders VALUES ('41428', '000017','20000');


COMMIT;