.model small
.stack 64
.data
    dizi db 5 dup(0) 
    sayi db 10,?,10 dup(0)
    on db 10
    s1 db 'sayi1 gir:$'
    s2 db 'sayi2 gir:$'
    s3 db 'sayi3 gir:$'
    s4 db 'sayi4 gir:$'
    s5 db 'sayi5 gir:$' 
    satir db 0
    sutun db 0 
    toplam db ?
.code
ana proc far
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    call ekransil
    call sayilaridiziyeat
    call hesapla
    
ana endp
    sayial proc
        lea dx,sayi
        mov ah,0Ah
        int 21h 
        
        lea si,sayi
        inc si
        mov ch,0
        mov cl,[si]
        
        add si,cx
        mov ax,0001h
        bas:
           push ax 
           sub [si],30h
           mul [si]
           add [di],ax 
           pop ax
           mul on  
           dec si
       loop bas   
    ret
sayial endp 
    
sayilaridiziyeat proc
    call ekransil
    call imleckonum 
    lea dx,s1
    call ekranayaz
    lea di,dizi    
    call sayial
    inc di
            ;--- 1. sayi yi aldi
    call ekransil
    call imleckonum
    lea dx,s2
    call ekranayaz   
    call sayial
    inc di
            ;--- 2. sayi yi aldi
    call ekransil
    call imleckonum 
    lea dx,s3
    call ekranayaz    
    call sayial
    inc di
            ;--- 3. sayi yi aldi
    call ekransil
    call imleckonum
    lea dx,s4
    call ekranayaz        
    call sayial
    inc di
            ;--- 4. sayi yi aldi
    call ekransil
    call imleckonum
    lea dx,s5
    call ekranayaz    
    call sayial
    inc di
           ;--- 5. sayi yi aldi
    ret
sayilaridiziyeat endp  

ekranayaz proc
    mov ah,09h
    int 21h
    ret
ekranayaz endp  

ekransil proc
    mov ax,0600h
    mov bh,2fh
    mov cx,00h
    mov dx,184fh
    int 10h
    ret
ekransil endp

imleckonum proc
    mov ah,02h
    mov bh,00h      ;sayfa no
    mov dh,satir    ;satir no
    mov dl,sutun    ;sutun no
    int 10h         ;10/00
    ret
imleckonum endp  

yaz proc
    mov ah,02h
    int 21h
    ret
yaz endp

hesapla proc
    lea si,dizi
    mov cx,4
    don:
    mov di,si
    mov dx,cx    
        a: 
        dec dx
        inc di
        mov bl,[si]
        mov bh,[di]
        cmp bl,bh
        jna bas1
        mov [di],bl
        mov [si],bh
        bas1:
        cmp dx,0
        jne a    
    inc si
    loop don
    
    mov cx,5
    mov ax,00h
    toplar: 
    mov al,[si]
    add toplam,al
    inc si
    loop toplar
 
    ret
hesapla endp
     
ends