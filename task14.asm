.model small
.stack 100h
.data 

str db "Hello World$"

.code
main proc 
    
  mov ax,@data
  mov ds,ax
  
  mov ah,9   ; function to dislay string 
  mov dx,offset str ; offset of the msg
  int 21h
   
  mov ah,4ch
  int 21h
    
    main endp
end main
    





