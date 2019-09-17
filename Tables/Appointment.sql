clear screen;

DROP TABLE Appointment CASCADE CONSTRAINTS;

CREATE TABLE Appointment(
	D_id int, 
        P_id int,
        Serial int,
	A_Date date,
        PRIMARY KEY(Serial)); 


insert into Appointment (Serial,D_id,P_id,A_Date) values (1, 2, 1, '11-july-2018'); 
insert into Appointment (Serial,D_id,P_id,A_Date) values (2, 2, 2, '11-jun-2018'); 
insert into Appointment (Serial,D_id,P_id,A_Date) values (3, 1, 3, '11-may-2018'); 
insert into Appointment (Serial,D_id,P_id,A_Date) values (4, 3, 4, '10-july-2018'); 
insert into Appointment (Serial,D_id,P_id,A_Date) values (5, 3, 5, '12-july-2018'); 
insert into Appointment (Serial,D_id,P_id,A_Date) values (6, 2, 6, '18-june-2018'); 

commit;