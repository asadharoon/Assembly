
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
string db 'Hello Asad Haroon$'
.CODE
    MAIN PROC
        mov ax,@DATA
        mov ds,ax
        
        lea dx,string
        mov ah,9
        int 21h
        END PROC

ret




