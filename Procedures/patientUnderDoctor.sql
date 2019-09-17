set serveroutput on;
create or replace procedure patientUnderDoctor(searchName IN varchar2)
is
	resultName varchar(100);
	
	cursor cur is
	select distinct p_name from patient where patient.p_id IN
	(SELECT P_ID FROM APPOINTMENT WHERE APPOINTMENT.D_ID=
	(SELECT D_ID FROM DOCTOR WHERE D_NAME=searchName));

begin
	open cur;
	loop
		fetch cur into resultName;
		exit when cur%notFound;
		DBMS_OUTPUT.PUT_LINE(resultName);
	end loop;
	close cur;
end patientUnderDoctor;
/

begin
	patientUnderDoctor('Dr. Mahir');
end;
/