set serveroutput on;
declare
	c varchar2(20);
	d date;
	patient_id number;
	doctor_id number;

	--cursor cur is select * from 
begin
	c:=shift_appointment('Dr. Nasim','10-july-2018',d,patient_Id,doctor_id);
	Dbms_output.put_line('patients NAme is: ' || (c)|| '   '||(d)||'  '||(Doctor_Id)||' '||(Patient_Id));

	Update appointment set a_date='20-july-2018' where d_id=Doctor_id and p_id=Patient_id and a_date=d;
end;
/