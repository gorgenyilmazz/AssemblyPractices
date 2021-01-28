
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov cx, 4
mov si, 0  

dongu:
mov ax, 0
mov bx, 0
mov al , [sayilar+si] 
mov bl , [sayilar2 + si]
div bl
mov [kalan+si] , ah

inc si
loop dongu



ret
   
sayilar db 10,20,30,40
sayilar2 db 3,4,7,6
kalan db 4 dup(?)
   
end




