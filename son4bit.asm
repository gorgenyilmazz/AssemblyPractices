
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov cx, 4
mov si, 0  

dongu:
mov al , [sayilar+si] 
and al, 00001111b
mov [sayilar2+si], al
inc si
loop dongu



ret
   
sayilar db 10,20,30,40
sayilar2 db 4 dup(?)
   
end




