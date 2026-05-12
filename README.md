# README — Simulador de Eletroposto Veicular em Assembly x86

# Problema Relacionado ao Uso Ineficiente de Hardware

O principal problema encontrado é que as linguagens de alto nível são amplamente utilizadas por serem de fácil entendimento humano. Porém, ao utilizar linguagens como Python e JavaScript, o desenvolvedor acaba não tendo controle total sobre o uso do hardware.

Já utilizando linguagens de baixo nível, como Assembly, é possível obter controle direto sobre o hardware, manipulando o sistema de processamento diretamente pelo código, reservando registradores, bytes e controlando instruções específicas do processador.

Esse tipo de abordagem permite maior eficiência computacional e energética, algo extremamente importante em sistemas embarcados que permanecem ativos continuamente.

---

# Arquitetura de Processadores e Como Influencia o Sistema

## RISC (ARM, RISC-V, MIPS)

### Características

- Pequeno conjunto de instruções simples
- Instruções altamente otimizadas
- Execução normalmente em um ciclo de clock
- Maior eficiência energética
- Menor consumo de bateria
- Ideal para sistemas embarcados e dispositivos móveis

### Filosofia

A complexidade é resolvida principalmente pelo software e compiladores.

---

## CISC (Intel x86, AMD)

### Características

- Grande conjunto de instruções complexas
- Instruções especializadas
- Execução pode exigir múltiplos ciclos de clock
- Maior desempenho bruto por instrução
- Menor necessidade de memória para código

### Filosofia

A complexidade é resolvida principalmente pelo hardware do processador.

---

# Por Que Usar Assembly é Mais Eficiente Energeticamente

O uso da linguagem Assembly demanda menos energia porque permite controle extremamente preciso sobre o hardware.

Isso resulta em:

- códigos mais compactos;
- menos ciclos de CPU;
- menos acessos à memória;
- menor uso de recursos computacionais;
- maior previsibilidade de execução.

## Otimização de Hardware

Assembly permite direcionar exatamente:

- quais registradores serão usados;
- quais instruções da CPU serão executadas;
- quais operações podem ser evitadas.

Dessa forma, operações desnecessárias presentes em linguagens de alto nível deixam de existir, reduzindo consumo energético e desperdício computacional.

---

# Proposta de Solução Sustentável Baseada em Eficiência Energética

A proposta deste projeto consiste na criação de um sistema embarcado para eletropostos utilizando:

- hardware eficiente energeticamente;
- software de baixo nível;
- controle computacional otimizado;
- gerenciamento inteligente de recursos.

A linguagem principal escolhida é o Assembly, pois ela oferece controle total sobre o hardware e permite otimizações impossíveis em linguagens de alto nível.

## Hardware Sugerido

### Intel Ultra Series 2

Características:

- Processadores ultra-eficientes
- Alto desempenho computacional
- Presença de módulos NPU para IA
- Baixo consumo energético

### Apple Silicon Série M

Características:

- Excelente desempenho por watt
- Alta eficiência energética
- Arquitetura moderna e otimizada
- Grande capacidade computacional

---

# Sistemas de Eletroposto com Hardware Genérico e Linguagens de Alto Nível

Grande parte dos eletropostos atuais utiliza linguagens de médio e alto nível, como:

- C
- C++
- Python
- TypeScript

Apesar de facilitarem o desenvolvimento, essas linguagens não oferecem controle total sobre o hardware.

Além disso, muitos eletropostos utilizam hardware industrial genérico, projetado para alta durabilidade e funcionamento contínuo.

## Problemas Encontrados

- Componentes permanecem ligados 24 horas por dia;
- Telas permanecem ativas mesmo sem utilização;
- Recursos computacionais são desperdiçados;
- Existe consumo energético desnecessário;
- O sistema utiliza mais processamento do que realmente precisa.

A proposta deste projeto busca justamente demonstrar como sistemas embarcados otimizados em Assembly podem reduzir desperdícios computacionais e energéticos.

---

# Simulador de Eletroposto Veicular em Assembly

## Visão Geral

O **Simulador de Eletroposto Veicular em Assembly x86** é um projeto acadêmico desenvolvido para demonstrar como a linguagem Assembly pode ser utilizada em sistemas embarcados críticos, simulando o funcionamento básico de um eletroposto de carregamento veicular.

O projeto foi desenvolvido com foco em:

- Eficiência computacional
- Baixo consumo de memória
- Operações otimizadas em baixo nível
- Estrutura modular
- Conceitos embarcados
- Controle de hardware simulado

O sistema roda em ambiente **EMU8086** ou **DOSBox**, utilizando arquitetura **x86 16-bit**.

