.MODEL SMALL
.STACK 100H
.DATA

A dW 50h     ; 50H = 80 DEC
B db 10

X dw 0001h
Y dw 86A0h   ; 186A0h = 100000 dec
Z dw 2000    ; 2000 dec

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

;Task 1: A/B
;Part 2: Byte Multiplication
                   
MOV AX,A  
MOV BL,B
DIV BL


; Part 2: Word Multiplication
   
MOV DX,X
MOV AX,Y
MOV BX,Z
DIV BX

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN