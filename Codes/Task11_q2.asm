
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100h
.DATA
rows db '*        *$'
row1 db '**********$'
.CODE
    mov ax,@DATA
    mov ds,ax
    
    lea dx,row1
    mov ah,9
    int 21h
    
    
    mov cl,8
L1:
    mov ah,2
    mov dl,0Dh
    int 21h
    mov ah,2
    mov dl,0Ah
    int 21h
    lea dx,rows
    mov ah,9
    int 21h
    loop L1
mov ah,2
mov dl,0Dh
int 21h
mov ah,2
mov dl,0Ah
int 21h
lea dx,row1
mov ah,9
int 21h    
ret




