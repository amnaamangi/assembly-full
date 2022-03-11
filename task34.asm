
display macro parameter
    mov dx,offset parameter
    mov ah,9
    int 21h
endm

new_line macro
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h       
    
    endm

.model small
.stack 100h
.data

str  db "Amna Ahmed Mangi$"
str1 db 10,13,"2012106","$"
str2 db 10,13,"idkidk@yahoo.com","$"
str3 db 10,13,"SZABIST$","$"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    display str
    new_line
    display str1
    new_line
    display str2
    new_line
    display str3
    
    
    mov ah,4ch
    int 21h  
    
    main endp
end main
    
    



