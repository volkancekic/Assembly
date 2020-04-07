; multi-segment executable file template.

data segment
    deneme db 'merhaba'
    deneme2 db '       '
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
    
    lea si,deneme
    lea di,deneme2
    mov cx,7
                                 ;her cx te 2 karakter atadi sonunda 2 merhaba oldu
    dongu:
    movsw
    
    loop dongu
      
ends

end start ; set entry point and stop the assembler.
