
 ;print "#***#***#..." 5 times
 ; using nested loops

;print pattern
 
.model small
.stack
.data
steric dw 1     ; counter for inner 
.code
main proc 
    mov ax, @data
    mov ds, ax    
    mov cx, 5
     
LABEL: 
      mov bx, cx
      mov cx,steric ;-1->2 
INNER:     
       mov dl, 042   
       mov ah,2 
       int 21h 
       
       loop inner 
       inc steric ; steric = 1-> 2 
       
       mov dl,10
       mov ah,2
       int 21h
       
       mov dl,013
       mov ah,2
       int 21h
       mov cx,bx   ; counter for outer loop
       loop LABEL
       
       mov ah,4ch
       int 21h 
    main endp
end main 




