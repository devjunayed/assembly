
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
a db 10,13, '    *    $'
b db 10,13, '   ***   $'
c db 10,13, '  *****  $'
d db 10,13, ' ******* $'
e db 10,13, '*********$'


.code
mov ax, @data
mov ds, ax

mov ah, 9
lea dx, a
int 21h
        
mov ah, 9
lea dx, b
int 21h

mov ah, 9
lea dx, c
int 21h

mov ah, 9
lea dx, d
int 21h 

mov ah, 9
lea dx, e
int 21h


        
ret




