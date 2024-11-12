.MODEL SMALL
.STACK 100H
.DATA 

A DB 5
B DB 8
C DB 2   

X DW 200
Y DW 300
Z DW 500

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 

; Task 1: X * Y / Z
; Part 3: Using Byte Multiplication and Byte Divition 

MOV AL,A
MOV BL,B 
MUL BL
MOV CL,C
DIV CL



; Part 3: Using Word Multiplication and Word Divition 
 
MOV AX,X  
MOV BX,Y
MUL BX
MOV CX,Z 
DIV CX




;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN