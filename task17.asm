
.model small
.stack 100h
.data        

str db "program has ended.$"

.code
main proc 
    mov cx,20
    mov bh,042  
    mov ax,@data
    mov ds,ax
    LABEL:   
    
    mov dl,bh
    mov ah,2
    int 21h 
    
    mov dl,10
    mov ah,2 
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    
    
  
    
    loop LABEL
    
    mov ah,9
    mov dx,offset str
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main