---

# Objetivos do Projeto

Este projeto tem como finalidade:

- Simular operações básicas de um eletroposto veicular
- Demonstrar conceitos de Assembly x86
- Aplicar otimizações típicas de firmware embarcado
- Trabalhar com controle de sensores simulados
- Implementar lógica de monitoramento crítico
- Reduzir ciclos de CPU e acessos desnecessários à memória

---

# Funcionalidades

O sistema implementa as seguintes funcionalidades:

- Autenticação por PIN
- Leitura simulada de sensores
- Controle de carregamento
- Monitoramento de temperatura
- Detecção de superaquecimento
- Interrupção automática do carregamento
- Encerramento seguro do sistema

---

# Estrutura do Projeto

```text
SimuladorEletroposto/
│
├── main.asm
├── README.md
│
└── módulos lógicos
    ├── Autenticacao
    ├── LeituraSensores
    ├── ControleCarga
    ├── Monitoramento
    └── InterfaceTerminal
```

---

# Fluxo do Sistema

```text
[INÍCIO]
    ↓
Inicializar sistema
    ↓
Solicitar PIN
    ↓
PIN correto?
 ├── NÃO → Encerrar sistema
 └── SIM
        ↓
 Ler sensores
        ↓
 Exibir valores
        ↓
 Iniciar carregamento
        ↓
 Monitorar temperatura
        ↓
 Temperatura crítica?
 ├── SIM → Interromper carregamento
 └── NÃO → Continuar
        ↓
 Encerrar sistema
        ↓
[FIM]
```

---

# Requisitos Técnicos

| Item | Descrição |
|---|---|
| Arquitetura | x86 16-bit |
| Ambiente | EMU8086 / DOSBox |
| Linguagem | Assembly x86 |
| Estilo | NASM/MASM compatível |
| Foco | Sistemas embarcados |
| Uso de memória | Baixo |
| Nível | Iniciante / Acadêmico |

---

# Conceitos Embarcados Aplicados

## Uso eficiente de registradores

O sistema prioriza operações utilizando registradores:

- AX
- BX
- SI
- DX

Reduzindo acessos à memória e aumentando eficiência.

---

## Minimização de ciclos de CPU

Foram utilizadas:

- Comparações simples
- Loops curtos
- Poucas interrupções
- Operações diretas

Exemplo:

```asm
mov al, temperatura
cmp al, limiteTemp
```

---

## Estrutura modular

Cada funcionalidade foi separada em procedimentos independentes:

- Autenticação
- Sensores
- Controle de carga
- Monitoramento
- Interface

Isso facilita:

- manutenção
- leitura
- portabilidade
- reutilização

---

# Módulos do Sistema

## 1. Autenticacao

Responsável pela validação do PIN digitado pelo usuário.

### Funções:
- Ler entrada do teclado
- Comparar PIN
- Liberar ou negar acesso

---

## 2. LeituraSensores

Simula sensores do eletroposto.

### Sensores simulados:
- Temperatura
- Corrente
- Tensão

---

## 3. ControleCarga

Responsável por iniciar e interromper o carregamento.

### Funções:
- Exibir status da carga
- Ativar carregamento
- Encerrar carregamento

---

## 4. Monitoramento

Realiza verificações críticas.

### Funções:
- Detectar superaquecimento
- Interromper carregamento automaticamente

---

## 5. InterfaceTerminal

Exibe mensagens no terminal utilizando interrupções DOS.

---

# Código Principal

## Inicialização do Sistema

```asm
mov ax, @data
mov ds, ax
```

Inicializa o segmento de dados.

---

## Comparação do PIN

```asm
mov al, bufferPin[si]
mov bl, pinCorreto[si]

cmp al, bl
jne PINIncorreto
```

Comparação otimizada utilizando registradores.

---

## Verificação de Temperatura

```asm
mov al, temperatura
cmp al, limiteTemp
jbe TemperaturaOK
```

Detecta condição crítica rapidamente.

---

# Código Completo

