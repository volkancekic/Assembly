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
    mov ds, ax
    mov es, ax

       
       
       fonk proc near ;near olunca ayni segmentten far olunca farkli segmentten cagirilir.
        mov ax,2
        mov bx,2   
        mov cx,2
        
        fonk endp   ;proc bitince sirayla alta dogru gidiyor bu yuzden sonsuz dongu olusuyor.
       mov ax,1
       mov cx,1
       mov bx,1
       call fonk
             
       
ends

end start ; set entry point and stop the assembler.
