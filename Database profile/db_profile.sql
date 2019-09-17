set serveroutput on;
create or replace procedure db_profile
is
	patient_id int;
	patient_name varchar2(20);
	disease_name labreport.disease%TYPE;
	counter int:=0;
	card_r int:=0;
	card_s int:=0;
	dis_r int:=0;
	proof int:=0;
	
	cursor cur is select labreport.p_id,labreport.p_name,disease 
	from inpatient inner join labreport on labreport.p_id=inpatient.p_id;

begin
	open cur;
	loop
		fetch cur into patient_id,patient_name,disease_name;
		exit when cur%notFound;
		counter:=counter+1;
		dbms_output.put_line('Patient ID: '||(patient_id)||'   and Patient Name: '||(patient_name)|| ' and disease: '||(disease_name));
	end loop;
	dbms_output.put_line('card of result table is: '||(counter));
	close cur;

	select count(*) into card_R from inpatient;
	dbms_output.put_line('card of R(Inpatient) is:'||(card_r));

	select count(*) into card_S from labreport;
	dbms_output.put_line('card of S(Labreport) is:'||(card_s));

	select distinct count(p_id) into dis_r from inpatient;
	dbms_output.put_line('distinct-VAL(A[R]) is:'||(dis_r));
	
	proof:=(card_r*card_s)/dis_r;
	
	if proof = counter
	then
	dbms_output.put_line('card (T) = row * (card(R) * card (S)) is proved.');
	else
	dbms_output.put_line('card (T) = row * (card(R) * card (S)) is not proved.');
	end if;
	

end db_profile;
/
begin
	db_profile;
end;
/