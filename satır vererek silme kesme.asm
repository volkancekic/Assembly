; multi-segment executable file template.

data segment
    
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
    
    
            
    
    mov ah,02
    mov bh,00h
    mov dh,05h  ;asagi 5 iner
    mov dl,05h  ;mov dx,0512h ile ayni sey  saga dogru 1 gider
    int 10h
                 ;al degeri hex mi normalmi ?
    mov al,02h   ; kac satir silinecegini belirtiyoruz
    mov ah,06h              ;harfle baslarsa basina 0 koy !
    mov bh,0a4h
    mov cx,0000h
    mov dx,184fh
    int 10h 
    
    mov ah,00h
    int 16h       
    
   
ends

end start ; set entry point and stop the assembler.
