
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include "emu8086.inc"
org 100h

 mov al, 5             ;int al =5;
 mov bl, 7             ;int bl =7;
                             ;if(al!=bl)
 cmp al, bl                  ;    printf("n")   
                             ;else
                                  ;printf("y")
 
 
 je label1             ; jump if equal
 
 print 'NO'
 
 jmp stop
      
      
 label1:
 
 putc 'y'  
 
 
 
 stop:

ret




