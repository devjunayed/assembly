
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include emu8086.inc
org 100h

.data

a db 10,13, 'Enter pass marks: $'
b db 10,13, 'Enter your marks: $' 
pass db 10,13, 'Your result is: Pass $'
fail db 10,13, 'Your result is: Fail $'

.code


mov ax, @data
mov ds, ax

mov ah, 9
lea dx, a
int 21h

mov ah, 1
int 21h
mov bl, al


mov ah, 9
lea dx, b
int 21h

mov ah, 1
int 21h
mov bh, al


cmp bl,bh
jg lvl1  ;jump if greater (bl>=bh)
jmp lvl2 ;bh>bl

lvl2:
mov ah, 9
lea dx, pass
int 21h
jmp stp



lvl1:
mov ah, 9
lea dx, fail
int 21h


stp:
 

ret




