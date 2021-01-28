
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 0FFh
mov bl, 0FFh

add al, bl  

jc tastik 
jmp bitir

tastik:
inc tasma
jmp bitir

 
bitir:
 
ret 
tasma db 0




