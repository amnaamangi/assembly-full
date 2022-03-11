.model small
.stack 100h
.data
.code
main proc
    
    mov cx,5
    LABEL:
    mov ah,1
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    loop LABEL
    
    mov ah,4ch
    int 21h      
    main endp
end main












