;Macro
display macro p1,p2,p3
    mov dx, offset p1
    mov ah, 9
    int 21h
endm

N_L macro 
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
endm
.model small
.stack 100h
.data              
msg db "Name: IDKDIDK"
msg1 db "Institute : blahblah"
msg2 db "reg id: 32646747575768689789899"
msg3 db "email...."
con dw 0
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    display msg
    N_L
    display msg1
    N_L
    display msg2 
     N_L
    display msg3
    
    mov ah,4ch
    int 21h
    main endp
end main