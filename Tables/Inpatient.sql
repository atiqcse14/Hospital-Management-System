clear screen;

drop table InPatient cascade constraints;

create table InPatient (
	P_id int,
	P_name varchar2(20),
        Room_no int,
	DateOfAdmission date,
	DateOfDischarge date);

insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (1, 2, 'Mahee Mashrur','11-july-2018','12-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (2, 3, 'Atiqul islam','12-july-2018','13-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (3, 1, 'Mohsena Ashraf','11-july-2018','14-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (4, 4, 'Shovan Chowdhury','15-july-2018','16-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (5, 6, 'Pia Chowdhury', '11-june-2018','12-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (6, 7, 'Ria Chowdhury','13-july-2018','11-dec-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (7, 5, 'Atiqul islam', '22-may-2018','14-july-2018'); 
insert into InPatient(Room_no,P_id,P_name,DateOfAdmission,DateOfDischarge) values (8, 8, 'Atiqul islam', '15-june-2018','16-july-2018'); 


commit;
