
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.STACK 100H
.DATA
.CODE
    mov ax,1
    mov bx,2
    cmp ax,bx
    jl if
    cmp bx,cx
    jl if2 
    jmp else
    
if:
    mov ax,0
    jmp exit
else:
    mov cx,0
    jmp exit
if2:
    mov bx,0
    jmp exit
exit:
  

ret




