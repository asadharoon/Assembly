
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.STACK 100h
.CODE

    MOV CX,5
    MOV AH,7 ;*
input:
    int 21h
    LOOP input
    
MOV CX,5
MOV AH,2
output:
    MOV DL,'X' 
    INT 21H
    LOOP output

ret




