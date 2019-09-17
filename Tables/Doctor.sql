
clear screen;

drop table doctor cascade constraints;

create table doctor (
	D_id int,
	D_name varchar2(30),
	Department varchar2(20),
	D_phone varchar2(12),
        PRIMARY KEY(D_id)); 


insert into doctor (D_id,D_name,Department,D_phone) values (1, 'Dr. Nihal', 'ENT','123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (2, 'Dr. Mahir', 'medicine', '456'); 
insert into doctor (D_id,D_name,Department,D_phone) values (3, 'Dr. Nasim', 'SKIN', '456'); 
insert into doctor (D_id,D_name,Department,D_phone) values (4, 'Dr. Faiz', 'Cardiologist', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (5, 'Dr. Saad', 'Cardiologist', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (6, 'Dr. Abdullah', 'Cardiologist', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (7, 'Dr. Asif', 'Cardiologist', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (8, 'Dr. Amir', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (9, 'Dr. Belal', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (10, 'Dr. Kabir', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (11, 'Dr. Mamun', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (12, 'Dr. Mamun', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (13, 'Dr. Mamun', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (14, 'Dr. Mamun', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (15, 'Dr. Asif', 'medicine', '123'); 
insert into doctor (D_id,D_name,Department,D_phone) values (16, 'Dr. Asif', 'medicine', '123'); 



commit;

