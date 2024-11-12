; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA 
A DB 8;
B DB 2;
C DB 8;
D DB 3;
E DB 5;

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here 
XOR AH,AH
MOV AL,A   ; 8
MOV CL,B   ; 2
ADD AL,CL  ; A
MOV CL,AL  ; CL=A
MOV AL,C   ; AL=8
MOV BL,D   ; BL=3
SUB AL,BL  ; AL=5
MUL CL     ; AL=32
MOV BL,E   ; BL=5
DIV BL     ; AL=A

;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN

ret




