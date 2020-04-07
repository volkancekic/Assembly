.model small
.stack 64  
.data
    dizi db 15,?, 14 dup(' ')
    toplam db 0  
    a db '$'
    yaz db 'rakam sayisi : $'

.code
ana proc far
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    
    call ekransil   
    call verial
    
    lea si,dizi
    mov cl,[si+1]  ;dongu girilen karakter kadar donecek
    
    don:
    inc si
    cmp [si],39h   ;ascii kodu bile gelse kontrol eder
    jnb atla       ;kucuk olmadigi surece toplama girmeden
                   ;devam eder.
    inc toplam
    
    
    atla:
    loop don 
    
    add toplam,30h
    
    call ekransil  
    
    lea dx,yaz 
    call ekranayaz
    
    lea dx,toplam
    call ekranayaz
    
    
    int 20h 
    
    
        
    
ana endp

verial proc
    lea dx,dizi
    mov ah,0ah
    int 21h
    ret
verial endp  

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


    

ends