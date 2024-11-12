                                              .MODEL SMALL
.STACK 100H
.DATA

a db "Insert the first number: $"
b db "Insert the second number: $"
sm db "The SUM of the two numbers: $"           

sb db "The SUB of the two numbers: $" 
ml db "The MULTIPLICATION of the two numbers: $"  
dv db "The DIVTION of the two numbers: $"
 
.CODE 
MAIN PROC 
;iniitialize DS
MOV AX,@DATA 
MOV DS,AX 
;enter your code here  


;......addition.......

lea dx,a
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov bl,al 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


lea dx,b
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov cl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h   

lea dx,sm
mov ah,9
int 21h

add cl,bl
add cl,30h
mov ah,2 
mov dl,cl 
int 21h 
                                                              
;---------------

;........subtraction.......


mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,a
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov bl,al 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


lea dx,b
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov cl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h   

lea dx,sb
mov ah,9
int 21h

sub bl,cl
add bl,30h
mov ah,2 
mov dl,bl 
int 21h

;......Multiplication..........
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,a
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov bl,al 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


lea dx,b
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov cl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h   

lea dx,ml
mov ah,9
int 21h

mov al,bl
mul cl
add al,30h
mov ah,2 
mov dl,al 
int 21h  
;----------------

;......Divition..........
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,a
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov bl,al 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


lea dx,b
mov ah,9
int 21h 

mov ah,1
int 21h  
sub al,30h
mov cl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h   

lea dx,dv
mov ah,9
int 21h
       
mov ah,0
mov al,bl
div cl
add al,30h
mov ah,2 
mov dl,al 
int 21h    
;----------------







                 

;exit to DOS 
 
MOV AX,4C00H
INT 21H 
MAIN ENDP
END MAIN