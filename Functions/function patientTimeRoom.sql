create or replace function patientTimeRoom(date1 in date, date2 in date,rno in int)
	return varchar2
	is 
	del_name varchar2(20);

begin
	select inpatient.p_name into del_name from inpatient Inner join patient on patient.p_id=
	inPatient.p_id where dateofAdmission between date1 and date2 and room_no=rno;

	return del_name;
end;
/
