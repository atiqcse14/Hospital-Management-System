set serveroutput on;
set verify off;

ACCEPT option NUMBER PROMPT 'Press 1 to INSERT , Press 2 to DELETE: , Press 3 to UPDATE: ';
ACCEPT input_id NUMBER PROMPT 'Enter the patient id to be inserted or deleted or updated: ';

declare
	x NUMBER := &option;
	id NUMBER := &input_id;	
begin
	IF x = 1 THEN
		INSERT INTO PATIENT VALUES(id,'Emile Watson',01730991188,'Female',13,80);
	ELSIF x =2 THEN
		DELETE FROM patient WHERE p_id = id;
	ELSIF x =3 THEN
		UPDATE patient SET AGE=13 WHERE p_id=id;
	END IF;
end;
/
commit;