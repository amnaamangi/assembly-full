;write a program to take input as string and count total number of strings without spaces
.model small
.stack 100h
.data

str  db "enter string: $"  
str1 db "program terminated! you pressed enter key.$"

.code
main proc
      mov ax,@data
      mov ds,ax 
      mov dx,offset str
      mov ah,9
      int 21h
      mov bl,0
L1:
      mov ah,1 
      int 21h ;input=AL
      cmp al,13
      je end1 
      cmp al,32
      je L1
      inc bl      
      jmp L1 
end1: 
      mov dl,13 
      mov ah,2
      int 21h
      mov dl,10
      mov ah,2
      int 21h      
      mov dx,offset str1
      mov ah,9
      int 21h  
      mov ah,4ch 
      int 21h
     main endp
end main