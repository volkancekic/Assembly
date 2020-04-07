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
   
   mov ax,4
   
   mov cx,3
   
   cmp ax,bx
   ja x    ;AX BUYUKSE X E DALLANMA YAP.
   
   
   x:
   add ax,1        ;AXI 1 ARTTIR.
   
   
      
ends

end start ; set entry point and stop the assembler.
