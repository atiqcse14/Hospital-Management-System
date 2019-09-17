set serveroutput on;
create or replace package canonical_operator_simulation AS
	procedure canonical_expression;
	procedure operator_tree_actual;
end canonical_operator_simulation;
/

create or replace package body canonical_operator_simulation AS
	procedure canonical_expression
is
	result_name varchar2(20);

	cursor cur is select p_name from(
     	select doc.d_id,labreport.d_id,labreport.p_id,disease,patient.p_id,patient.p_name
    	from Labreport inner join patient on labreport.p_id=patient.p_id inner join (select d_id from doctor1 
	where doctor1.d_name='Dr. Mahir'union select d_id from doctor2 where doctor2.d_name='Dr. Mahir')doc
	on doc.d_id=labreport.d_id where r_date='13-jan-2018' and disease='fever');

begin
	open cur;
	loop
		fetch cur into result_name;
		exit when cur%notFound;
		dbms_output.put_line('Result Name is : '||(result_name));
	end loop;
	close cur;
end canonical_expression;

procedure operator_tree_actual
is
	result_name varchar2(20);

	cursor cur is select patient.p_name from patient inner join labreport on patient.p_id=labreport.p_id inner join doctor
	on doctor.d_id=labreport.d_id where r_date='13-jan-2018' and disease='fever';

begin
	open cur;
	loop
		fetch cur into result_name;
		exit when cur%notFound;
		dbms_output.put_line('Result Name is : '||(result_name));
	end loop;
	close cur;
end operator_tree_actual;
end canonical_operator_simulation;
/
begin
	DBMS_OUTPUT.PUT_LINE('FOR CANONICAL EXPRESSION, THE RESULT IS: ');
	canonical_expression;
	DBMS_OUTPUT.PUT_LINE('FOR SIMPLIFIED OPERATOR TREE, THE RESULT IS: ');
	operator_tree_actual;
end;
/