
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.DATA 
.CODE
    mov ax,100
    mov bx,100
    mov cx,19 ; for counting loops
if:  
    sub bx,5
    cmp bx,5
    jl exit
    add ax,bx   
    loop if
    
exit:


    
    

ret




