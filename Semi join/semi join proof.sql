set serveroutput on;
create or replace package semi_join_proof as
	procedure semi_join_right;
	procedure semi_join_left;
end semi_join_proof;
/

create or replace package body semi_join_proof AS
	procedure semi_join_right
is
	doctor_id_l int;
	n_disease labreport.disease%TYPE;
	patient_id labreport.p_id%TYPE;
	patient_name varchar2(30);
	l_no labreport.Lab_no%TYPE;
	test_cat labreport.test_Catagory%TYPE;
	d labreport.r_date%TYPE;
	t labreport.r_time%TYPE;
	d2 outpatient.o_date%TYPE;
	doctor_id_o int;

 
	
	cursor cur is  select * from(select * from labreport
	WHERE EXISTS (SELECT p_id  FROM outpatient
	WHERE labreport.p_id=outpatient.p_id))s inner join outpatient on s.p_id=outpatient.p_id;


begin
	open cur;
	DBMS_OUTPUT.PUT_LINE('LAB_NO  PATIENT ID(L)  PATIENT NAME    DOCTOR_ID(L)   DISEASE   TEST_CATEGORY     DATE(L)       TIME      PATIENT ID(O)  DOCTOR ID(O)    DATE(O)');
	loop
		fetch cur into l_no,patient_id,patient_name,doctor_id_l,n_disease,test_cat,d,t,patient_id,doctor_id_o,d2;
		exit when cur%notFound;
		dbms_output.put_line(l_no||'           '||patient_id||'          '||patient_name||'       '||doctor_id_l||'         '||n_disease||'      '||
				     test_cat||'       '||d||'    '||t||'         '||patient_id||'             '||doctor_id_o||'         '||d2);
	end loop;
	close cur;
end semi_join_right;

procedure semi_join_left
is
	doctor_id_l int;
	n_disease labreport.disease%TYPE;
	patient_id labreport.p_id%TYPE;
	patient_name varchar2(30);
	l_no labreport.Lab_no%TYPE;
	test_cat labreport.test_Catagory%TYPE;
	d labreport.r_date%TYPE;
	t labreport.r_time%TYPE;
	d2 outpatient.o_date%TYPE;
	doctor_id_o int;
	
	cursor cur is select * from labreport inner join outpatient on labreport.p_id=outpatient.p_id order by lab_no;

begin
	open cur;
	DBMS_OUTPUT.PUT_LINE('LAB_NO  PATIENT ID(L)  PATIENT NAME    DOCTOR_ID(L)   DISEASE   TEST_CATEGORY     DATE(L)       TIME      PATIENT ID(O)  DOCTOR ID(O)    DATE(O)');
	loop
		fetch cur into l_no,patient_id,patient_name,doctor_id_l,n_disease,test_cat,d,t,patient_id,doctor_id_o,d2;
		exit when cur%notFound;
		dbms_output.put_line(l_no||'           '||patient_id||'          '||patient_name||'       '||doctor_id_l||'         '||n_disease||'      '||
				     test_cat||'       '||d||'    '||t||'         '||patient_id||'             '||doctor_id_o||'         '||d2);
	end loop;
	close cur;
end semi_join_left;
end semi_join_proof;
/

begin
	semi_join_left;
	semi_join_right;
end;
/
	

	