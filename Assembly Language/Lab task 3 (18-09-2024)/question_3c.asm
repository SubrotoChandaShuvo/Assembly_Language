.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 1
    INT 21H
    ADD AL, 32 
    MOV DL, AL
    MOV BL, DL
    
    
        
    MOV AH,2
    MOV DL,0DH
    INT 21h
    MOV DL,0AH
    INT 21h   
  
    


    MOV DL, BL
    MOV AH, 2
    INT 21H

    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN