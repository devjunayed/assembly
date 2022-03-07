org 100h


.data 
a equ '2'
b equ 'Love to code $'

.code
mov ax, @data
mov ds, ax


mov ah, 02h
mov dx, a
int 21h

ret