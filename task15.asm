
.model small
.stack 100h
.data

  var1 DB 65 ; define byte -- 8 bit 
  var2 DW ? ;define word -- 16 bit
  str1 db "NAME: AMNA AHMED$" ; $ = string terminator  
  STR2 DB "reg id: 2012106$" 
  STR3 DB "EMAIL: IDKK@IZZZMAIL.COM$"
  STR4 DB "INSTITUTE:SZABIST$"
    
  arr1 db 65,48,97,10,13,50,55
  
  DD ; define double -- 32

.code
main proc
         ;sizee should be same in mov
         ; size should always be 16 bit
         
        mov ax,@data
        mov DS,ax
        
        mov dx, offset str1
        mov ah,9  ; for string display
        int 21h 
                  
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl, 13
        mov ah,2
        int 21h
                  
        mov ax,@data
        mov DS,ax
        
        mov dx, offset str2
        mov ah,9  ; for string display
        int 21h 
        
         mov dl,10
        mov ah,2
        int 21h
        
        mov dl, 13
        mov ah,2
        int 21h  
        
        mov ax,@data
        mov DS,ax
        
        mov dx, offset str3
        mov ah,9  ; for string display
        int 21h 
        
         mov dl,10
        mov ah,2
        int 21h
        
        mov dl, 13
        mov ah,2
        int 21h
        
        mov ax,@data
        mov DS,ax
        
        mov dx, offset str4
        mov ah,9  ; for string display
        int 21h 
        
         mov dl,10
        mov ah,2
        int 21h
        
        mov dl, 13
        mov ah,2
        int 21h
         
        mov ah,4ch
        int 21h 
        
      
        
         
        
           
    main endp
end main







