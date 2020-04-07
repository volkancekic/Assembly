.model small
.stack 64
.data  
    dizi db 5,?,4 dup(0) 
    sayi db 10
    topla dw 0
    
.code
ana proc far 
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    lea dx,dizi
    mov ah,0ah
    int 21h  
    
    
    
    
    
    mov cx,0
    lea si,dizi
    inc si
    mov cl,[si]
    mov ax,0001h 
    add si,cx
     
    
    dongu: 
    push ax         ;ax 1 in 10 ar kati olarak artar. deger kayip olmasin diye ax e at..
    sub [si],30h    ;ascii degerden decimal degere convert    
    mul [si]        ;si ile al yi carp ax e at 
    add topla,ax    ;top+=ax
    pop ax          ;ax 1 in 10 ar kati olarak artar. deger kayip olmasin diye ax e at..
    mul sayi        ;ax in 10 katini al
    dec si          ;si yi bi geri basamaga al
    loop dongu
    
  
    
    
    
    
    
    
    
    
    
    int 20h
    
    
ana endp

ends