set serveroutput on;
create or replace procedure billsWithdiscount(searchPatientID IN int)
is

totalBill int;
finalBill int;
total int;

begin

select (room_charge+medicine_charge+operation_charge+doctor_fee)INTO total from bill where P_ID=searchPatientID;

if total<15000 then
	totalBill:=total;
	finalBill:=total-total*10/100;

elsif total>=15000 and total<30000 then
	totalBill:=total;
	finalBill:=total-total*20/100;

elsif total>=30000 and total<60000then
	totalBill:=total;
	finalBill:=total-total*30/100;

else 
	totalBill:=total;
	finalBill:=total-total*50/100;
end if;

	DBMS_output.put_line('Total bill: '||(totalBill)||'   Final Bill: '||(finalBill));
	

end;
/

begin
	billsWithDiscount(5);
end;
/

