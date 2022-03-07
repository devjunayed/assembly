
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA 
 CHAR DB ?

.CODE
 
 
 MOV AX, @DATA
 MOV DS, AX
 LEA SI, CHAR
 MOV AH, 01H
 INT 21H


ret




