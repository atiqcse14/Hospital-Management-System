clear screen;

drop table room cascade constraints;

create table room (
	P_id int,
        Room_no int,
	Status varchar2(30),
	Type varchar2(20),
        PRIMARY KEY(Room_no)); 


insert into room(Room_no,P_id,Status,Type) values (1, 2, 'FULL','CABIN'); 
insert into room(Room_no,P_id,Status,Type) values (2, 3, 'FULL', 'WARD'); 
insert into room(Room_no,P_id,Status,Type) values (3, 1, 'NULL', 'VIP'); 
insert into room (Room_no,P_id,Status,Type) values (4, 5, 'FULL', 'WARD'); 
insert into room(Room_no,P_id,Status,Type) values (5, 4, 'FULL','CABIN'); 
insert into room(Room_no,P_id,Status,Type) values (6, 6, 'FULL', 'WARD'); 
insert into room(Room_no,P_id,Status,Type) values (7, 7, 'NULL', 'VIP'); 
insert into room (Room_no,P_id,Status,Type) values (8, 8, 'FULL', 'WARD'); 




commit;
