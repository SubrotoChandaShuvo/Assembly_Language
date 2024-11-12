.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
mov al,5
mov bl,6
mul al              
               
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN