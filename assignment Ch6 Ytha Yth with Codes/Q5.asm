
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.CODE
    mov ax,0 ;quotient
    mov bx,1 ; divisor
    mov cx,10 ;dividend
while:
    cmp cx,bx
    jl exit
    inc ax
    sub cx,bx
    jmp while
exit:
    

ret




