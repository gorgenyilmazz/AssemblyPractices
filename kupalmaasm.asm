org 100h  


MOV CX, 4
MOV SI, 0
MOV DI, 0

dongu:
MOV AL, 0
MOV BL, 0
MOV AL, [sayilar+SI]
MOV BL, AL
MUL BL
MUL BL
MOV kup+DI, AX 
 
INC SI  
ADD DI, 2

LOOP dongu

ret  
  

sayilar db 2,4,6,3
kup dw 4 dup(?)
end 
