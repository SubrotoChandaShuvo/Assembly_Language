.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here   
MOV DX,0001h
MOV AX,86A0h
MOV BX,2000
DIV BX

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN