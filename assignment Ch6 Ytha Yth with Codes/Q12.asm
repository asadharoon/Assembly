
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.DATA
str db ?
count db ?,'$'
.CODE
    mov ax,@DATA
    mov ds,ax 
    mov count,0
    
    
loops:
    mov ah,1
    int 21h
    mov bl,al
    add str,bl
    cmp bl,0Dh
    je exit
    mov al,count
    inc al
    mov count,al
    jmp loops

exit:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    mov ah,2
    add count,48
    mov dl,count
    int 21h 
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    lea dx,str
    mov ah,9
    int 21h
    

     

ret




