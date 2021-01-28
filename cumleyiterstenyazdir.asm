org 100h

MOV BX, OFFSET metin 
MOV BP, OFFSET tersmetin
MOV CX, offset tersmetin - offset metin 
MOV SI, 0
MOV DI, offset tersmetin - offset metin - 1

dongu:
MOV AL, [BX+SI]
MOV [BP+DI], AL
INC SI
DEC DI   

LOOP dongu

 



ret  
metin db "bucumleterstenyazilacak"
tersmetin db 23 dup(?)
end
