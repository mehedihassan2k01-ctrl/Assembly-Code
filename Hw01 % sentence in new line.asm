.model small
.stack 100h

.data
msg1 db "Radia Sultana Ma'am is a wonderful teacher.$"
msg2 db 13,10,"Her teaching style is excellent.$"
msg3 db 13,10,"Her classes are engaging and informative.$"
msg4 db 13,10,"I understand every topic clearly in her class.$"
msg5 db 13,10,"I truly enjoy and appreciate her teaching.$"

.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 9h
    int 21h

    lea dx, msg2
    mov ah, 9h
    int 21h

    lea dx, msg3
    mov ah, 9h
    int 21h

    lea dx, msg4
    mov ah, 9h
    int 21h

    lea dx, msg5
    mov ah, 9h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main