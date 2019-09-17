SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER au_patient
AFTER UPDATE ON patient
REFERENCING OLD AS o NEW AS n
FOR EACH ROW

DECLARE 

BEGIN 
   	IF UPDATING THEN
		IF :n.age < 15 and :o.age < 15 THEN
			DELETE FROM patient1 where p_id = :o.p_id;
			INSERT INTO patient1 VALUES(:o.p_id, :o.p_name, :o.p_phone, :o.gender, :n.age, :o.weight);
			DBMS_OUTPUT.PUT_LINE('VALUE UPDATED FOR PATIENT1');

		ELSIF :n.age >= 15 and :o.age <15 THEN
			DELETE FROM patient1 where p_id = :o.p_id;
			INSERT INTO patient2 VALUES(:o.p_id, :o.p_name, :o.p_phone, :o.gender, :n.age, :o.weight);
			DBMS_OUTPUT.PUT_LINE('VALUE UPDATED FOR PATIENT2');

		ELSIF :n.age < 15 and :o.age >=15 THEN
			DELETE FROM patient2 where p_id = :o.p_id;
			INSERT INTO patient1 VALUES(:o.p_id, :o.p_name, :o.p_phone, :o.gender, :n.age, :o.weight);
			DBMS_OUTPUT.PUT_LINE('VALUE UPDATED FOR PATIENT1');

		ELSIF :n.age >= 15 and :o.age >=15 THEN
			DELETE FROM patient2 where p_id = :o.p_id;
			INSERT INTO patient2 VALUES(:o.p_id, :o.p_name, :o.p_phone, :o.gender, :n.age, :o.weight);
			DBMS_OUTPUT.PUT_LINE('VALUE UPDATED FOR PATIENT2');


	END IF;
   END IF;
   
END; 
/