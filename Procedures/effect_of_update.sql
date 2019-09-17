create or replace procedure effect_of_update(doctor_id in int, dept in doctor.department%TYPE)
is
	Doctor_name varchar2(30);
	Doctor_phone varchar2(12);
	
	cursor cur is select d_name,d_phone from doctor1 where doctor1.d_id=doctor_id;
begin
	open cur;
	loop
		fetch cur into doctor_name,doctor_phone;
		exit when cur%notFound;
		Insert into doctor2 values(doctor_id,doctor_name,dept,doctor_phone);
		Delete from doctor1 where doctor1.d_id=doctor_id;
	end loop;
	close cur;
end effect_of_update;
/	
begin
	effect_of_update(9,'cardiologist');
end;
/