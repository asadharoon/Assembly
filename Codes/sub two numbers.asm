mov ah,1                   ;input first char
int 21h
mov bl,al  ; first char mov
mov ah,1 ;input second char                 
int 21h
sub bl,al
add bl,48
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h
