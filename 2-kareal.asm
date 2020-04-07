.model small 
.stack 64
.data

.code
ana proc far
    mov ax,@data
    mov ds,ax
    mov es,ax
           
    call karakteral
    mov ah,00
    sub al,30h 
    
    mov bl,al
    
    mul bl
    
    call ekranaya
    
           
           
    
    
    int 20h
    
endp ana 

ekranaya proc
    mov ch,0 
    mov cl,10
     
     
    don:
        div cl 
        inc ch
        mov bx,0h
        mov bl,ah
        add bl,30h
        push bx
        mov ah,0
    cmp al,0
    jne don
    
    
    et:    
        dec ch
        pop dx
        mov ah,02h
        int 21h 
    cmp ch,0
    jne et 
    ret
ekranaya endp

karakteral proc
    mov ah,0h
    int 16h
    ret
karakteral endp

ends