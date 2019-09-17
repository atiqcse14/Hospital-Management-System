Set serveroutput on;
declare
	c varchar2(20);
begin
	c:=patientTimeRoom('1-july-2018','31-july-2018',4);
	Dbms_output.put_line('patient NAme is: ' || (c));
end;
/	