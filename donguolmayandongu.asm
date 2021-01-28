
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 4
mov si, 0 


donguolmayandongu:
jcxz bitir
mov al, [sayilar+si] 
add al, 2
mov [sayilar+si], al
inc si
dec cx 
jmp donguolmayandongu

bitir:
  
  
ret 
sayilar db 2,5,4,-9




