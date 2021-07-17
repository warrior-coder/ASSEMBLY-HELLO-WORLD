MODEL TINY
STACK 10h

DATASEG
    message DB 'Hello World 1!'
    
CODESEG
start:  
    mov ax, @data                       
    mov ds, ax                          ; Connect data segment to code. We cant directly move DX <- @data, so we use register
                                                                                                          
    mov bx, 01h                         ; File handle
    mov cx, 0Eh                         ; Nuber of bytes to write
    mov dx, offset message              ; Adress DS:DX
    
    mov ah, 40h                         ; Write bytes
    int 21h                             ; Call interrupt 
    
    mov ah, 4Ch                         ; Exit
    int 21h                 
end start   