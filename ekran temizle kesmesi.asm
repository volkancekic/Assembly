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
    
    mov ah,06h     ;ekran silme
    mov bh, 0a4h   ;bh zemin ve karakter rengini tutuyor. IRGB ye gore
    mov cx,0000h   ;zemin parlak yesil karakter kirmizi olsun harfle basladigi icin 0 koy basina
    mov dx,1847h
    int 10h   
ends

end start ; set entry point and stop the assembler.
