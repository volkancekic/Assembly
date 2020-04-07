; multi-segment executable file template.

data segment
        metin db 10,?,10 dup(' ')
    
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

    lea si,metin
    mov ah,0Ah
    int 21h
ends

end start ; set entry point and stop the assembler.
