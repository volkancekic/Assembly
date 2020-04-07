; multi-segment executable file template.

data segment
    cumle db 'volkan'
    
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

    lea si,cumle
    lodsw ;v harfini al ye atti o harfini ah a atti word oldugu icin
    
ends

end start ; set entry point and stop the assembler.
