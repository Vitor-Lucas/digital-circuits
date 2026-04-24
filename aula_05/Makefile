# --- Variáveis de Configuração ---
SRC_DIR     = src
SIM_DIR     = sim
OUTPUT_DIR  = .outputs

# Nomes dos arquivos (ajuste se necessário)
TOP_MODULE  = atividade2
TB_MODULE   = atividade2_tb

# Caminhos de Saída
VVP_OUT     = $(OUTPUT_DIR)/simulacao.vvp
VCD_OUT     = $(SIM_DIR)/$(TB_MODULE).vcd

# Fontes (buscando da pasta src)
SOURCES     = $(SRC_DIR)/$(TOP_MODULE).v  $(SRC_DIR)/$(TB_MODULE).v

# --- Regras do Make ---

.DEFAULT_GOAL := help

## help: Exibe esta mensagem de ajuda e dicas de uso.
help:
	@echo "================================================================="
	@echo "Uso: make [comando]"
	@echo "================================================================="
	@echo ""
	@echo "Comandos disponíveis:"
	@grep -E '^##' $(MAKEFILE_LIST) | sed -e 's/## //g' | column -t -s ':'
	@echo ""
	@echo "-----------------------------------------------------------------"
	@echo "💡 DICA DE MESTRE:"
	@echo "Se o GTKWave já estiver aberto, não precisa fechá-lo!"
	@echo "1. Altere seu código Verilog."
	@echo "2. Rode 'make simulate' no terminal."
	@echo "3. No GTKWave, clique no botão 'Reload' (ícone de setas azuis)."
	@echo "-----------------------------------------------------------------"

## all: Atalho para compilar, simular e abrir o GTKWave de uma vez.
all: compile simulate view

## compile: Cria .outputs e compila os arquivos de src usando Icarus.
compile:
	@echo "==> Criando diretórios e compilando..."
	@mkdir -p $(OUTPUT_DIR)
	@mkdir -p $(SIM_DIR)
	iverilog -o $(VVP_OUT) $(SOURCES)

## simulate: Executa a simulação e move o VCD para a pasta sim.
simulate: compile
	@echo "==> Executando simulação..."
	# O comando vvp gera o VCD. Se o seu TB usa $dumpfile("arquivo.vcd"),
	# passamos o argumento para garantir que ele caia na pasta sim:
	vvp -n $(VVP_OUT) +VCD_PATH=$(VCD_OUT)

## view: Abre o GTKWave para visualização das formas de onda.
view:
	@echo "==> Abrindo GTKWave..."
	gtkwave $(VCD_OUT) &

## clean: Apaga as pastas de simulação e outputs
clean:
	@echo "==> Limpando pastas geradas..."
	rm -rf $(SIM_DIR) $(OUTPUT_DIR)

.PHONY: all compile simulate view clean help