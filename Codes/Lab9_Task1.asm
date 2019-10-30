
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.STACK 100h
.DATA
msg db 'Enter the character$'
.CODE

mov ax,@DATA
mov ds,ax

lea dx,msg
mov ah,9  
int 21h


mov ah,1
int 21h
mov bl,al

mov ah,2
mov dl,0Ah
int 21h

mov ah,2
mov dl,0Dh
int 21h

mov ah,2
mov dl,bl
int 21h


ret




