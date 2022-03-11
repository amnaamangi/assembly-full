;Array
.model small
.stack 100h
.data

arr1 db 65, 'D',48 ,97 , 100 ,'T' , 55
;index   0   1   2   3   4     5     6  
str1 db "array values: $"

.code
main proc
      mov ax,@data
      mov ds,ax
      mov bx,offset arr1 ; BX OR SI OR DI
      
      mov dx,offset str1
      mov ah,9
      int 21h
      
      add bx,5
      mov dx,[bx]
      mov ah,2
      int 21h 
      
      mov dl,32
      mov ah,2
      int 21h
      
      mov bx,1
      mov dx,[bx]
      mov ah,2
      int 21h
      
      mov ah,4ch
      int 21h
    
    main endp
end main 