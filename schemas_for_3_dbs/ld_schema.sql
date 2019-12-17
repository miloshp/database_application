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
c_code VARCHAR(5),
title VARCHAR(100),
level_type VARCHAR(8),
description VARCHAR(180),
status VARCHAR(9),
retail_price VARCHAR(5),
PRIMARY KEY (c_code)
);

CREATE TABLE section(
sec_no VARCHAR(4),
c_code VARCHAR(5),
complete_date VARCHAR(10),
year VARCHAR(20),
offered_by VARCHAR(40),
format VARCHAR(16),
price VARCHAR (4),
PRIMARY KEY (sec_no),
FOREIGN KEY (c_code) REFERENCES course
);

CREATE TABLE skill(
sk_code VARCHAR(4),
title VARCHAR(45),
description VARCHAR(180),
level_type VARCHAR(20),
PRIMARY KEY (sk_code)
);

CREATE TABLE gics(
ind_id VARCHAR(8),
ind_title VARCHAR(35),
level_type VARCHAR(20),
description VARCHAR(600),
parent_id VARCHAR(8),
PRIMARY KEY (ind_id)
);

CREATE TABLE company(
comp_id VARCHAR(6),
address VARCHAR(18),
zip_code NUMERIC(5),
website VARCHAR(20),
industry_group VARCHAR(8),
PRIMARY KEY (comp_id),
FOREIGN KEY (industry_group) REFERENCES gics
);

CREATE TABLE position(
pos_code VARCHAR(8),
title VARCHAR(40),
description VARCHAR(200),
pay_range_high VARCHAR(4),
pay_range_low VARCHAR(4),
PRIMARY KEY (pos_code)
);

CREATE TABLE job(
job_code VARCHAR(7),
emp_mode VARCHAR(10),
pay_rate NUMERIC(6),
pay_type VARCHAR(6),
pos_code VARCHAR(7),
comp_id VARCHAR(6),
PRIMARY KEY (job_code),
FOREIGN KEY (pos_code) REFERENCES position,
FOREIGN KEY (comp_id) REFERENCES company
);




CREATE TABLE has_skill(
per_id VARCHAR(8),
sk_code VARCHAR(4),
PRIMARY KEY (per_id,sk_code),
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE takes(
per_id VARCHAR(8),
c_code VARCHAR(5),
sec_no VARCHAR(5),
complete_date VARCHAR(10),
PRIMARY KEY (per_id, sec_no),
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (sec_no) REFERENCES section
);

CREATE TABLE prereq(
c_code VARCHAR(8),
required_code VARCHAR(8),
PRIMARY KEY (c_code, required_code),
FOREIGN KEY (c_code) REFERENCES course
);

CREATE TABLE teaches(
c_code VARCHAR(8),
sk_code VARCHAR(4),
PRIMARY KEY (c_code, sk_code),
FOREIGN KEY (c_code) REFERENCES course,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE req_by_job(
job_code VARCHAR(7),
sk_code VARCHAR(4),
PRIMARY KEY (job_code, sk_code),
FOREIGN KEY (job_code) REFERENCES job,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE requires(
pos_code VARCHAR(8),
sk_code VARCHAR(4),
PRIMARY KEY (pos_code, sk_code),
FOREIGN KEY (pos_code) REFERENCES position,
FOREIGN KEY (sk_code) REFERENCES skill
);

CREATE TABLE works(
per_id VARCHAR(8),
job_code VARCHAR(7),
start_date VARCHAR(10),
end_date VARCHAR(10),
PRIMARY KEY (per_id, job_code),
FOREIGN KEY (per_id) REFERENCES person,
FOREIGN KEY (job_code) REFERENCES job
);

CREATE TABLE sub_industry(
comp_id VARCHAR(6),
ind_id VARCHAR(8),
PRIMARY KEY (comp_id, ind_id),
FOREIGN KEY (comp_id) REFERENCES company,
FOREIGN KEY (ind_id) REFERENCES gics
);


CREATE TABLE hires(
job_code VARCHAR(7),
comp_id VARCHAR(6) NOT NULL,
PRIMARY KEY (job_code, comp_id),
FOREIGN KEY (job_code) REFERENCES job,
FOREIGN KEY (comp_id) REFERENCES company
);




COMMIT;
