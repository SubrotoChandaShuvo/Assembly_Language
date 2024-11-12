.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Read character
    MOV AH, 1
    INT 21H
    MOV BL, AL 

    MOV DL, BL
    MOV AH, 2
    INT 21H

    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN