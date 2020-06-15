org 100h

section .text

	call 	texto	
	call 	cursor
	call 	phrase
    call    phrase1
    call    phrase2
    call    phrase3
	call	kbwait

	int 	20h

texto:	mov 	ah, 00h
	    mov	    al, 03h
	    int 	10h
	    ret

cursor: mov	    ah, 01h
	    mov 	ch, 00000000b
	    mov 	cl, 00001110b
		    ;   IRGB
	    int 	10h
	    ret

w_char:	mov 	ah, 09h
	    mov 	al, cl
	    mov 	bh, 0h
	    mov 	bl, 00001111b
	    mov 	cx, 1h
	    int 	10h
	    ret

kbwait: mov 	ax, 0000h
	    int 	16h
	    ret

m_cursr:mov 	ah, 02h
	    mov 	dx, di  ; columna
	    mov 	dh, 03d ; fila
	    mov 	bh, 0h
	    int 	10h
	    ret

m_cursr1:mov 	ah, 02h
	    mov 	dx, di  ; columna
	    mov 	dh, 06d ; fila
	    mov 	bh, 0h
	    int 	10h
	    ret


m_cursr2:mov 	ah, 02h
	    mov 	dx, di  ; columna
	    mov 	dh, 09d ; fila
	    mov 	bh, 0h
	    int 	10h
	    ret

m_cursr3:mov 	ah, 02h
	    mov 	dx, di  ; columna
	    mov 	dh, 12d ; fila
	    mov 	bh, 0h
	    int 	10h
	    ret

phrase:	mov 	di, 10d
lupi:	mov 	cl, [msg+di-10d]
	    call    m_cursr
	    call 	w_char
	    inc	di
	    cmp 	di, len
	    jb	lupi
	    ret

phrase1:	mov 	di, 20d
lupi1:	mov 	cl, [msg1+di-20d]
	    call    m_cursr1
	    call 	w_char
	    inc	di
	    cmp 	di, len1
	    jb	lupi1
	    ret

phrase2:	mov 	di, 30d
lupi2:	mov 	cl, [msg2+di-30d]
	    call    m_cursr2
	    call 	w_char
	    inc	di
	    cmp 	di, len2
	    jb	lupi2
	    ret

phrase3:	mov 	di,40d
lupi3:	mov 	cl, [msg3+di-40d]
	    call    m_cursr3
	    call 	w_char
	    inc	di
	    cmp 	di, len3
	    jb	lupi3
	    ret

section .data
msg	db 	"Buenas, buscaba una camiseta de alguien inspirador"
len 	equ	$-msg+10d

msg1	db 	"Puede ser Ghandi?"
len1	equ	$-msg1+20d

msg2	db 	"No, mediani"
len2 	equ	$-msg2+30d

msg3	db 	"Eso ess todo amikos"
len3 	equ	$-msg3+40d