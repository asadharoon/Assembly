
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    MOV AH,2
    MOV DL,'?'
    INT 21H 
    
    MOV AH,1
    INT 21H 
    MOV BL,AL ;1st char
    
    INT 21H  
    mov bh,al ;2nd char
    
    cmp bl,40h
    jl exit
    cmp bl,5Bh     ; if character is in caps or not
    jge exit 
    
    cmp bh,40h
    jl exit
    cmp bh,5Bh         ; checking if char is in caps or not
    jge exit
    
    CMP bl,bh
    jg switch   ; if first char is greater than second char then switch 
    jmp print   ; otherwise print
    
switch:
    xchg bl,bh  ; exchange char
    jmp print
print:
    mov ah,2
    mov dl,0AH      ; for next line
    int 21h
    mov dl,0Dh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov dl,bh
    int 21h
    jmp exit
exit:

    
    
    


ret




