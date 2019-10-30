
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


mov al,61h
mov bl,62h
cmp al,bl
jb print
cmp al,bl
ja print2
print:
    
    mov ah,2
    mov dl,al 
    int 21h
    mov ah,4ch
    int 21h
print2:
       
    mov ah,2
    mov dl,bl
    int 21h 
    mov ah,4ch
    int 21h

ret




