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

    mov ax,1h
    mov bx,2h
    mov cx,3h
    
    jmp x
    mov ax,5h   ;DALLANMA SAYESINDE JMP ILE X ARASI GECILDI.
    mov bx,6h
    mov cx,7h
    x:
    mov ax,8h
    mov bx,8h
    mov cx,8h  
ends

end start ; set entry point and stop the assembler.
