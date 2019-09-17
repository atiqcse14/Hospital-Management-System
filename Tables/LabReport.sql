
clear screen;

drop table LabReport cascade constraints;

create table LabReport (
	lab_no int,
	p_id int,
	p_name varchar2(20),
	d_id int,
	disease varchar2(20), 
	test_catagory varchar2(20), 
	r_date date,
        r_time varchar2(10),
	PRIMARY KEY(lab_no)); 


insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (1, 1, 'Mohsena Ashraf',1, 'cancer', 'Blood test', '10-Jan-2018', '03:35 pm'); 
insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (2, 1,'Mohsena Ashraf', 2, 'tumor', 'Blood test', '10-Jan-2018', '03:45 pm'); 
insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (3, 2, 'Mahee Mashrur', 2, 'fever', 'Blood test', '13-Jan-2018', '03:57 pm'); 
insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (4, 3, 'Atiqul islam', 1, 'cancer', 'Blood test', '18-Jan-2018', '04:21 pm'); 
insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (5, 3, 'Atiqul islam', 1, 'tumor', 'Blood test', '21-Jan-2018', '04:45 pm'); 
insert into LabReport (lab_no, p_id, p_name, d_id, disease, test_catagory, r_date, r_time) values (6, 3, 'Atiqul islam', 1, 'tumor', 'Blood test', '21-Jan-2018', '04:45 pm'); 


commit;
 
