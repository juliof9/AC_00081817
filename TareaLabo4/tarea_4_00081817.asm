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