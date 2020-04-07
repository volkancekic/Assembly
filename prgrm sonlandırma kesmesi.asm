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

    
    mov bx,50
    mov ah,4ch
    int 21h          ;bx 50 oldu prg kesildigi icin 33 yapamadi
    
    mov bx,33   
ends

end start ; set entry point and stop the assembler.
