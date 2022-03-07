include emu8086.inc   

org 100h                               



.data
.code

mov cx, 7
print "Enter any string to reverse :"

input: 
mov ah, 01     ; ah = 01 (special value for single input)
int 21h

mov bl, al     ; al = s (bl = al)
               ; ax - ah al

push bx        ; bx - bh bl

loop input 


printn

print "Reversed string is: "
mov cx, 7

output:
pop bx
mov dl, bl
mov ah, 02h   ; for character output 02h and 09h for string output
int 21h

loop output


ret