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
     
     mov satir,3
     mov sutun,40
     mov sayac,26
     mov i,13
     
     dongu:
     call imlec
     call karakter
     inc satir
     dec sutun
     dec i
     cmp i,0
     jne dongu 
      
     mov satir,3
     mov sutun,40
     mov i,13
     dongu2:
     call imlec
     call karakter
     inc satir
     inc sutun
     dec i
     cmp i,0
     jne dongu2 
     
     mov satir,16
     mov sutun,28
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
