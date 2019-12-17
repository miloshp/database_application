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
c_code VARCHAR(20),
title VARCHAR(45),
level_type VARCHAR(15),
description VARCHAR(100),
status VARCHAR(7),
retail_price VARCHAR(20),
PRIMARY KEY (c_code)
);


CREATE TABLE section(
sec_no VARCHAR(20),
c_code VARCHAR(20),
complete_date VARCHAR(20),
year VARCHAR(25),
offered_by VARCHAR(25),
format VARCHAR(20),
price VARCHAR (20),
PRIMARY KEY (sec_no),
FOREIGN KEY (c_code) REFERENCES course
);


CREATE TABLE skill(
sk_code VARCHAR(20),
title VARCHAR(35),
description VARCHAR(70),
level_type VARCHAR(20),
PRIMARY KEY (sk_code)
);

CREATE TABLE position(
pos_code VARCHAR(10),
title VARCHAR(45),
description VARCHAR(100),
pay_range_high VARCHAR(20),
pay_range_low VARCHAR(20),
PRIMARY KEY (pos_code)
);

CREATE TABLE store(
store_id VARCHAR(7),
address VARCHAR(25),
zip_code NUMERIC(5),
phone NUMERIC(12),
PRIMARY KEY (store_id)
);

CREATE TABLE job(
job_code VARCHAR(6),
emp_mode VARCHAR(20),
pay_rate NUMERIC(6),
pay_type VARCHAR(6),
store_id VARCHAR(25),
pos_code VARCHAR(10),
per_id VARCHAR(3),
PRIMARY KEY (job_code),
FOREIGN KEY (store_id) REFERENCES store,
FOREIGN KEY (pos_code) REFERENCES position,
FOREIGN KEY (per_id) REFERENCES person
);


CREATE TABLE inventory( 
item_num VARCHAR(3),
unit VARCHAR(20),
description VARCHAR(100),
inv_quantity NUMERIC(3),
shelf_title VARCHAR(3),
avg_cost VARCHAR(4),
exp_date VARCHAR(20),
quantity_min VARCHAR(4),
shelf_code NUMERIC(15),
PRIMARY KEY (item_num)
);

CREATE TABLE supplier(
sup_id VARCHAR(6),
website VARCHAR(30),
contact_email VARCHAR(31),
PRIMARY KEY (sup_id)
);

CREATE TABLE line_item(
pur_num VARCHAR(6),
item_num VARCHAR(3),
pur_quantity NUMERIC(4),
unit_cost VARCHAR(4),
PRIMARY KEY (pur_num),
FOREIGN KEY (item_num) REFERENCES inventory
);

CREATE TABLE account_payable(
acc_id VARCHAR(6),
balance VARCHAR(20),
sup_id VARCHAR(6),
pur_num VARCHAR(6),
PRIMARY KEY (acc_id),
FOREIGN KEY (sup_id) REFERENCES supplier,
FOREIGN KEY (pur_num) REFERENCES line_item
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
job_code VARCHAR(6),
sk_code VARCHAR(20),
PRIMARY KEY (job_code, sk_code),
FOREIGN KEY (job_code) REFERENCES job,
FOREIGN KEY (sk_code) REFERENCES skill
);


CREATE TABLE prereq(
c_code VARCHAR(20),
PRIMARY KEY (c_code),
FOREIGN KEY (c_code) REFERENCES course
);


CREATE TABLE sales(
store_id VARCHAR(7),
item_num VARCHAR(3),
price VARCHAR(4),
sale_date VARCHAR(10),
sale_quantity VARCHAR(3),
PRIMARY KEY (store_id, item_num),
FOREIGN KEY (store_id) REFERENCES store,
FOREIGN KEY (item_num) REFERENCES inventory
);

CREATE TABLE payment_record(
pur_num VARCHAR(6),
acc_id VARCHAR(20),
pay_date VARCHAR(20),
amount_paid VARCHAR(5),
trans_type VARCHAR(20),
PRIMARY KEY (pur_num, acc_id),
FOREIGN KEY (pur_num) REFERENCES line_item,
FOREIGN KEY (acc_id) REFERENCES account_payable
);


CREATE TABLE takes(
per_id VARCHAR(8),
sec_no VARCHAR(5),
c_code VARCHAR(5),
complete_date VARCHAR(10),
PRIMARY KEY (per_id, sec_no),
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (sec_no) REFERENCES section
);


CREATE TABLE has_skill(
sk_code VARCHAR(20),
per_id VARCHAR(20),
PRIMARY KEY (sk_code, per_id),
FOREIGN KEY (sk_code) REFERENCES skill,
FOREIGN KEY (per_id) REFERENCES person
);

COMMIT;
