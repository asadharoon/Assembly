org 100h
.DATA
N dw 3
A dw 1d,2d,3d,10d,9d
max dw 0
.CODE
    main proc
        mov ax,N
        push ax
        call find_max
        ret
        main endp
    
    find_max proc
         push bp
         mov bp,sp
         cmp [bp+4],1
         je max_1
         jmp else
         max_1:
            mov max,1
            pop bp
            ret 2
         else:
         mov ax,[bp+4]
         
         dec ax
         push ax
         call find_max
         mov bx,[bp+4]
         add bx,bx
         mov bx,[A+bx]
         ;mov bx,[bx]
         mov ax,bx
         mov bx,max
         cmp ax,bx
         jg maxim
         pop bp
         ret 2
         maxim:
            mov bx,[bp+4]
            add bx,bx
            mov bx,[A+bx]
            mov max,bx
            pop bp
            ret 2
        find_max endp

ret




                      
                      