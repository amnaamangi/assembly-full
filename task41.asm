
.model small
.stack 100h
.data 

str1 Db "Input single character : $" 
str2 Db 10,13,"Output in toggle-case : $"


.code
main proc  
    
    mov ax, @data
    mov DS, ax
    
    mov dx, offset str1
    mov ah, 9
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al
    
    mov dx, offset str2
    mov ah, 9
    int 21h
    
    mov dh, cl
    xor dh,00100000b
    
   
    
    mov dl, dh
    mov ah,2
    int 21h  

    
    mov ah, 4ch
    int 21h
 
    main endp
end main




