
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov cx, 8
mov si, 0
mov di, 0

dongu:
jcxz bitir
mov al, [kelime1+si]
mov bl, [kelime2+si]
inc si

cmp al, bl
je ayni
jne aynidegil


ayni:
dec cx
mov kontrol, 1
inc aynikontrol
jmp dongu

aynidegil:
dec cx
mov kontrol, 0
jmp dongu
   
   
   
bitir:
ret
kelime1 db "bukelime"
kelime2 db "bukelimE"
kontrol db 0
aynikontrol db 0



