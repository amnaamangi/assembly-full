; unsigned number 

char macro 
    mov ah,9    
    
    

.model small
.stack 100h
.data
num db ?
msg1 db "enter a number for table:$ "
msg2 db "press enter to run again or press ecs to terminate .$"
.code
main proc
    mov ax,@data
    mov ds,ax
    jmp start
    
start 1:
    mov count,1
start: 
    newline     
    print msg1     
   
    mov ah,7
    int 21h      ; AL
    
    cmp al,'1'
    je start 
    
    cmp al,'2'
    je start 
    
    cmp al,'3'
    je start 
    
    cmp al,'4'
    je start 
    
    cmp al,'5'
    je start 
    
    cmp al,'6'
    je start 
    
    cmp al,'7'
    je start 
    
    cmp al,'8'
    je start 
    
    cmp al,'9'
    je start
    
    cmp al,'10'
    je start  
    
    je L3
    
 L3:
 
    
    sub al,48    ; ASCII adjustement
    
   
    
   ; mov ah,1
   ; int 21h     ; AL
    ;sub al,48   ;
    
     mov cx,10
     mov bl,1    
     
    
LABEL: 
    newline
    mov dh,num
    add dh,48
    char dh
    mul al
    
    mov bl,al  
    
    inc bl    
        ; AX = AL * BL
    ;aam      
    
    mov bh,al
    ;mov dl,ah
    ;add dl, 48
    ;mov ah,2
    ;int 21h   
    
    ;mov dl,bh
    ;add dl,48
    ;mov ah,2
    ;int 21h 
    
    loop LABEL
    
    mov ah,4ch
    int 21h
    main endp
end main 



