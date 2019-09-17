
clear screen;

drop table Patient cascade constraints;


create table Patient (
	p_id int, 
	p_name varchar2(20), 
	p_phone number(12), 
	gender varchar2(7), 
	age int,
	weight float,
        PRIMARY KEY(p_id)); 


insert into patient (p_id, p_name, p_phone, gender, age, weight) values (1, 'Mohsena Ashraf', '01685015080', 'Female', 25, 54); 
insert into patient (p_id, p_name, p_phone, gender, age, weight) values (2, 'Mahee Mashrur', '01521494774', 'Male', 23, 52);
insert into patient (p_id, p_name, p_phone, gender, age, weight) values (3, 'Atiqul islam', '01766999954', 'Male', 23, 57);
insert into patient (p_id, p_name, p_phone, gender, age, weight) values (4, 'Shovan Chowdhury', '01766999984', 'Male', 21, 67);
insert into patient (p_id, p_name, p_phone, gender, age, weight) values (5, 'Ria Chowdhury', '01766599924', 'Female', 12, 47);
insert into patient (p_id, p_name, p_phone, gender, age, weight) values (6, 'Pia Chowdhury', '01961697961', 'Female', 9, 62);

commit;
 
