
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.CODE

    MOV AH,1    ; read input
    MOV CX,80   ; loop will run 80 times
L1:
    INT 21H
    CMP AL,20H ; blank = 20h    ; if blank inputted then it remains true
    LOOPE L1

ret




