; multi-segment executable file template.

data segment
    cumlem db 'aliatabak' 
    
    cumlem2 db 'aliAtabak'
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax                        ;buyuk kucuk harfe duyarli 
   
    mov bh,0                           ;repe esit oldugu surece isleme devam et
    mov cx,9
    lea di,cumlem                      ;esit degilse 1 esitse 0 at bh a
    lea si,cumlem2
    
    repe cmpsb
    jne esitdegil
     jmp atla
    esitdegil:
    mov bh,1
          
    atla:  
ends

end start ; set entry point and stop the assembler.
