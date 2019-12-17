CREATE TABLE person(
per_id VARCHAR(3),
fName VARCHAR(18),
lName VARCHAR(18),
zip_code NUMERIC(5),
email VARCHAR(25),
gender VARCHAR(6),
phone VARCHAR(12),
PRIMARY KEY (per_id)
);

CREATE TABLE course(
c_code VARCHAR(20) NOT NULL,
title VARCHAR(100),
level_type VARCHAR(15),
description VARCHAR(180),
status VARCHAR(10),
retail_price VARCHAR(5),
PRIMARY KEY (c_code)
);


CREATE TABLE section(
sec_no VARCHAR(20),
c_code VARCHAR(20),
complete_date VARCHAR(20),
year VARCHAR(25),
offered_by VARCHAR(40),
format VARCHAR(20),
price VARCHAR (20),
PRIMARY KEY (sec_no),
FOREIGN KEY (c_code) REFERENCES course
);


CREATE TABLE skill(
sk_code VARCHAR(20),
title VARCHAR(25),
description VARCHAR(140),
level_type VARCHAR(20),
PRIMARY KEY (sk_code)
);

CREATE TABLE position(
pos_code VARCHAR(10),
title VARCHAR(30),
description VARCHAR(140),
pay_range_high VARCHAR(20), /* high range of either hourly wage&*/
pay_range_low VARCHAR(20), /*low range of either hourly wage*/
PRIMARY KEY (pos_code)
);

CREATE TABLE factory(
fac_id VARCHAR(8),
fac_name VARCHAR(35),
address VARCHAR(40),
zip_code NUMERIC(5),
phone VARCHAR(12),
manager VARCHAR(20),
PRIMARY KEY (fac_id)
);


CREATE TABLE job(
job_code VARCHAR(20),
emp_mode VARCHAR(20),
pay_rate NUMERIC(6),
pay_type VARCHAR(20),
comp_name VARCHAR(25),
pos_code VARCHAR(10),
per_id VARCHAR(3),
fac_id VARCHAR(8),
PRIMARY KEY (job_code),
FOREIGN KEY (pos_code) REFERENCES position,
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (fac_id) REFERENCES factory
);





CREATE TABLE product(
p_code VARCHAR(8),
p_name VARCHAR(35),
description VARCHAR(400),
quantity NUMERIC(15),
avg_cost VARCHAR(30),
PRIMARY KEY (p_code)
);


CREATE TABLE materials(
m_code VARCHAR(12),
m_name VARCHAR(30),
quantity NUMERIC(15),
min_level VARCHAR(25),
PRIMARY KEY (m_code)
);


CREATE TABLE customer(
cust_id VARCHAR(12),
contact_fName VARCHAR(30),
contact_lName VARCHAR(30),
zip_code VARCHAR(30),
contact_email VARCHAR(30),
phone VARCHAR(30),
PRIMARY KEY (cust_id)
);


CREATE TABLE supplier(
sup_id VARCHAR(12),
website VARCHAR(30),
contact_email VARCHAR(40),
PRIMARY KEY (sup_id)
);

CREATE TABLE purchase( 
pur_num VARCHAR(30),
sup_id VARCHAR(30),
sup_order_num VARCHAR(45),
book_date VARCHAR(25),
pay_date VARCHAR(30),
note VARCHAR(50),
PRIMARY KEY (pur_num),
FOREIGN KEY (sup_id) REFERENCES supplier
);

CREATE TABLE teaches(
c_code VARCHAR(20),
sk_code VARCHAR(20),
PRIMARY KEY (c_code, sk_code),
FOREIGN KEY (c_code) REFERENCES course,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE requires(
pos_code VARCHAR(10),
sk_code VARCHAR(20),
PRIMARY KEY (pos_code, sk_code),
FOREIGN KEY (pos_code) REFERENCES position,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE req_by_job(
job_code VARCHAR(20),
sk_code VARCHAR(20),
PRIMARY KEY (job_code, sk_code),
FOREIGN KEY (job_code) REFERENCES job,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE has_skill(
sk_code VARCHAR(20),
per_id VARCHAR(20),
PRIMARY KEY (sk_code, per_id),
FOREIGN KEY (sk_code) REFERENCES skill,
FOREIGN KEY (per_id) REFERENCES person
);

CREATE TABLE prereq(
c_code VARCHAR(20),
PRIMARY KEY (c_code),
FOREIGN KEY (c_code) REFERENCES course
);

CREATE TABLE takes(
per_id VARCHAR(8),
c_code VARCHAR(20),
sec_no VARCHAR(20),
complete_date VARCHAR(20),
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (c_code) REFERENCES course,
FOREIGN KEY (sec_no) REFERENCES section
);



CREATE TABLE contract(
contract_id VARCHAR(12),
cust_id VARCHAR(12),
sale_date VARCHAR(20),
sale_amount VARCHAR(30),
pay_schedule VARCHAR(80),
PRIMARY KEY (contract_id),
FOREIGN KEY (cust_id) REFERENCES customer
);


CREATE TABLE line_item(
contract_id VARCHAR(12),
p_code VARCHAR(8),
quantity NUMERIC(15),
PRIMARY KEY (contract_id, p_code),
FOREIGN KEY (contract_id) REFERENCES contract,
FOREIGN KEY (p_code) REFERENCES product
);


CREATE TABLE makes(
p_code VARCHAR(8),
fac_id VARCHAR(8),
PRIMARY KEY (p_code, fac_id),
FOREIGN KEY (p_code) REFERENCES product,
FOREIGN KEY (fac_id) REFERENCES factory
);

CREATE TABLE orders(
sup_id VARCHAR(8),
pur_num VARCHAR(30),
sale VARCHAR(15),
PRIMARY KEY (sup_id, pur_num),
FOREIGN KEY (sup_id) REFERENCES supplier,
FOREIGN KEY (pur_num) REFERENCES purchase
);

CREATE TABLE uses(
p_code VARCHAR(8),
m_code VARCHAR(12),
PRIMARY KEY (p_code, m_code),
FOREIGN KEY (p_code) REFERENCES product,
FOREIGN KEY (m_code) REFERENCES materials
);

CREATE TABLE purchase_line(
pur_num VARCHAR(30),
m_code VARCHAR(12),
quantity NUMERIC(15),
PRIMARY KEY (pur_num, m_code),
FOREIGN KEY (pur_num) REFERENCES purchase,
FOREIGN KEY (m_code) REFERENCES materials
);


COMMIT;