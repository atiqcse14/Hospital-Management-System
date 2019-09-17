set serveroutput on;

declare


--for patient table

cursor p_cur1 is
select p_id, p_name, p_phone, gender, age, weight from patient
where age < 15;

cursor p_cur2 is
select p_id, p_name, p_phone, gender, age, weight from patient
where age >= 15;

pat_id int; 
pat_name varchar2(20); 
pat_phone number(12);
pat_gender varchar2(7); 
pat_age int;
pat_weight int;

begin
	
	open p_cur1;
	loop
		fetch p_cur1 into pat_id,pat_name,pat_phone,pat_gender,pat_age,pat_weight;
		exit when p_cur1%notFound;

		insert into patient1 values(pat_id,pat_name,pat_phone,pat_gender,pat_age,pat_weight);
	end loop;
	close p_cur1;

	open p_cur2;
	loop
		fetch p_cur2 into pat_id,pat_name,pat_phone,pat_gender,pat_age,pat_weight;
		exit when p_cur2%notFound;

		insert into patient2 values(pat_id,pat_name,pat_phone,pat_gender,pat_age,pat_weight);
	end loop;
	close p_cur2;

end;
/