; multi-segment executable file template.

data segment
      satir db ?
      sutun db ?
      sayac dw ?
      i db ?
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
     
     mov satir,9
     mov sutun,37
     mov sayac,5
     mov i,3
     
     call imlec
     call renkli
     mov satir,10
     mov sutun,37
     dongu:
     
     call imlec
     call karakter
     inc satir
     dec i
     cmp i,0
     jne dongu
     
     mov i,3
     mov satir,10
     mov sutun,41
     dongu2:
     
     call imlec
     call karakter
     inc satir
     dec i
     cmp i,0
     jne dongu2 
     mov satir,13
     mov sutun,37
     call imlec
     call renkli
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
