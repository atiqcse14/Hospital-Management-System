create or replace function shift_appointment(searchName in varchar2, date1 in date, date2 out date, patientId out number, doctorId out number)
	return varchar2
	is 
	shift_name varchar2(20);


begin
	Select patient.p_name,appointment.a_date,appointment.p_id,appointment.d_id 
	into shift_name,date2,patientId,doctorId from 
	appointment Inner join doctor on doctor.d_id=appointment.d_id 
	Inner join patient on patient.p_id=appointment.p_id 
	where doctor.d_name=searchName and appointment.a_date=date1;

	return shift_name;
end;
/
