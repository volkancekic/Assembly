.model small
.stack 64
.data
    dizi db 4,?,4 dup('*')
    temp dw ?
.code
ana proc far
      mov ax,data
      mov ds,ax
      mov es,ax
      
      lea dx,dizi
      
      
      mov ah,0AH
      int 21h 
      
      
      lea si,dizi ;i
      add si,1
      
     mov cx,2
      
      
    ;  add di,2                           
      
      
       ;-----------for i -----------
      dongu:
        inc si
        mov di,si ;k
        mov dx,cx
       ; dec dx
        ;----------for  k ----------
        loop2:
        dec dx
        inc di
        mov ah,[si]
        mov al,[di]
        cmp ah,al
        jna git  
 
            mov [si],al
            mov [di],ah
            
            
        git:  
        cmp dx,0
        jne loop2
        ;--------for k son ------------------    
        
     
      loop dongu
       ;-------- for i son --------------- 
      
      
      atla:
    
      int 20h
    
    
    
          ana endp
end ana
    
    
    
    
