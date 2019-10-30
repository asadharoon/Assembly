
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.CODE
    mov cx,0 ;product
    mov ax,5
    mov bx,6
while:
    add cx,ax ;ax=M
    dec bx  ;bx=N 
    cmp bx,0
    je exit
    jmp while
exit:
    

ret




