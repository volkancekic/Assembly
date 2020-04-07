; multi-segment executable file template.

data segment
    satir db ?
    sutun db ? 
    sayac dw ?
    sayi db ?
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
    
     mov satir,6
     mov sutun,40
     mov sayac,1
     mov sayi,5
     dongu: 
      call imlec
      call renkli
      add sayac,2
      inc satir
      dec sutun
      dec sayi
      cmp sayi,0
      jne dongu
    
    mov satir,11
    mov sutun,37
    mov sayi,4
    mov sayac,7
    dongu2:
    call imlec
    call renkli
    sub sayac,2
    inc satir
    inc sutun
    dec sayi
    cmp sayi,0
    jne dongu2  
     
     
    int 20h
       
ends
  karakter proc
      mov dl,'.'
      mov ah,02h
      int 21h
      ret
  karakter endp
  
  imlec proc 
      mov ah,02h
      mov bh,00h
      mov dh,satir
      mov dl,sutun
      int 10h
      ret
  imlec endp
  
  renkli proc
      mov ah,09h
      mov al,'.'
      mov bl,0fh
      mov bh,00
      mov cx,sayac
      int 10h
      ret
  renkli endp
end start ; set entry point and stop the assembler.
