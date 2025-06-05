# SimuladorMIPS_2025
Trabalho feito para a P2 da matéria de Arquitetura de computadores.

## Descrição

Este projeto é um simulador para a arquitetura MIPS, desenvolvido para fins educacionais. Ele permite executar instruções básicas em assembly MIPS, visualizar o estado dos registradores e da memória, e acompanhar o fluxo de execução passo a passo.

---

## Funcionalidades

- Suporte a instruções de transferência de dados (`lw`, `sw`, `lh`, `sh`)
- Operações lógicas (`and`, `or`, `nor`, `andi`, `ori`)
- Operações aritméticas (`add`, `sub`, `addi`)
- Controle de fluxo com desvio condicional (`beq`, `bne`) e incondicional (`j`)
- Operações de shift (`sll`, `srl`)
- Comparações (`slt`, `slti`)
- Execução passo a passo e execução completa
- Visualização de registradores e memória
- Log detalhado da execução

---

## Como usar

### Executando o simulador

1. Clone o repositório:

```bash
git clone https://github.com/seuusuario/simulador-mips.git
cd simulador-mips
```
2. Execute o simulador:

```bash
python src/main.py
```
Observação: Certifique-se de ter o Python 3 instalado.

3. Carregue seu código MIPS no simulador e acompanhe a execução.

Estrutura do projeto
`src/:` Código-fonte do simulador.

`tests/:` Scripts de testes automáticos para validação das instruções.

`README.md:` Documentação do projeto.
