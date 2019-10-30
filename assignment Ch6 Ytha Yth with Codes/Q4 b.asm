
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.DATA
.CODE
    mov ah,1
    int 21h
    mov bl,al
    mov dl,al
    mov ah,2
    mov cx,80
loops:
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h
    mov dl,bl
    int 21h
    
    loop loops

ret




