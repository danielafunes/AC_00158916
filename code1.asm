    org     100h
    
    section .text
    
    ;Escribir cuatro iniciales  de su nombre completo empezando  en la direccion de memoria 200h
   
    mov     AL, "S"
    mov     BL, "D"
    mov     CL, "F"
    mov     DL, "E"
    
    mov     byte [200h], AL
    mov     byte [201h], BL
    mov     byte [202h], CL
    mov     byte [203h], DL

    ;DIRECCIONAMIENTO DIRECTO

    mov     AX, [200h]

    ;DIRECCIONAMINETO INDIRECTO POR REGRISTRP 
    mov     BX, [201h]
    mov     CX, [BX]

    ;DIRECCIONAMIENTO INDIRECTO BASE MAS INDICE
    mov     DX, [BX+SI]
  
   ;DIRECCIONAMIENTO RELATIVO POR REGISTRO
    mov     DI, [SI+203h]


    int     20h
