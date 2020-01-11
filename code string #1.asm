
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
str db 'asad$'
str2 db 4 dup(?)
save dw ?
.CODE   
    ; source to destination
    lea si,str
    mov cx,0
    mov save,si
    loops:
        mov ax,[si]
        cmp ax,'$'
        je exit
        inc cx
        inc si ; for byte +1 and for word +2
        jmp loops
    exit:
        mov si,save
        add si,cx      ;point out to d
        dec si
        dec save
        l1:
            cmp si,save
            je terminate
            mov ah,2
            
            mov dx,[si]
            int 21h
            dec si
            jmp l1
         terminate:
         
        
    
  
ret




