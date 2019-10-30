
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


.MODEL SMALL
.STACK 100h
.DATA
MSG db 'Enter a hex digit:$'
output db 'IN decimal it is:1$'
exitL db 'You have not entered Char in range A-F$'
.CODE
    mov ax,@DATA
    mov ds,ax
    
    lea dx,MSG
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,11h
    cmp al,40h   ;checking Input char is in Caps or not
    jle exit
    
    cmp al,47h  ;checking Input char is in Caps or not
    jge exit
    
    mov ah,2
    mov dl,0Dh
    int 21h
    mov ah,2     ;spacing
    mov dl,0Ah
    int 21h
    
    lea dx,output     ;printing output msg
    mov ah,9
    int 21h

    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
exit:
    mov ah,2
    mov dl,0Dh
    int 21h
    mov ah,2
    mov dl,0Ah
    int 21h       
    lea dx,exitL  ;inputted char is not in A-F
    mov ah,9 
    int 21h

ret




