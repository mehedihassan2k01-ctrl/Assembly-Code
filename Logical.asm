; Logical (and, or, xor)
; Case convert ( Upper to lower , Lower to Upper )  
;101b
;111b
;And : 101b = 5 = '5'
;And result :'5'
;Or: 1 (bit wise)111b= 7='7' 
; Or result : '7'
;xor : 010b = 2= '2'
;xor : '2'

.model small
.stack 100h
.data
Andmsg db " And Result: $"
Ormsg db 13,10, "Or Result: $"
Xormsg db 13,10, "Xor Result: $"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ;and msg print
    lea dx, Andmsg
    mov ah, 9h
    int 21h 
    ;0-9, 0-9
    
    ; And operation
    ;bx - base changing 
    mov bl, 101b ; bl = 101b
    and bl, 111b ; bl = 101b and 111b = 5
    mov dl, bl;output register
    add dl, '0';dl= '54'
    mov ah, 2h ; Character print
    int 21h 
    
    lea dx, Ormsg
    mov ah, 9h
    int 21h
    
    
    ; Or operation
    ;bx - base changing 
    mov bl, 101b ; bl = 101b
    or bl, 111b ; bl = 101b and 111b =7
    mov dl, bl;output register
    add dl, 48;dl= '7'
    mov ah, 2h ; Character print
    int 21h
    
    lea dx, Xormsg
    mov ah, 9h
    int 21h
    
    ; XOr operation
    ;bx - base changing 
    mov bl, 00001000b ; bl = 101b
    xor bl, 00000001b ; bl = 101b and 111b =2
    mov dl, bl;output register
    add dl, 30h;dl= '2'
    mov ah, 2h ; Character print
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
 main endp
end main
