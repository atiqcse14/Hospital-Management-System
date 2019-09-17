
clear screen;

drop table bill cascade constraints;


create table bill (
	bill_no int,
	p_id int, 
	room_charge int,
	medicine_charge int, 
	operation_charge int,
	doctor_fee int,
	type varchar2(20),
        PRIMARY KEY(bill_no)); 


insert into bill (bill_no, p_id, room_charge, medicine_charge, operation_charge, doctor_fee,type) values (1, 2, 500, 200, 25000, 500,'cheaper'); 

insert into bill (bill_no, p_id, room_charge, medicine_charge, operation_charge, doctor_fee,type) values (2, 1, 500, 600, 35000, 500,'cheaper');

insert into bill (bill_no, p_id, room_charge, medicine_charge, operation_charge, doctor_fee,type) values (3, 5, 700, 250, 50000, 500,'expensive');

insert into bill (bill_no, p_id, room_charge, medicine_charge, operation_charge, doctor_fee,type) values (4, 4, 500, 200, 55000, 800,'expensive');

insert into bill (bill_no, p_id, room_charge, medicine_charge, operation_charge, doctor_fee,type) values (5, 3, 1500, 1200, 25000, 1500,'expensive');

commit;
 
