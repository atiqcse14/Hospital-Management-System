set serveroutput on;
create or replace procedure diseaseReportDate(searchName IN varchar2, searchDate in date)
is
	resultName varchar(100);
	resultDate varchar(100);
	
	cursor cur is
	Select patient.p_name,inpatient.dateofadmission from 
	Inpatient Inner join labReport on inpatient.p_id=labReport.p_id
	Inner join patient on patient.p_id=inpatient.p_id where labreport.disease=searchName and labReport.r_date=searchDate;

begin
	open cur;
	loop
		fetch cur into resultName, resultDate;
		exit when cur%notFound;
		DBMS_OUTPUT.PUT_LINE('Patient Name:  ' || (resultName) || '   and Admission date: ' ||(resultDate));
	end loop;
	close cur;
end diseaseReportDate;
/

begin
	diseaseReportDate('cancer','18-jan-18');
end;
/