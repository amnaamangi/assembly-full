; LOWER  TO UPPER

.model small
.stack 100h
.data
.code
main proc
        
        mov ah,1
        int 21h ; AL=input in ASCII
        
        sub al,32 ; upper to lower 
              
        mov bh,al ; result in AL=BH      
              
        mov dl,10
        mov ah,2
        int 21h ; AL=DL=10
        
        mov dl,13
        mov ah,2
        int 21h
        
        mov dl,bh 
        mov ah,2 ;DL = 13
        int 21h
        
        mov ah,4ch
        int 21h
         
        
           
    main endp
end main







