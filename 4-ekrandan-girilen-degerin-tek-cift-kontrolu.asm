.model small
.stack 64
.data  
    dizi db 5,?,4 dup(0) 
    sayi db 10
    topla dw 0
    s1 db 'tek sayi$'
    s2 db 'cift sayi$' 
    s4 db 'sayi girin   :$'
    satir db 0 
    sutun db 0
    
.code
ana proc far 
     mov ax,@data
     mov ds,ax
     mov es,ax

     call ekransil
     call imleckonum
     lea dx,s4
     call ekranayaz   
     
  
     call sayial
     shr topla,1 
     jc bas
     
     call ekransil
     call imleckonum
     lea dx,s2
     call ekranayaz 
     int 20h
     
     bas:
     call ekransil
     call imleckonum
     lea dx,s1
     call ekranayaz
    
    
    
    int 20h
    
    
ana endp

sayial proc
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
    ret
sayial endp 

imleckonum proc
    mov ah,02h
    mov bh,00h      ;sayfa no
    mov dh,satir    ;satir no
    mov dl,sutun    ;sutun no
    int 10h         ;10/00
    ret
imleckonum endp 

ekransil proc
    mov ax,0600h
    mov bh,2fh
    mov cx,00h
    mov dx,184fh
    int 10h
    ret
ekransil endp 

ekranayaz proc
    mov ah,09h
    int 21h
    ret
ekranayaz endp 
    

ends