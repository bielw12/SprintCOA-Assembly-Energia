bits 16
org 100h

jmp start

msgTitulo   db 13,10,'=== ELETROPOSTO VEICULAR ===',13,10,'$'
msgPin      db 13,10,'Digite o PIN (1234): $'
msgAcessoOK db 13,10,'Acesso autorizado!',13,10,'$'
msgAcessoErro db 13,10,'PIN incorreto!',13,10,'$'
msgSensores db 13,10,'Leitura dos sensores:',13,10,'$'
msgTemp     db 13,10,'Temperatura: $'
msgCorrente db 13,10,'Corrente: $'
msgTensao   db 13,10,'Tensao: $'
msgCargaON  db 13,10,'Carregamento iniciado...',13,10,'$'
msgCargaOFF db 13,10,'Carregamento interrompido!',13,10,'$'
msgCritico  db 13,10,'ALERTA: Superaquecimento!',13,10,'$'
msgFim      db 13,10,'Sistema finalizado com seguranca.',13,10,'$'

pinCorreto  db '1234'
bufferPin   db 5 dup(0)

temperatura db 85
corrente    db 32
tensao      db 22
limiteTemp  db 80

start:
    mov dx, msgTitulo
    call PrintString
    call Autenticacao
    call LeituraSensores
    call ControleCarga
    call Monitoramento
    mov dx, msgFim
    call PrintString
    mov ah, 4Ch
    int 21h

Autenticacao:
    mov dx, msgPin
    call PrintString
    mov si, 0
LerPIN:
    mov ah, 01h
    int 21h
    mov [bufferPin + si], al
    inc si
    cmp si, 4
    jne LerPIN
    mov si, 0
CompararPIN:
    mov al, [bufferPin + si]
    mov bl, [pinCorreto + si]
    cmp al, bl
    jne PINIncorreto
    inc si
    cmp si, 4
    jne CompararPIN
    mov dx, msgAcessoOK
    call PrintString
    ret
PINIncorreto:
    mov dx, msgAcessoErro
    call PrintString
    mov ah, 4Ch
    int 21h

LeituraSensores:
    mov dx, msgSensores
    call PrintString
    mov dx, msgTemp
    call PrintString
    mov al, [temperatura]
    call PrintNumber
    mov dx, msgCorrente
    call PrintString
    mov al, [corrente]
    call PrintNumber
    mov dx, msgTensao
    call PrintString
    mov al, [tensao]
    call PrintNumber
    ret

ControleCarga:
    mov dx, msgCargaON
    call PrintString
    ret

Monitoramento:
    mov al, [temperatura]
    cmp al, [limiteTemp]
    jbe TemperaturaOK
    mov dx, msgCritico
    call PrintString
    mov dx, msgCargaOFF
    call PrintString
TemperaturaOK:
    ret

PrintString:
    mov ah, 09h
    int 21h
    ret

PrintNumber:
    aam
    add ax, 3030h
    mov bx, ax
    mov dl, bh
    mov ah, 02h
    int 21h
    mov dl, bl
    mov ah, 02h
    int 21h
    ret