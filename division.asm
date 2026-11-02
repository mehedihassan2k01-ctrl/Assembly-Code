; Enter dividend :8 | 8
; Enter Divisor  :5 | 0
; Your Quotient  :1 | Undefined !!
; your remainder :3

.model small
.stack
.data
dividend db " Enter dividend: $"
DIVISOR db 13,10,"Enter Divisor: $"
Quotient db 13,10, "Your Quotient: $"
remainder db 13,10, "your remainder: $"
Error db 13,10, " Undefined !! $"

.code  


main proc
    mov ax, @data
    mov ds, ax 
    
    ; string print , load effective address
   
    lea dx, dividend; str load
    mov ah, 9h ; str print
    int 21h ; intterrupt 
    
    ; dividend user input 
    mov ah, 1h ; user input command fixed
    int 21h ; interrupt  
    
    ; al = by deafault input taker {register}
     
    
    mov bl, al ; bl = dividend
    ; ascii
    sub bl, '0' ; decimal covert 48\30h
      
    
    lea dx, DIVISOR; str load
    mov ah, 9h ; str print
    int 21h ; intterrupt
    
    mov ah, 1h ; user input command fixed
    int 21h ; interrupt  
    
    ; al = by deafault input taker {register}
     
    
    mov bh, al ; bl = DIVISOR
    ; ascii
    sub bh , 48 ; decimal covert 48\30h
    
    lea dx, Quotient; str load
    mov ah, 9h ; str print
    int 21h ; intterrupt
    
    ; corner case
    
    cmp bh , 0 ; bh ==0 
    je undefine ; jump if equal
    ; ascii , pattern like kore jump
    ; upper , case , lower case, intendation
    
    ; if manbe na manle else
    mov al, bl  
    xor ah, ah ; ah remainder
    
    
   div bh ; div = divisor, al = quotient
   mov dl, al 
   add dl, 48 ; ascii covert
   mov ah, 2h;
   int 21h ; interrupt 
   jmp exit
   
   
     
    
    undefine: ;segment
     
    lea dx, Error; str load
    mov ah, 9h ; str print
    int 21h ; intterrupt
    
    
    
     
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp ; procedure end
end main   ; whole program end