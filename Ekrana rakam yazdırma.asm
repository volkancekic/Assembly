; multi-segment executable file template.

data segment
    
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

     mov ax,49
     
     
    call rakamyaz
    int 20h
       
ends
    
    rakamyaz proc
      mov cx,0
      mov cl,10
      dongu:
      div cl
      inc ch
      mov bx,0
      mov bl,ah
      add bl,30h
      push bx
      mov ah,0
      cmp al,0
      jne dongu
      
      dongu2:
      dec ch
      pop dx
      mov ah,02h
      int 21h
      cmp ch,0
      jne dongu2
      ret    
    rakamyaz endp
    
end start ; set entry point and stop the assembler.
