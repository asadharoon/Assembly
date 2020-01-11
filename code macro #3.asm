
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

print macro var
    mov ah,2
    mov dl,0Ah
    int 21h
    mov ah,2
    mov dl,0Dh
    int 21h
    
    lea dx,var
    mov ah,9
    int 21h
    endm
.DATA
str db 'Asad$'
str2 db 'Rasib$'
.CODE
  print str
  print str2
  mov ah,4ch
  int 21h

ret




