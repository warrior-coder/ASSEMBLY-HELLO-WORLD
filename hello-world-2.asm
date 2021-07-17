.MODEL TINY
.STACK 10h

.DATA
    message DB 'Hello World 2!$'

.CODE
start:
    mov ax, @data                       
    mov ds, ax                          ; Connect data segment to code
                                        
    mov dx, offset message              ; mov DX <- message beginning address
    mov ah, 09h                         ; Write $-terminated string
    int 21h                             ; Call interrupt 

    mov ah, 4Ch                         ; Exit
    int 21h
end start