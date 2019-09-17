
clear screen;

drop table OutPatient cascade constraints;

create table OutPatient (
	p_id int,
	d_id int,
	o_date date); 


insert into OutPatient (p_id, d_id, o_date) values (1, 2, '10-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (2, 2, '16-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (3, 1, '15-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (4, 3, '13-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (5, 2, '12-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (6, 1, '11-Jan-2018');
insert into OutPatient (p_id, d_id, o_date) values (7, 3, '10-Jan-2018');

commit;

