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
    mov cx,20
    
    mov ah,00h           ;alinan karakteri gostermeden al ye atiyor
    int 16h
       
ends

end start ; set entry point and stop the assembler.
