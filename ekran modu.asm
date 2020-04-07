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

    mov ah,00
    mov al,00h
    int 10h
ends

end start ; set entry point and stop the assembler.
