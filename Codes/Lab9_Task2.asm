
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,1
int 21h

mov ah,2
mov bl,al
int 21h

cmp bl,61h
jge label1
cmp bl,61h
jle label2

label1:
    sub bl,20h
    
    mov dl,0Ah
    int 21h
    mov ah,2
    mov dl,0Dh
    int 21h
    mov ah,2
    mov dl,bl
    int 21h 
    jmp exit
label2:
    add bl,20h  
    mov ah,2
    mov dl,0Ah
    int 21h
    mov ah,2
    mov dl,0Dh
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
exit:
ret




