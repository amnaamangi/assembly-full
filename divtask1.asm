.model small
.stack 100h
.data
.code 
main proc 
    mov ax,18
    mov bl,2
    div bl   ; quotient = AL , remainder = AH
    
    mov bl,ah            
    mov dl,al
    add dl,48
    mov ah,2 
    int 21h  
    
    mov dl,bl
    add dl,48
    mov ah,2 
    int 21h  
              
    mov ah,4ch
    int 21h
    main endp 
end main 




