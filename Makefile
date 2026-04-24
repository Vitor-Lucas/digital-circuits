# Nome da branch (passado como argumento)
BRANCH ?= minha-branch
CURRENT_BRANCH := $(shell git branch --show-current)

# Criar e trocar para uma nova branch
branch:
	git switch -c $(BRANCH)

# Commit com mensagem
commit:
	@read -p "Mensagem do commit: " msg; \
	git add .; \
	git commit -m "$$msg"

# Push da branch atual
push:
	git push -u origin $(CURRENT_BRANCH)

# Tudo junto: commit + push
deploy:
	@read -p "Mensagem do commit: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push -u origin $(BRANCH)
