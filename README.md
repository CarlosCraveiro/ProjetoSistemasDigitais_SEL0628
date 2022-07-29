# ProjetoSistemasDigitais_SEL0628
Repositório para organizar o projeto final da disciplina de Sistemas Digitais - SEL0628

# Grupo 2 -
Asafe Henrique de Oliveira França - 
12745212
Barbara Fernandes Madera - 11915032
Carlos Henrique Craveiro Aquino Veras - 12547187
Guilherme Castanon Silva Pereira - 11801140
Mateus Santos Messias - 12548000
Pedro Borges Gudin - 12547997

## Organização de pastas
- Pasta \src -> Arquivos fonte dos circuitos digitais
- Pasta \rtl -> Scripts para geração dos rtls das partes 3 e 4
- Pasta \sim -> Arquivos e diretorios relacionados à simulação
- Pasta \sim\scripts -> Scripts para tornar os códigos fonte simulaveis pelo iverilog
- Pasta \sim\src -> Utilizada durante o funcionamento do makefile
- Pasta \sim\vcd -> Localização dos arquivos vcd gerados pelo tesrbench criado

## Requisitos para rodar a simulação e visualização dos arquivos vcd
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

## Requisitos para exibir os Rtls
Para exibir os rtls dos circuitos contidos neste repositório, primeiro garanta que você possui o programa *gv (ghost script viewer)* além do já mensionado *YosysHQ* instalado em seu computador, em seguida rode o comando
```bash
$ make rtl
```

### Observação
É fornecido para a simulação um arquivo de test_bench escrito em verilog que encontra-se no diretório `\sim`.
Também é informado que o projeto foi desenvolvido em um sistema linux.
