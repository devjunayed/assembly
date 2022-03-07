
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
var1 db 'I love to code$'

.code
mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, var1
int 21h

ret




