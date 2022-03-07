
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
 var1 DB 'Junayed$'
 
.CODE 

MOV AX, @DATA  

 MOV DS, AX
 LEA DX, var1
 
 MOV AH, 09H
 INT 21H

ret




