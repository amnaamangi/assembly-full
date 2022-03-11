
.model small
.stack 100h
.data  

Array dw 'A','b','c','d','e'
str db "array values:$"

.code
main proc
  mov ax,@data
  mov ds,ax
  mov si,offset array
  mov cx,5
  
  mov dx,offset str
  mov ah,9
  int 21h
  
L1:
  mov dx,[si]
  mov ah,2
  int 21h
  add si,2
  
  mov dl,32
  mov ah,2
  int 21h
  
  loop l1
  mov ah,4ch
  int 21h
  main endp
End main





