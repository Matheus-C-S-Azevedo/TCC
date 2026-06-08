# Meu TCC

Este repositório contém os arquivos e referências para a escrita do meu Trabalho de Conclusão de Curso (TCC).

## Estrutura do Projeto

- `Material_de_apoio/`: Materiais adicionais, anotações e artigos para a pesquisa.
- `TCC_document/`: Contém os arquivos fonte em LaTeX (`main.tex`, etc).
  - `build/`: Pasta onde os arquivos temporários e o PDF gerado são armazenados durante a compilação.
- `Referências/`: Arquivos de bibliografia e referências.

## Como Compilar

Para compilar o documento LaTeX, você pode utilizar o comando `make` na raiz do projeto, caso possua o `pdflatex` e o `make` instalados.

```bash
make
```
Caso não tenha estes pacotes instalados, você pode instalá-los da seguinte maneira:

```bash
sudo apt update
sudo apt install build-essential
```
esse comando irá instalar o make, e para instalar o pdflatex você pode utilizar o comando:

```bash
sudo apt install texlive texlive-latex-extra texlive-lang-portuguese texlive-science
```

O arquivo final em PDF será copiado automaticamente para a pasta principal (`root`) do repositório como `TCC_Matheus.pdf`.

Para limpar os arquivos de build gerados:

```bash
make clean
```
