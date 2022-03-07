
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

turan DW 2 ; name_of_variable type_of_variable(DB/DW) value_of_variable

turan_const equ 3; name equ value  

MOV BX, turan

MOV AX, turan_const

ret




