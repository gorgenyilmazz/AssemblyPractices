
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

mov cx, 18
mov si, 0 


dongu:
mov ah , 32

mov al , [cumle+si] 
not ah
and ah , al
mov [buyukharf+si], ah
inc si

loop dongu





ret

cumle db "buyukharfyazilacak"
buyukharf db 18 dup(?)


end


