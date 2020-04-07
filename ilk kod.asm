; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"    
    sayi dw ? 
    ;EGER DW YERINE DB YAZARSAK HATA VERIR CUNKU BOYUTLARI ESIT OLMALI.CX 16 BIT YANI 2 BYTE
    ;OLDUGU ICIN SAYI DEGISKENIMIZDE 2 BYTE DW OLARAK TANIMLANDI.
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
      
      mov ax,5h
      mov cx,6h
      mov sayi,cx
      
ends

end start ; set entry point and stop the assembler.
