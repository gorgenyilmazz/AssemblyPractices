
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 4
mov si, 0

dongu:  
mov al,[sayilar+si]  
add ax, si
mov [fark+si], al
inc si
loop dongu 



ret

sayilar db -2,4,6,-2
fark db 4 dup(?) 
 
end




