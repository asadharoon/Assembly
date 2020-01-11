
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
result dw 1
N dw 5
.CODE
    main proc
        mov ax,N
        push ax
        call fact
        ret
        main endp
    fact proc
        push bp
        mov bp,sp
        cmp N,1
        jg else
        cmp bp,0FFFCh
        je return
        cmp N,1
        jle if
        return:
            pop bp
        if:
            pop bp
            ret 2
        else:
            dec N
        mov ax,N
        push ax
        call fact
        mov ax,result
        mov bx,[bp+4]
        mul bx
        mov result,ax 
        jmp if
        fact endp

ret




