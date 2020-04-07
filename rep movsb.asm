; multi-segment executable file template.

data segment
    cumlem db 'aliatabak' 
    cumlem3 db 'dfgakjgfjsg'
    cumlem2 db 'volkancek'
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
    cld
    lea di,cumlem
    lea si,cumlem2
         mov cx,9
         rep movsb     ;rep cx sifir olana kadar islemi yapar
         
      
ends

end start ; set entry point and stop the assembler.
