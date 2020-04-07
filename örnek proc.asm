; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
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

    mov ah,5
    mov al,4
    call toplama
    mov bl,3
    jmp son

toplama proc 
    add ah,al
     ret
    toplama endp
ends
son:

end start ; set entry point and stop the assembler.
