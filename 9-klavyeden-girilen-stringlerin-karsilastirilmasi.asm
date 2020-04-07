.model small
.stack 64
.data
    name1 db 15,?, 14 dup(' ')
    name2 db 15,?, 14 dup(' ')
    s1 db 'string1 i gir  :$'
    s2 db 'string2 yi gir :$'
    satir db 0
    sutun db 0
    esit db 'string1 = string2$'
    degilesit db 'string1 != string2$' 
    
.code
ana proc far
    mov ax,@data
    mov ds,ax
    mov es,ax
             
    call ekransil
    call imleckonum         
    lea dx,s1
    call ekranayaz 
    lea dx,name1
    call verial
    
    call ekransil
    call imleckonum 
    lea dx,s2
    call ekranayaz
    lea dx,name2
    call verial
    
    
    cld 
    mov cx,10
    lea si,name1
    lea di,name2
    repe cmpsb ; esit oldugu surece karsilastir
    jne esitdegil
    
    call ekransil
    call imleckonum
    lea dx,esit
    call ekranayaz

    mov ah,4ch
    int 21h
 

    esitdegil:
    call ekransil
    call imleckonum
    lea dx,degilesit
    call ekranayaz

    mov ah,4ch
    int 21h

ana endp

verial proc
    mov ah,0ah
    int 21h
    ret
verial endp 

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



end ana