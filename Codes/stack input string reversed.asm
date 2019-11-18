
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.DATA
str dw 30 DUP(0)
.CODE  
   main proc 
       mov ax,@DATA
       mov ds,ax
l1:
       mov ah,1 
       int 21h 
       
       cmp al,0Dh
       je exit
       mov bl,al
       push bx
       jmp l1
exit:
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    jmp l2
l2:
    mov bp,sp
    cmp bp,0FFFEh
    je exit2
    pop dx
    mov ah,2
    int 21h    
    jmp l2
exit2:

  
   
    end main
    




