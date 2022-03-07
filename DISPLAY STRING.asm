
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
 var1 DB 'CSE, SU$' ; VARIABLE_NAME DB/DW 3h 'CSE Dept, SU$'   DB=DATA BYTE, DW = DATA WORD 


.CODE

MOV AX, @DATA 

 MOV DS, AX   
 
 MOV AH, 09H;
 
 ;MOV DX, OFFSET var1  
 
 LEA DX, var1 
        
 INT 21H

ret




