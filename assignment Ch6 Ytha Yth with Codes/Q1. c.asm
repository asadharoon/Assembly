
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
.CODE
    mov dl,'A'
    cmp dl,41h   ; A=41h
    jl exit      ;if less than A then exit
    cmp dl,5Ah   ; Z=5Ah
    jg exit      ; if greater than Z then exit
    jmp if
if:
    mov ah,2
    int 21h
    jmp exit
exit:
 

ret




