org 100h
.DATA
a db 6
b db 3
common db 1
.CODE
    main proc
        mov al,common
        push ax
        call lcm
        ret
        main endp
    lcm proc
        push bp
        mov bp,sp
        mov al,[bp+4]
        mov bl,a
        div bl
        cmp ah,0
        je first
        jmp else
        first:
            mov al,[bp+4]
            mov bl,b
            div bl
            cmp ah,0
            je second
            jmp else
            second:
                pop bp
                ret 2
        else:
            inc common
            mov ah,0
            mov al,common
            push ax
            call lcm
            pop bp
            ret 2
     lcm endp
ret




