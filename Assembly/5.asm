.MODEL SMALL
.DATA  
 S1 DB "ASCII SYMBOL: $"
.CODE

MAIN PROC   
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,S1
    MOV AH,9
    INT 21H
    
    MOV CL,9
    
    SUB CL,48
    MOV AH,2
    MOV DL,CL
    INT 21H
    
MAIN ENDP
END MAIN    