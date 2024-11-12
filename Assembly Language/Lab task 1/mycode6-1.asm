
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA 

A dw 5;
B dw 7;
C dw 2;

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
MOV AX,A
MOV BX,B 
SUB BX,AX
MOV AX,BX


;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN





