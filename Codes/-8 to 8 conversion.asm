
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,-8 

cmp ax,0
jle lbl1

cmp ax,0
jge lbl2

mov ah,4ch
int 21h
lbl1:  
    mov bl,al
    neg bl 
    add bl,48
    mov ah,2              
    mov dl,bl
    int 21h
    jmp exit 
    
lbl2:
    mov ah,2
    add al,48
    mov dl,al
    int 21h
    jmp exit 
exit:
    

ret