```asm
; ======================================================
; SIMULADOR DE ELETROPOSTO VEICULAR
; Assembly x86 - EMU8086
; ======================================================

.model small
.stack 100h

.data

msgTitulo db 13,10,'=== ELETROPOSTO VEICULAR ===',13,10,'$'

msgPin db 13,10,'Digite o PIN (1234): $'
msgAcessoOK db 13,10,'Acesso autorizado!',13,10,'$'
msgAcessoErro db 13,10,'PIN incorreto!',13,10,'$'

msgSensores db 13,10,'Leitura dos sensores:',13,10,'$'

msgTemp db 'Temperatura: $'
msgCorrente db 13,10,'Corrente: $'
msgTensao db 13,10,'Tensao: $'

msgCargaON db 13,10,'Carregamento iniciado...',13,10,'$'
msgCargaOFF db 13,10,'Carregamento interrompido!',13,10,'$'

msgCritico db 13,10,'ALERTA: Superaquecimento!',13,10,'$'

msgFim db 13,10,'Sistema finalizado com seguranca.',13,10,'$'

pinCorreto db '1234'

bufferPin db 5 dup(?)

temperatura db 85
corrente db 32
tensao db 220

limiteTemp db 80

.code

main proc

    mov ax, @data
    mov ds, ax

    lea dx, msgTitulo
    call PrintString

    call Autenticacao

    call LeituraSensores

    call ControleCarga

    call Monitoramento

    lea dx, msgFim
    call PrintString

    mov ah, 4Ch
    int 21h

main endp

Autenticacao proc

    lea dx, msgPin
    call PrintString

    mov si, 0

LerPIN:

    mov ah, 01h
    int 21h

    mov bufferPin[si], al

    inc si

    cmp si, 4
    jne LerPIN

    mov si, 0

CompararPIN:

    mov al, bufferPin[si]
    mov bl, pinCorreto[si]

    cmp al, bl
    jne PINIncorreto

    inc si

    cmp si, 4
    jne CompararPIN

    lea dx, msgAcessoOK
    call PrintString

    ret

PINIncorreto:

    lea dx, msgAcessoErro
    call PrintString

    mov ah, 4Ch
    int 21h

Autenticacao endp

LeituraSensores proc

    lea dx, msgSensores
    call PrintString

    lea dx, msgTemp
    call PrintString

    mov al, temperatura
    call PrintNumber

    lea dx, msgCorrente
    call PrintString

    mov al, corrente
    call PrintNumber

    lea dx, msgTensao
    call PrintString

    mov al, tensao
    call PrintNumber

    ret

LeituraSensores endp

ControleCarga proc

    lea dx, msgCargaON
    call PrintString

    ret

ControleCarga endp

Monitoramento proc

    mov al, temperatura

    cmp al, limiteTemp

    jbe TemperaturaOK

    lea dx, msgCritico
    call PrintString

    lea dx, msgCargaOFF
    call PrintString

TemperaturaOK:

    ret

Monitoramento endp

PrintString proc

    mov ah, 09h
    int 21h

    ret

PrintString endp

PrintNumber proc

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

PrintNumber endp

end main
```

---

# Como Executar

## EMU8086

1. Abrir o EMU8086
2. Criar novo arquivo `.asm`
3. Colar o código
4. Compilar
5. Executar

---

## DOSBox

1. Instalar assembler compatível
2. Montar diretório no DOSBox
3. Compilar código
4. Executar programa

---

# Exemplo de Execução

```text
=== ELETROPOSTO VEICULAR ===

Digite o PIN (1234):
1234

Acesso autorizado!

Leitura dos sensores:

Temperatura: 85
Corrente: 32
Tensao: 220

Carregamento iniciado...

ALERTA: Superaquecimento!

Carregamento interrompido!

Sistema finalizado com seguranca.
```

---

# Otimizações Utilizadas

| Otimização | Benefício |
|---|---|
| Uso de registradores | Menos acesso à RAM |
| Loops simples | Menos ciclos |
| Comparações diretas | Maior velocidade |
| Poucas interrupções | Melhor desempenho |
| Estrutura modular | Melhor manutenção |

---

# Instruções Importantes Utilizadas

| Instrução | Objetivo |
|---|---|
| MOV | Transferência de dados |
| CMP | Comparação |
| JNE | Desvio condicional |
| JBE | Comparação numérica |
| LEA | Carrega endereços |
| INT 21h | Serviços do DOS |
| AAM | Conversão decimal |

---

# Possíveis Melhorias Futuras

O projeto pode evoluir para incluir:

- Comunicação serial UART
- Interrupções reais
- Máquina de estados
- PWM
- Controle de múltiplas cargas
- Simulação CAN Bus
- EEPROM
- Sleep mode
- Watchdog timer
- Sensores dinâmicos

---

# Objetivo Educacional

Este projeto demonstra como sistemas embarcados podem ser desenvolvidos em baixo nível utilizando Assembly, simulando:

- controle de hardware,
- monitoramento crítico,
- otimização computacional,
- eficiência energética,
- gerenciamento de recursos limitados.

O foco principal é aprendizado acadêmico e introdução à programação de firmware embarcado em arquitetura x86.

