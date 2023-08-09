ORG 100H 

LEA SI,Array1
LEA DI,Array2


MOV CX,4 


L1: 
    MOV AL,[SI]
    MOV [DI],AL
    
    INC SI
    
    INC DI
    
LOOP L1


HLT

Array1 DB 20h, 0AH, 32, 9
       
Array2 DB 0H,0H,0H,0H
