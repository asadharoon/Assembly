
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.STACK 100H
.DATA
.CODE
    mov ax,1
    mov bx,2
    mov cx,1
    jmp if
    mov dx,1  ;else part
    jmp exit
if:
    cmp ax,bx
    jl lbl1
    cmp bx,cx
    jl lbl1
    jmp exit
lbl1:
    mov dx,0
exit:


ret




