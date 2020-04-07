; multi-segment executable file template.

data segment
    okul db 'karabuk universitesi' 
     uni db '                    '
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax                ;ilk dizi degismiyor ayni kalir

    lea si,okul
    lea di,uni 
    mov cx,20 
    dongu:
    
    
    movsb   ;karakteri kopyaladi bir sonraki karaktere otomatik gecti ama dongu gerekli mutlaka
    
    loop dongu
    
ends

end start ; set entry point and stop the assembler.
