
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

array1 DB 5h, 7h, 1h, 8h ;int array[5]; int array[0] = 5;

b_string DB 'Hello'

MOV AL, array1[1]

ret




