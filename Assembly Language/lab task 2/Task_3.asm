.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here   
MOV AL,1
MOV BL,2
ADD AL,BL   ;AL=3
MOV CL,AL   ;CL=3
MOV AL,3
MOV BL,1
SUB AL,BL   ;AL=2 
MUL CL      ;AX=6 
MOV BL,5
DIV BL      ;AL=1
MOV CL,3
ADD AL,CL   ;AL=4
MOV BL,2
ADD AL,BL   ;AL=6
MOV DL,AL   ;DL=6
MOV AL,1
MOV BL,2
MUL BL      ;AL=2
SUB DL,AL
MOV AL,DL   ;AL=4


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN