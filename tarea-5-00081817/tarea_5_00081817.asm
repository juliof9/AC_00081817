org 	100h

section .text

	call 	grafique	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di

	mov 	bx, 175d	; Lleva el control de cuando parar

	mov 	si, 50d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_h

	mov 	bx, 40d
	mov	    si, 50d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v

	mov	    si, 175d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_v

    mov     bx, 110d
	mov 	si, 50d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_h

	mov 	bx, 125d
	mov	    si, 110d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_v

    mov     bx, 111
	mov 	si, 75d ; X -> Columna
	mov 	di, 125d ; Y -> Fila
	call 	linea_h

    mov     bx, 130
	mov 	si, 50d ; X -> Columna
	mov 	di, 140d ; Y -> Fila
	call 	linea_h

    mov 	bx, 175d
	mov	    si, 130d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_h

    mov 	bx, 141d
	mov	    si, 130d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_v

    mov 	bx, 74d
	mov	    si, 50d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_h

    mov 	bx, 141d
	mov	    si, 50d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_v

    mov 	bx, 125d
	mov	    si, 74d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_v

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafique:
    mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	
    mov	    ah, 0Ch
	mov	    al, 0001b
	int 	10h
	ret

linea_h: 
lupi_h:	
    mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	    dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, bx
	jne 	lupi_h
	ret

linea_v:
lupi_v:	
    mov 	cx, si ; Columna 
	mov	    dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, bx
	jne 	lupi_v
	ret

kb: 	
    mov	ah, 00h
	int 	16h
	ret