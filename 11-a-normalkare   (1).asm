.model small
.stack 64
.data
    yildiz db 5 dup('*') 
    a db '$'
    kyildiz db '*' 
    satir db 8
    sutun db 30 
    
.code
ana proc far
    mov ax,@data
    mov ds,ax
    mov es,ax 
     
    call kare
    
    
    int 20h
    
    
    
     
ana endp 

stringyaz proc  
    lea dx,yildiz
    mov ah,09h
    int 21h
    ret
stringyaz endp 

karakteryaz proc
    mov dl,2AH
    mov ah,02h
    int 21h
    ret
karakteryaz endp 

imleckonum proc
    mov ah,02h
    mov bh,00h      ;sayfa no
    mov dh,satir    ;satir no
    mov dl,sutun    ;sutun no
    int 10h         ;10/00
    ret
imleckonum endp 

kare proc
     call imleckonum
     call stringyaz
     mov cx,3
  
     don:
     inc satir 
     call imleckonum
     call karakteryaz 
     add sutun,4      
     call imleckonum
     call karakteryaz
     sub sutun,4
     
     loop don  
     
     inc satir
     call imleckonum
     call stringyaz
    
    
    
    ret
kare endp



    

end ana
        