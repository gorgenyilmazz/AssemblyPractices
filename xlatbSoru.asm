
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 
MOV BX, OFFSET dizi1
MOV BP, OFFSET indisler 
MOV SI, 0  
MOV CX, 4


dongu:
MOV AL, [BP+SI] 
XLATB  
MOV hedef+SI, AL
INC SI
LOOP dongu


ret   
dizi1 db 10,11,10,9
indisler db 2,0,3,1
hedef db 4 dup(?)



