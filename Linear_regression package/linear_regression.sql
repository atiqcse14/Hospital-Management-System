set serveroutput on;

ACCEPT in_age PROMPT 'Enter the age of the patient: ';

--declare
	
create or replace procedure linear_regression
is
	input_age int := &in_age;
	patient_age int;
	patient_weight int;
	
	sxy float:=0;
	sx float:=0;
	sy float:=0;
	sx2 float:=0;
	b1 float;
	b0 float;
	total int:=0;
	
	cursor cur is select age,weight from patient;

begin
	open cur;
	loop
		fetch cur into patient_age,patient_weight;
		exit when cur%notFound;
		sxy:=sxy + round((patient_age*patient_weight),2);
		sx:=sx + patient_age;
		sy:=sy + patient_weight;
		sx2:=sx2 + patient_age**2;
		total:=total+1;
	end loop;
	b1:=round((sxy - ((sx * sy)/total))/(sx2 - (sx**2/total)),2);
	b0:=round((sy - (b1*sx))/total,2);
	dbms_output.put_line(sx||' '||sy||' '||sx2||' '||sxy||' '||total||' '||b1||' '||b0||' '||(b0 + b1*input_age));
	dbms_output.put_line('Predicted weight of a patient having age '||input_age|| ' is:    ' || (b0+b1*input_age));
	close cur;
end linear_regression;
/
begin
	linear_regression;
end;
/