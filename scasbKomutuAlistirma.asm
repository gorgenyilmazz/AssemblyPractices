; multi-segment executable file template.

data segment
      
      ara db 0
ends

stack segment
    dw   128  dup(0)
ends  

extra segment
       sayi db 2,3,3,9
      
ends 

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov ax, extra 
    mov es, ax 
    
    mov al, 3
    mov cx, 4 
    
    lea di, ara
    lea si, sayi 
      
    compare:
    scasb
    je artir 
    
    dec cx
    jcxz bitir:
    jmp compare
    
    
    artir:  
    dec cx
    inc ara
    jcxz bitir
    jmp compare 
    
  
    

  
    bitir:
    mov ax, 4c00h ; exit to operating system.
    int 21h 
    ends
      
ends

end start ; set entry point and stop the assembler.
