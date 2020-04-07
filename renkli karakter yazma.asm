; multi-segment executable file template.

data segment
    
     metin db 'Ankara'
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

    mov ah,09h
    mov al,metin
    mov bl,47h
    mov bh,00h
    mov cx,5
    int 10h
ends

end start ; set entry point and stop the assembler.
