;Write a program to take string input from user 
;and store in an array  

.model small
.stack 100h
.data
arr1 db 'D', 48 , 52, 98, 100, 55

arr2 db 30 dup ('A')
str db "Please enter your name:"

arr3 db 30 dup ('$')

.code                       mov al, 200
                            add al, 202
main proc 
    
    mov ax, @data
    mov ds,ax 
    mov dx , offset str 
    mov ah, 9
    int 21h
    mov bx, offset arr3
L1:
    mov ah,1 
    int 21h ; input=AL 
    cmp al,13
    je end1
    MOV [BX], AL
    inc bx
    jmp L1
end1:
    mov dl,13
    mov ah, 2
    int 21h
    mov dl,10  
    mov ah,2
    mov dx,offset arr3
    mov ah, 9   
    mov ah,4ch
    int 21h
    
    main endp
end main




