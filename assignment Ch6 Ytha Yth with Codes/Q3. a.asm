
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.DATA 
A dw ?
B dw ?
.CODE
    mov ax,1
    mov bx,1
    mov cx,49 ; for counting loops
if:  
    add bx,3
    add ax,bx
   
    loop if
    
exit:


    
    

ret




