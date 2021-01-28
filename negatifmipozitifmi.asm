
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov cx, 6
mov si, 0 
mov di, 0 
mov bp, 0

dongu:
jcxz bitir
mov al, [sayilar+si] 
inc si
cmp al, 0
jl eksi
jnl arti

 

eksi:
mov [negatif+di], al
dec cx 
inc di
jmp dongu

  
arti:
mov [pozitif+bp], al
dec cx   
inc bp
jmp dongu
  
  
bitir:

ret
sayilar db -12,5,-6,9,-13,8
negatif db 6 dup(?)
pozitif db 6 dup(?)



