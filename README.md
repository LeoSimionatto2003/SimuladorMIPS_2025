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

## 5. Requisitos

- Python 3.8 ou superior  
- Para instalar dependências (caso existam bibliotecas externas), execute:  
  ```bash
  pip install -r requirements.txt

## 6. Como usar
### 6.1 Estrutura do projeto
```src/``` — Código-fonte do simulador.

```tests/``` — Scripts de testes automáticos para validação das instruções.

```README.md``` — Documentação do projeto.

### 6.2 Executando o simulador

1. Clone o repositório:

```bash
git clone https://github.com/LeoSimionatto2003/SimuladorMIPS_2025.git
cd SimuladorMIPS_2025 ```


2. Execute o simulador:
```python src/main.py```
💡 Certifique-se de ter o Python 3 instalado corretamente no sistema.
3. Carregue seu código MIPS no simulador e acompanhe a execução passo a passo ou completa.

### 7. Exemplo de código MIPS
Você pode testar o simulador com o seguinte programa:

```addi $t0, $zero, 5
addi $t1, $zero, 10
add $t2, $t0, $t1```
Esse programa carrega os valores 5 e 10 nos registradores `$t0` e `$t1`, respectivamente, e soma ambos armazenando o resultado em `$t2`.

### 8. Como foi feito
O simulador foi desenvolvido em Python puro, com foco na clareza e organização dos componentes internos. A seguir, os principais aspectos técnicos da implementação:

- Interface gráfica:
Utiliza tkinter para fornecer uma interface intuitiva com botões para execução passo a passo, execução completa e visualização dos dados da simulação.

- Leitura e parsing de instruções:
O código MIPS é lido de um arquivo .txt, e as instruções são convertidas para uma estrutura interna que facilita a execução.

- Registradores e memória:
São simulados com dicionários e listas, respeitando os limites de endereçamento e nomes simbólicos da arquitetura MIPS.

- Controle de execução:
Um loop de execução interpreta linha por linha e atualiza o contador de programa (PC), respeitando desvios e saltos definidos no código MIPS.

- Log e visualização:
A execução de cada instrução gera uma entrada no log interno que é mostrado ao usuário. Os estados de memória e registradores também são atualizados em tempo real na interface.

O projeto foi desenvolvido com o intuito de seguir os princípios de separação de responsabilidades e facilitar futuras expansões.

