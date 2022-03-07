
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;ah=1  int 21h = character input
;ah=2  int 21h = character output
;ah=0A int 21h = string input
;ah=9  int 21h = string output

.DATA 

v1 db 10,13, 'Enter any character: $'  ;10,13 is for line break or new line
v2 db 10,13, 'Upper case is: $' 
v3 db 10,13, 'Lower case is: $'


.CODE            

;initializing code segment with data segment

mov ax, @DATA   
mov ds, ax       ; ds means data segment

;printing string

mov ah, 09
lea dx, v1
int 21h  

;Getting character input from users

mov ah, 1h
int 21h
mov bl, al

         
;printing second string   
      
mov ah, 09
lea dx, v2
int 21h


;Converting the input value to uppercase and printing the character

mov ah, 2
sub bl, 32     ;lower to upper : substruct 32  | upper to lower : add 32
mov dl, bl
int 21h


ret




