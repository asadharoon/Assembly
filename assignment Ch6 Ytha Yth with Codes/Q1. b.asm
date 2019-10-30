
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
.CODE
    mov al,0
    cmp al,0
    jl if
    jge else
if:
    mov ah,0FFh
    jmp exit
else:
    mov ah,0
    jmp exit
exit:
    

ret




