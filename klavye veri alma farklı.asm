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
                         ;scan kodu yok
    mov ah,01
    int 21h
ends

end start ; set entry point and stop the assembler.
