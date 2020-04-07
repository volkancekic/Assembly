; multi-segment executable file template.

data segment
    deneme dw '    ' 
    harfim dw 'GB'
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
    
    lea di,deneme   ;al ye G atti Ah a B atti
    mov ax,harfim  
    
    stosw
    ends

end start ; set entry point and stop the assembler.
