.model small ;1 code segment + 1 data segment  
.stack 100h ;256 bytes 
.data ;input + output var

msg db "Hello World!$"
good db 13,10, "Good Morning!$"

;define byete = 1B = 8 bits
;define word= 2B = 16 bits
.code ;whole code

main proc
   mov ax, @data
   mov ds, ax ; data segment activate 
   
   lea dx , msg
   mov ah ,9h ; str print
   int 21h; interrupt
   
   ;load effective address
   ;AX = Accumulator reg = AH:AL = Arithmatical, Logical
   ;BX = base reg = BH: BL = hex, oct, bin, dec, ascii 
   ;CX = Counter reg = CH :CL = Loop Counter
   ;DX = Data Reg = DH : DL = output reg
   Mehedi:;exit
   mov ah, 4ch
   int 21h ;interrupt, 21h = service provider 
    
     main endp ; procedure end
end main;whole program end