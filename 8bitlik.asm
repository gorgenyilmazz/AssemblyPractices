
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

PUSH 0BCDEh
PUSH 0AB03h

MOV CX, 2 
MOV SI, 0

dongu:
POP AX 
MOV [yuksek+si], AH
MOV [dusuk + si], AL
INC SI 

LOOP dongu 
 
 
 

ret  
dusuk db 2 dup(?)
yuksek db 2 dup(?)
end 




