.MODEL TINY
STACK 10h

.DATA
    message DB 'Hello World!'
    
.CODE
start:
    mov ax, @data                       ; Connect data segment to code
    mov ds, ax
                                            
    mov cx, 12                          ; Loop iterations = message length
    lea si, message                     ; Get message address
write:
    mov dl, byte ptr [si]               ; Move DL <- Value from SI address casted to DB 
    mov ah, 02h                         ; Write character
    int 21h
                                        
    inc si                              ; Increase address = go to next byte
    loop write                          ; Loop automatically decrease CX and compare with 0
 
    mov ah, 4Ch                         ; Exit
    int 21h
end start