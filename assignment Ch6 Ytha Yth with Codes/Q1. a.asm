
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
.CODE
    mov ax,1
    cmp ax,0
    jl lbl1
    jmp exit
lbl1:
    
    mov bx,-1
    jmp exit
exit:

ret




