
.model small
.stack 100h
.data
counter dw ?
str db 10,13,"Enter your statement: ","$"
str1 db 10,13,"Reverse statement: ","$"
.code
main proc 
    
    mov ax,@data
    mov ds,ax 
    
        lea dx,str
        mov ah,9
        int 21h
start:   

        
        mov ah,1
        int 21h
        
        cmp al,13
        je end
              
        mov ah,0      
        push ax  
        
          inc counter
      
      jmp start  
            
        
end:  
         mov ah,2
         mov dl,10
         int 21h
         
         mov ah,2
         mov dl,13
         int 21h 
                  
        lea dx,str1
        mov ah,9
        int 21h 
                
         mov cx,counter
                    
label:            
        pop dx
        mov ah,2
        int 21h
        
        
loop label 
   
    mov ah,4ch
    int 21h
    
    main endp
end main
