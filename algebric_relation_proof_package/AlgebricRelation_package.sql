set serveroutput on;
CREATE OR REPLACE PACKAGE algebric_relation AS
	PROCEDURE algebric_relation_left;
	PROCEDURE algebric_relation_right;
END algebric_relation;
/

CREATE OR REPLACE PACKAGE BODY algebric_relation AS
	PROCEDURE algebric_relation_left
is
	doctor_id int;
	doctor_name doctor.d_name%TYPE;
	
	cursor cur is select d_id,d_name from doctor1 where d_name='Dr. Mamun'
	minus select d_id,d_name from doctor2 where d_name='Dr. Asif';

begin
	open cur;
	loop
		fetch cur into doctor_id,doctor_name;
		exit when cur%notFound;
		dbms_output.put_line('Doctor Id: '||(doctor_id)||'   and Doctor Name: '||(doctor_name));
	end loop;
	close cur;
end algebric_relation_left;

	 procedure algebric_relation_right
is
	doctor_id int;
	doctor_name doctor.d_name%TYPE;
	
	cursor cur is Select d_id,d_name from(select d_id,d_name from doctor1
        minus select d_id,d_name from doctor2) where d_name='Dr. Mamun';

begin
	open cur;
	loop
		fetch cur into doctor_id,doctor_name;
		exit when cur%notFound;
		dbms_output.put_line('Doctor Id: '||(doctor_id)||'   and Doctor Name: '||(doctor_name));
	end loop;
	close cur;
end algebric_relation_right;
end algebric_relation;
/

begin
	DBMS_OUTPUT.PUT_LINE('FOR LEFT HAND SIDE: ');
	algebric_relation_left;
	DBMS_OUTPUT.PUT_LINE('FOR RIGHT HAND SIDE: ');
	algebric_relation_right;
end;
/