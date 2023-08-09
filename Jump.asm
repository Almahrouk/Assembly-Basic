ORG 100h

MOV AH,X  

L1:
    CMP AH,Y
    JB L2
    SUB AH,Y
    INC AL
    JMP L1
L2:

    HLT 
    
    
X DB 25
Y DB 3
