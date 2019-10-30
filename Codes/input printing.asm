;input print character
mov ah,1
int 21h
mov bl,al
mov dl,al
mov ah,2

int 21h