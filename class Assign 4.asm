
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.DATA
NUM1 dw 74d
remainder db ?
ans db ?
base db 5
count db 0
part1 db 'Answer of 1st Part is $'
.CODE
    mov ax,[NUM1] 
    ;push ax
    mov cl,base
    mov count,0
    loops:
       cmp al,base
       jl exit
       div cl  
       mov remainder,ah
       mov ans,al
       mov bl,ans
       add count,1
       mov ah,0
       mov bl,remainder
       push bx
       jmp loops
    exit:
        mov ah,0
        push ax
        inc count
        mov cl,count
        mov bp,sp
        mov al,count
        mov ah,0
        lea dx,part1
        mov ah,9
        int 21h
        loopss:
            cmp cl,0
            je exx
            mov bx,[bp]
            mov ah,2
            add bx,48d
            mov dx,bx
            int 21h
            add bp,2
            loop loopss 
        exx:
       
        mov cl,count
        mov ch,0
        
        mov bp,sp
        mov bx,0
        loop_for_convert:
           
            mov ax,[bp]
            mov ch,cl
            dec ch
             lops:
               cmp ch,0
               je ex
               mul base
               dec ch
               jmp lops  
            ex:
            add bx,ax
            
            add bp,2
            loop loop_for_convert
         terminate:  
         mov ah,4ch
         int 21h 
ret




