; Noramlly
org 100h


.data
neg_1 db 10, 13, 'The number is negative $'
pos_1 db 10, 13, 'The number is positive $'

.code
mov ax, @data
mov ds, ax
mov bx, 50

cmp bx, 0   
jl if_1   ; jump if less
jge else_1 ; jump if greater



if_1:
mov ah, 09
lea dx, neg_1  ;mov dx, offset neg_1
int 21h
jmp stp


else_1:
mov ah, 09
lea dx, pos_1
int 21h


stp:
ret  



; Using header file and built in function 


 
  ;
; include emu8086.inc
; org 100h 
;
;
; .data 
; .code
;  mov bx, 5
;  cmp bx, 0
;  
;  jl negative
;  jge positive
;  
;  negative:
;  print "The number is negative"
;  jmp stp 
;
;  positive:
;  print "The number is positive"
;  
;  stp:
;  
; ret