; multi-segment executable file template.

data segment
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov cx,5
            
          
    
    int 20h              ;son hali cx 5 10 yapmadi cunku prgrm sonlandi
    
    mov cx,10 
ends

end start ; set entry point and stop the assembler.
           