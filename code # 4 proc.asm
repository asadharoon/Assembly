
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
.CODE
    main proc
        call add1
        main endp
    
    add1 proc
        mov ax,1d
        mov bx,2d
        add ax,bx
        ret
        add1 endp
    

ret




