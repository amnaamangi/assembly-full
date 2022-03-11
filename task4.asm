
.model small
.stack 100h
.data

.code 
main proc 
    mov dl, 065
    mov ah,2 ; result stored in AL from user  with 1 
    int 21h 
    
    mov dl, 077
    mov ah, 2
    int 21h
    
    
    mov dl, 078 
    mov ah, 2
    int 21h
    
    mov dl, 065
    mov ah, 2
    int 21h  
    
    mov dl,10
    mov ah,2
    int 21h   
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,065
    mov ah,2
    int 21h
    
    mov dl,072
    mov ah,2
    int 21h
    
    mov dl,077
    mov ah,2
    int 21h
    
    mov dl,069
    mov ah,2
    int 21h
    
    mov dl,068
    mov ah,2
    int 21h
    
    
    mov ah, 4ch
    int 21h
    
    main endp

