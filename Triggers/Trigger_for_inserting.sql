SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER ai_patient
AFTER INSERT OR DELETE ON patient
REFERENCING OLD AS o NEW AS n
FOR EACH ROW

DECLARE 

BEGIN 
   	IF INSERTING THEN
		IF :n.age < 15 THEN
			insert into patient1 values (:n.p_id, :n.p_name, :n.p_phone, :n.gender, :n.age, :n.weight);
			DBMS_OUTPUT.PUT_LINE('New value inserted in Patient1.');
		ELSE
			insert into patient2 values (:n.p_id, :n.p_name, :n.p_phone, :n.gender, :n.age, :n.weight);
			DBMS_OUTPUT.PUT_LINE('New value inserted in Patient2.');
		END IF;

	
	ELSIF DELETING THEN
		IF :o.age<15 THEN
			delete from patient1 where p_id = :o.p_id;
			DBMS_OUTPUT.PUT_LINE('Value deleted from Patient1.');
		ELSE
			delete from patient2 where p_id = :o.p_id;
			DBMS_OUTPUT.PUT_LINE('Value deleted from Patient2.');
		END IF; 

	END IF;
   
   
END; 
/