ORG 100H

;;;;;
;MOV DH,10
;MOV DL,20
;MOV BH,0
;MOV AH,2
;INT 10H 
;
;
;
;MOV AX,0708H
;MOV BH,71H
;MOV CX,0000H
;MOV DX,184FH
;INT 10H
;;;;;
;
;
;
;;;; NEW CODE 

;Clear The screen 

MOV CX,0   ;Starting Point (00:00)
MOV DX,184FH   ;Ending Point (end:end)
MOV BH,71H    ;Proparites 
MOV AX,0600H   ;Starting clear from down to up
; AL => # of line :: AL=00 => full screen
INT 10H 



MOV AH,2   ;Screen Display
MOV BH,0
MOV DX,0D1BH ;Proparites
INT 10H   ;Do

MOV AH,2   ;Screen Display
MOV CX,8   ;For Loop
MOV DL,'A' ;Character to  Display
L: 
    INT 21H   ;Do
    INC DL    ;DL++ => A => B => C => D => E => F => G => H
    LOOP L   ; 8 times


HLT

