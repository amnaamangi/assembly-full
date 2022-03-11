
.model small
.stack 100h
.data     

str db "after swapping: $"

.code
Main proc
   mov ax,@data
   mov ds,ax
   mov dx,offset str
   mov ah,9
   int 21h 
   mov ax,'3'
   push ax  
   mov cx,'2'
   push cx  
   pop  ax 
   mov dx,ax
   mov ah,2
   int 21h
   pop cx
   mov dx,cx
   mov ah,2
   int 21h
   mov ah,4ch
   int 21h
   main endp
end main






