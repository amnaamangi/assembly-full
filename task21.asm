
 ;print 0 - 9 nested loop
 
.model small
.stack
.data
.code
main proc 
     mov cx , 26
     mov bh,97
LABEL: 
       mov dl,bh ; bh =48 = dl
       mov ah,2
       int 21h
       
       mov ah,2 
       mov dl,10
       int 21h
       
       mov ah,2 
       mov dl,13
       int 21h
       inc bh ; DL=49 ASCII OF 1
       loop LABEL
       
       mov ah,4ch
       int 21h 
    main endp
end main 




