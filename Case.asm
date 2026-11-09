;Enter  Lower case : r
;This is your Higher  case : R

.model small
.stack 100h
.data 

Lower db 13,10, " Enter Lower case : $"
Higher db 13,10, " This is your Higher case : $"
.code

main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, Lower
    mov ah, 9
    int 21h 
    
    ; user input
    mov ah, 1h
    int 21h 
    ; User input =AL
    ; shift to bl
    mov bl, al
    ; asciii print
    mov ah, 2h ; input case
    
    ; Lower case msg print
    
    lea dx, Higher
    mov ah, 9
    int 21h
      
    sub bl,32; bl = r
    mov dl,bl
    mov ah, 2h ; output case
    int 21h  
    jmp exit
    
    
    
    exit :
    mov ah , 4ch
    int 21h
    main endp
end main
