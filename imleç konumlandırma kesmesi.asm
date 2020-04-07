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
    
    mov ah,06h              ;harfle baslarsa basina 0 koy !
    mov bh,0a4h
    mov cx,0000h
    mov dx,0507h
    int 10h
    
    lea dx, pkey
    mov ah, 9
    int 21h        
    
    mov ah,02h
    mov bh,00h
    mov dh,05h  ;asagi 5 iner
    mov dl,12h  ;mov dx,0512h ile ayni sey  saga dogru 1 gider
    int 10h 
    
    mov ah,00h
    int 16h       
    
   
ends

end start ; set entry point and stop the assembler.
