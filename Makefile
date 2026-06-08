DOC_DIR = TCC_document
BUILD_DIR = build
MAIN = main

all: pdf

pdf:
	mkdir -p $(DOC_DIR)/$(BUILD_DIR)
	# 1. Primeira compilação para ler a estrutura
	-cd $(DOC_DIR) && pdflatex -output-directory=$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex
	# 2. Processa as referências bibliográficas (lê o arquivo .bib)
	-cd $(DOC_DIR) && bibtex $(BUILD_DIR)/$(MAIN)
	# 3. Compila mais duas vezes para encaixar as referências e consertar o Sumário
	-cd $(DOC_DIR) && pdflatex -output-directory=$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex
	-cd $(DOC_DIR) && pdflatex -output-directory=$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex
	# Copia o PDF gerado para a raiz do projeto
	cp $(DOC_DIR)/$(BUILD_DIR)/$(MAIN).pdf ./TCC_Matheus.pdf

clean:
	rm -rf $(DOC_DIR)/$(BUILD_DIR)/*
	rm -f ./TCC_Matheus.pdf
