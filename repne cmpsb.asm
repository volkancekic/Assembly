; multi-segment executable file template.

data segment
    cumlem db 'aliatabak' 
    
    cumlem2 db 'liatabaka'
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
   
    mov bh,0                          
    mov cx,9
    lea di,cumlem
    lea si,cumlem2
    
    repne cmpsb         ;repne esit olmadigi surece devam eder
    je esit
     jmp atla           ;esitse 1 yap degilse 0 yap
    esit:
    mov bh,1
          
    atla:  
ends

end start ; set entry point and stop the assembler.
