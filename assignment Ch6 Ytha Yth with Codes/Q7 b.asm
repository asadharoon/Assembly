
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.CODE

    MOV AH,1    ; read input
    MOV CX,80   ; loop will run 80 times
L1:
    INT 21H
    CMP AL,0Dh ; if carriage returns come then it will break
    LOOPNE L1

ret




