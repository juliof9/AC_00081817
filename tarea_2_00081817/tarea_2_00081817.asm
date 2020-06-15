    org     100h
    ;Ejercicio1
    ;carnet=00081817 = 25 = 25/5 = 5
    ;Respuesta=5, "En el segundo"(Un clasico para mi xd)

    mov ax, 000h
    add ax, 8d
    add ax, 1d
    add ax, 8d
    add ax, 1d
    add ax, 7d
    mov cl, 5d
    div cl

    mov cl, "E"
    mov [200h], cl
    mov cl, "n"
    mov [201h], cl
    mov cl, " "
    mov [202h], cl
    mov cl, "e"
    mov [203h], cl
    mov cl, "l"
    mov [204h], cl
    mov cl, " "
    mov [205h], cl
    mov cl, "s"
    mov [206h], cl
    mov cl, "e"
    mov [207h], cl
    mov cl, "g"
    mov [208h], cl
    mov cl, "u"
    mov [209h], cl
    mov cl, "n"
    mov [20Ah], cl
    mov cl, "d"
    mov [20Bh], cl
    mov cl, "o"
    mov [20Ch], cl

;Ejercicio2

        mov ax, 0000h
        mov al, 2d
        mov bx, 210h
        mov cx, 2d
esti:   mul cx
        mov [bx], ax
        cmp ah, 00h
        ja second
        je first
second: add bx, 2h
        jmp next
first:  add bx, 1h
next:   cmp bx, 21Fh
        jb esti
        int 10h

;Ejercicio3

    mov ax, 0000h 
    mov bx, 0000h
    mov cx, 0000h
    mov ax, 0d
    mov di, 0d
    mov cx, 0015d
    mov dx, 1d

fibonacci: mov    [di + 220h], ax    
    
    inc di
    mov bx, ax
    add ax, dx
    mov dx, bx

    loop fibonacci
    
    int 20h        