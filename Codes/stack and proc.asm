
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.CODE
    main proc
        mov ah,11000111b
        mov cl,8
        mov al,0
        
        l1:
            cmp cl,0
            je exit
            shl ah,1
            jc move1
            jnc move0
            loop l1
        move1:
            dec cl
            mov bx,1
            push bx
            jmp l1
        move0:
            dec cl
            mov bx,0
            push bx
            jmp l1
        exit:
            mov cl,8    
            jmp l2
        l2:
           mov ah,2
           pop bx
           add bx,30h
           mov dx,bx
           int 21h
           loop l2
        call sum
        mov ah,2
        mov dl,al
        int 21h
        sum proc
            mov al,30
            ret 
ret




