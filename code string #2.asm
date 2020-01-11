
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
str db ?
.CODE
    ;store string
    lea di,str
    mov al,'R'
    stosb ; saves value of AL in string DI. and auto DI+1 (db).
    
    ;load string
    lea si,str
    lodsb ;load value of string in AL byte by byte. and auto SI+1
    mov ah,2
    mov dl,al
    int 21h


ret




