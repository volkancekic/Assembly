.model small
.stack 64
.data      
    toplam  db 0
    carpan  db 10 
    dizi db 5,?, 4 dup(0)
    sayi db 10
    topla dw 0
    
    asal  db '     ASAL  $'
    nasal db 'ASAL DEGIL $'                      
.code
ana proc far
      mov ax,data
      mov ds,ax
      mov es,ax
      
      call sayial
      call asalmi
      int 20h
           
    
    
ana endp

asalmi proc
    mov cx,topla
    dec cl
    mov bx,topla
   
    don:
    mov ah,00h
    mov al,bl
    div cl 
    cmp ah,0
    je bitir
    
    dec cl                                                          
    
    mov al,bl
    
    cmp cl,1
    jne don
     
    lea dx,asal
    call kelimeyaz
    jmp go
    
    bitir:
    lea dx,nasal
    call kelimeyaz
    int 20h
    
    go:
    
    ret
asalmi endp

sayial proc     
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


kelimeyaz proc   
    mov ah,09
    ;lea dx,mesaj
    int 21h
    ret    
kelimeyaz endp
end ana