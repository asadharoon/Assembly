
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.DATA
.CODE
    mov dx,1
    mov bx,1
    mov cx,50
loops:
    add bx,4
    add dx,bx
    loop loops
    

ret




