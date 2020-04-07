; multi-segment executable file template.

data segment
    okul db 'karabuk universitesi$'
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
    lea si,okul
    mov ah,09h   ;$ isareti gorene kadar ekrana basar
    int 21h    
ends

end start ; set entry point and stop the assembler.
