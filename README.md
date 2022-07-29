# ProjetoSistemasDigitais_SEL0628
Repositório para organizar o projeto final da disciplina de Sistemas Digitais - SEL0628

## Requisitos para rodar a simulação
Para rodar a simulação é necessário que você tenha instalado em seu computador os programas
`YosysHQ (yosys)`, `Gtkwave (gtkwave)` e `Icarus Verilog (iverilog)`

## Uso do Makefile do projeto
Digite as linhas abaixo no terminal de seu shell
```bash
$ make
...
$ make simulation
...
$ make run
```
O Makefile também possui o alvo "clean"

### Observação
É fornecido para a simulação um arquivo de test_bench escrito em verilog que encontra-se no diretório `\sim`.
Também é informado que o projeto foi desenvolvido em um sistema linux.
