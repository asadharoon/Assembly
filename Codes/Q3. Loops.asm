
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx,49
mov ax,1
mov bx,1

L1:
    add bx,3
    add ax,bx
    Loop L1

ret




