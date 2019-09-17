SET serveroutput ON;
set verify off;

ACCEPT i_n PROMPT 'Enter the value of n: ';
ACCEPT i_rc PROMPT 'Enter the room_charge: ';
ACCEPT i_mc PROMPT 'Enter the medicine_charge: ';
ACCEPT i_oc PROMPT 'Enter the operation_charge: ';
ACCEPT i_df PROMPT 'Enter the doctor_fee: ';


CREATE OR REPLACE PACKAGE knn AS
    PROCEDURE knn_algorithm;
    PROCEDURE show_result ;
END;
/

CREATE OR REPLACE PACKAGE BODY knn AS

    ex_count integer := 0;
    ch_count integer := 0;
    n int := &i_n;
    rc int := &i_rc;
    mc int := &i_mc;
    oc int := &i_oc;
    df int := &i_df;
    
    procedure knn_algorithm is
    
    CURSOR neighbours IS
    SELECT bill_no,type FROM bill
    WHERE
    rownum <=n
    order by sqrt(  
	(room_charge-rc)*(room_charge-rc)+
	(medicine_charge-mc)*(medicine_charge-mc)+
	(operation_charge-oc)*(operation_charge-oc)+
	(doctor_fee-df)*(doctor_fee-df)
        );

    neighbor neighbours%ROWTYPE;
    
    BEGIN
    
    OPEN neighbours;

    LOOP
    FETCH neighbours INTO neighbor;
    EXIT WHEN neighbours%notfound;
    
         
         
    IF
        neighbor.type = 'expensive'
    THEN
        ex_count := ex_count + 1;
    ELSE
        ch_count := ch_count +1;
    END IF;
         
         dbms_output.put_line(neighbor.bill_no|| '  '|| neighbor.type);
    END LOOP;

     CLOSE neighbours;
    
    END knn_algorithm;


    
    PROCEDURE show_result IS
    
        
    BEGIN
     IF ex_count < ch_count
        
    THEN
       dbms_output.put_line('The new bill type is cheaper');
    ELSE
        dbms_output.put_line('The new bill type is expensive');
    END IF;
         
         
     END show_result; 

END knn;
/

begin
	knn.knn_algorithm;
	knn.show_result;
end;
/