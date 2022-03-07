
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
 
 MSG DB 10, 13, 'Hello World$'
 
 
.CODE
 DISP MACRO STR
 
 MOV AH, 09H
 LEA DX, STR
 INT 21H
 
 
 
 ENDM
 MOV AX, @DATA
 MOV DS, AX 
 
 
 
 MOV CX, 10H
 
 X:DISP MSG
 
 LOOP X

ret




