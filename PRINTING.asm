
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA 
 VAR1 DB 'CSE, SU $'
.CODE

MOV AX, @DATA
 MOV DS, AX
 MOV AH, 09H
 LEA DX, VAR1
 INT 21H

ret




