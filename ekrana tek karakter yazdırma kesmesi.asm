; multi-segment executable file template.

data segment
    
    sehir db 'ankara'
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
    lea si,sehir
    mov cx,6
    
    dongu:
    mov dl,[si]         ;si yi artirmassak ayni harfi yazar 6 tane
    mov ah,02 
    int 21h
    inc si
    loop dongu
    
ends

end start ; set entry point and stop the assembler.
