.MODEL SMALL
.STACK 100H
.DATA

A db 5
B db 6 

X dw 0FA0h  ; 4000
Y dw 03E8h  ; 1000



.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here  


; Part 1: A*B
; Byte Multiplication

mov al,A
mov bl,B
mul bl              
       
; Word Multiplication

mov ax,X
mov bx,Y
mul bx      ; 4000000

     
        
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN