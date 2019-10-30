
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.DATA
count db 0
.CODE
    mov ax,@DATA
    mov ds,ax


    mov bh,80h
    
    jmp loops
loops:
    mov al,count   
    inc al
    mov count,al
    
    cmp al,10   ; if count=10 then next line called
    je nextline
    
    cmp bh,0FFh     ; if bh=FFh i.e, last index then break
    jg exit
    
    mov ah,2
    mov dl,bh           ; printing contents on single line
    int 21h
    
    inc bh   ; increment bh i.e, iterator
    jmp loops
    
nextline:
    mov ah,2           ; next line for next 10 ascii codes 
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    mov count,0       ; again set count=0 for next iteration
    jmp loops
exit:
    
ret




