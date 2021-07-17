.MODEL TINY
.STACK 10h

.DATA
    message DB 'Hello World 3!'
    
.CODE
start:
    mov ax, @data                       ; Connect @data to extra segment 
    mov es, ax
   
    mov al, 01h                         ; Output mode
    mov cx, 0Eh                         ; String length
    mov bl, 1Eh                         ; Color. B/T - bg/text color in hex 
    mov dl, 00h                         ; Column (X)
    mov dh, 00h                         ; Line (Y)
    mov bp, offset message              ; Adress ES:BP
    
    mov ah, 13h                         ; Write BIOS string
    int 10h                             ; Call interrupt 
                                        
    mov ah, 4Ch                         ; Exit
    int 21h
end start