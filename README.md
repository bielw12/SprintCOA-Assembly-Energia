# SprintCOA-Assembly-Energia
Simulador de Eletroposto Veicular em Assembly x86
Visão Geral

O Simulador de Eletroposto Veicular em Assembly x86 é um projeto acadêmico desenvolvido para demonstrar como a linguagem Assembly pode ser utilizada em sistemas embarcados críticos, simulando o funcionamento básico de um eletroposto de carregamento veicular.

O projeto foi desenvolvido com foco em:

Eficiência computacional
Baixo consumo de memória
Operações otimizadas em baixo nível
Estrutura modular
Conceitos embarcados
Controle de hardware simulado

O sistema roda em ambiente EMU8086 ou DOSBox, utilizando arquitetura x86 16-bit.

Objetivos do Projeto

Este projeto tem como finalidade:

Simular operações básicas de um eletroposto veicular
Demonstrar conceitos de Assembly x86
Aplicar otimizações típicas de firmware embarcado
Trabalhar com controle de sensores simulados
Implementar lógica de monitoramento crítico
Reduzir ciclos de CPU e acessos desnecessários à memória
Funcionalidades

O sistema implementa as seguintes funcionalidades:

Autenticação por PIN
Leitura simulada de sensores
Controle de carregamento
Monitoramento de temperatura
Detecção de superaquecimento
Interrupção automática do carregamento
Encerramento seguro do sistema
Estrutura do Projeto
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
Fluxo do Sistema
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
Requisitos Técnicos
Item	Descrição
Arquitetura	x86 16-bit
Ambiente	EMU8086 / DOSBox
Linguagem	Assembly x86
Estilo	NASM/MASM compatível
Foco	Sistemas embarcados
Uso de memória	Baixo
Nível	Iniciante / Acadêmico
Conceitos Embarcados Aplicados
Uso eficiente de registradores

O sistema prioriza operações utilizando registradores:

AX
BX
SI
DX

Reduzindo acessos à memória e aumentando eficiência.

Minimização de ciclos de CPU

Foram utilizadas:

Comparações simples
Loops curtos
Poucas interrupções
Operações diretas

Exemplo:

mov al, temperatura
cmp al, limiteTemp
Estrutura modular

Cada funcionalidade foi separada em procedimentos independentes:

Autenticação
Sensores
Controle de carga
Monitoramento
Interface

Isso facilita:

manutenção
leitura
portabilidade
reutilização
Módulos do Sistema
1. Autenticacao

Responsável pela validação do PIN digitado pelo usuário.

Funções:
Ler entrada do teclado
Comparar PIN
Liberar ou negar acesso
2. LeituraSensores

Simula sensores do eletroposto.

Sensores simulados:
Temperatura
Corrente
Tensão
3. ControleCarga

Responsável por iniciar e interromper o carregamento.

Funções:
Exibir status da carga
Ativar carregamento
Encerrar carregamento
4. Monitoramento

Realiza verificações críticas.

Funções:
Detectar superaquecimento
Interromper carregamento automaticamente
5. InterfaceTerminal

Exibe mensagens no terminal utilizando interrupções DOS.

Código Principal
Inicialização do Sistema
mov ax, @data
mov ds, ax

Inicializa o segmento de dados.

Comparação do PIN
mov al, bufferPin[si]
mov bl, pinCorreto[si]

cmp al, bl
jne PINIncorreto

Comparação otimizada utilizando registradores.

Verificação de Temperatura
mov al, temperatura
cmp al, limiteTemp
jbe TemperaturaOK

Detecta condição crítica rapidamente.
