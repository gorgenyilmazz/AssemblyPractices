org 100h


mov cx, 8
mov al, sayi 
mov bl , birsayisi

karar:
jcxz bitir
dec cx
shr al, 1
jc buldum
jmp karar

buldum:
inc birsayisi
jmp karar


 
bitir:

ret
birsayisi db 0
sayi db 11001000b