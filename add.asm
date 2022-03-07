
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 200h

MOV AX, 5h
MOV BX, 3h
ADD AX, BX  ; ax = ax + bx

ret








