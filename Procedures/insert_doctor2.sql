set serveroutput on;
create or replace procedure insert_doctor2(searchDept IN doctor.department%TYPE)
is
	Doctor_id int;
	Doctor_name varchar2(30);
	Doctor_department varchar2(20);
	Doctor_phone varchar2(12);
	
	cursor cur is
	select d_id,d_name,department,d_phone from doctor where department=searchDept;
begin
	open cur;
	loop
		fetch cur into doctor_id,doctor_name,doctor_department,doctor_phone;
		exit when cur%notFound;
		Insert into doctor2 values(doctor_id,doctor_name,doctor_department,doctor_phone);
	end loop;
	close cur;
end insert_doctor2;
/

begin
	insert_doctor2('Cardiologist');
end;
/