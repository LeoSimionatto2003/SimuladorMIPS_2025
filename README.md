# Simulador MIPS
## Leonardo Simionatto - RA: `113113`

## 1. Introdução

Este documento apresenta um simulador para a arquitetura MIPS, desenvolvido com o objetivo de auxiliar no aprendizado e compreensão do funcionamento das instruções básicas da linguagem assembly MIPS. O simulador é capaz de interpretar e executar instruções, manipulando registradores e memória, além de possibilitar a execução passo a passo, visualização de estados internos e teste automatizado.

---

## 2. Objetivos

- Simular as principais instruções da arquitetura MIPS.  
- Permitir a execução e depuração de pequenos programas em assembly.  
- Proporcionar um ambiente educacional para o estudo da arquitetura de computadores.  
- Facilitar a análise do comportamento das instruções e do fluxo do programa.

---

## 3. Funcionalidades Principais

### 3.1 Suporte a Instruções

O simulador implementa as seguintes categorias de instruções:

- **Transferência de Dados:**  
  `lw` (load word), `sw` (store word), `lh` (load halfword), `sh` (store halfword).

- **Operações Lógicas:**  
  `and`, `or`, `nor`, `andi`, `ori`.

- **Operações Aritméticas:**  
  `add`, `sub`, `addi`.

- **Desvios Condicionais:**  
  `beq`, `bne`.

- **Desvio Incondicional:**  
  `j` (jump).

- **Operações de Shift:**  
  `sll` (shift left logical), `srl` (shift right logical).

- **Comparações:**  
  `slt`, `slti`.

### 3.2 Execução

- Execução passo a passo para análise detalhada.  
- Execução completa automática.  
- Atualização do contador de programa (PC) após cada instrução.  
- Atualização dos registradores e da memória conforme as instruções executadas.

### 3.3 Visualização

- Exibição do estado dos registradores após execução.  
- Visualização da memória modificada.  
- Log detalhado com a linha executada, instrução e valores envolvidos.

---

## 4. Arquitetura do Simulador

O simulador é estruturado em módulos que implementam as funcionalidades principais:

- **Parser:**  
  Interpreta o código assembly, identifica instruções e operandos.

- **Executor:**  
  Responsável pela execução das instruções, atualização de registradores e memória.

- **Memória:**  
  Representada como uma estrutura que simula a RAM, acessível para operações de load e store.

- **Registradores:**  
  Vetor ou dicionário que armazena os 32 registradores da arquitetura MIPS, com manipulação de nomes simbólicos (ex: `$t0`, `$s1`).

- **Controle de Fluxo:**  
  Gerencia saltos e desvios, atualizando o contador de programa (PC).

---

## Como usar

### Executando o simulador

1. Clone o repositório:

```bash
git clone https://github.com/LeoSimionatto2003/SimuladorMIPS_2025.git
cd SimuladorMIPS_2025

```
2. Execute o simulador:

```bash
python src/main.py
```
Observação: Certifique-se de ter o Python 3 instalado.

3. Carregue seu código MIPS no simulador e acompanhe a execução.

Estrutura do projeto:

`src/:` Código-fonte do simulador.

`tests/:` Scripts de testes automáticos para validação das instruções.

`README.md:` Documentação do projeto.
