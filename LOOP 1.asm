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
       ;HER DONUSTE CX I 1 AZALTIP 0 MI DÝYE BAKIYOR DONGU 5 KEZ YAPILIYOR AX SONUCTA 5 OLDU.
    mov ax, data
    mov ds, ax
    mov es, ax
    mov ax,0
    mov cx,5
    dongu:
    add ax,1 
    loop dongu 
ends

end start ; set entry point and stop the assembler.
