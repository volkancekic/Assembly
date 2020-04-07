; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax             ;SONUC OLARAK AX 5 OLDU.
    mov es, ax             ;SART SAGLANMADIGI ICIN X YAPILMADI SONRAKI KOMUT X2 YE DALLANDI.
    
    mov ax,4
    add ax,1
     cmp ax,6
    ja x
      jmp x2
     x:
     add ax,10
     jmp x2
     
      x2:
      
ends

end start ; set entry point and stop the assembler.
