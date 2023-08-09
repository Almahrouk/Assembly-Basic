org 100h

mov ah,06h
mov cx,00
mov dx,148fh
mov bh,71h
mov al,0
int 10h 


mov ah,09h
mov dx,offset msg1
int 21h


mov ah,01h
int 21h 
and al,0fh
mov bl,3
mov ah,0
div bl
cmp ah,0
jz l1
   
   mov ah,06h
mov cx,00
mov dx,148fh
mov bh,71h
mov al,0
int 10h 
; to print #

  mov ah,09h
mov dx,offset msg3
int 21h

 
 jmp l2
l1: ; to print *
  
  mov ah,06h
mov cx,00
mov dx,148fh
mov bh,71h
mov al,0
int 10h 

 mov ah,09h
mov dx,offset msg2
int 21h



l2:
hlt
msg1 db 'enter number between 0 and 9:$' 

msg2 db '*',0AH,'*',0AH,'*','$'
msg3 db '#',0AH,'#',0AH,'#','$'