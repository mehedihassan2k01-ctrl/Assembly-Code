 ;addition:
 ;8+1 = 9 , 0+0=0, 5+3=8
 
 .model small ; 1 CS + 1 DS
 
.stack 100h ; 256 bytes
.data
.code
main proc ; procedure
    mov ax, @data ; To dataset activate
    mov ds, ax ;  Eat address 
     
   ;mov ax,8   ; ax =5
   ;mov dx,1   ; dx=3
   ;add dx,ax
    mov al,8   ; ax =5
    mov dl,1   ; dx=3
    add dl,al 
    ;ax,bx,cx,dx ;dx=5+3= 8
    ;ascii..nije set kore dile decimal thake   
    
    
    ;add dx, '0' ; ascii convert
    ;add dx, 48
   ;add dx, 30h
    add dl,30h
    
    mov ah, 2h ; char print fixed
    int 21h; interrupt
    
    
    exit:
    mov ah, 4ch  ; ah =4c
    int 21h ; h for Hex, and it is vector address 
    main endp ; end of procedure
end main
            