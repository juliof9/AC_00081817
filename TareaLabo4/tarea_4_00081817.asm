    org     100h
    ;Ejercicio1
    ;carnet=00081817 = 25 = 25/5 = 5
    ;Respuesta=5, "En el segundo"(Un clasico xd)

    mov ax, 000h
    add ax, 8d
    add ax, 1d
    add ax, 8d
    add ax, 1d
    add ax, 7d
    mov cl, 5d
    div cl