# Circuitos Digitais em Verilog

> ⚠️ **Repositório em Desenvolvimento** - Este repositório contém estudos e projetos de eletrônica digital e ainda está em fase de desenvolvimento. Novos conteúdos e melhorias serão adicionados continuamente.

## Descrição

Este repositório contém implementações de circuitos digitais e conceitos fundamentais de eletrônica digital usando **Verilog**. Cada pasta representa uma aula ou unidade temática com exemplos práticos, testes e simulações.

## 📚 Estrutura de Aulas

| Aula | Descrição | Pasta |
|------|-----------|-------|
| **Aula 02** | Porta Lógica Inversora (NOT) - Introdução a portas lógicas básicas | [aula_02/inversor](aula_02/inversor) |
| **Aula 03** | ELTD10 Projeto - Operações com Bits (incrementador, representações numéricas, slicing) | [aula_03/ELTD10-Projeto](aula_03/ELTD10-Projeto) |
| **Aula 05** | Introdução à Álgebra Booleana e Portas Lógicas (formas canônicas e implementação com portas) | [aula_05](aula_05) |

## 🛠️ Ferramentas Utilizadas

- **Linguagem**: Verilog
- **Simulador**: Icarus Verilog
- **Visualizador de Formas de Onda**: GTKWave
- **Build System**: Makefile

## 🚀 Como Usar

Cada pasta contém um `Makefile` que automatiza a compilação e simulação:

```bash
cd aula_XX/projeto/
make          # Compila e executa a simulação
make clean    # Remove arquivos temporários
```

Para visualizar as formas de onda geradas:

```bash
gtkwave sim/nomedobenchmark_tb.vcd
```

## 📁 Estrutura de Pastas

Cada projeto segue esta organização padrão:

```
projeto/
├── Makefile              # Automação de compilação e simulação
├── README                # Documentação específica do projeto
├── src/                  # Código-fonte Verilog
│   ├── modulo.v         # Implementação do circuito
│   └── modulo_tb.v      # Testbench (simulação)
├── sim/                  # Resultados de simulação
│   └── modulo_tb.vcd    # Formas de onda (VCD)
└── .outputs/            # Arquivos compilados (ignorados)
    └── simulacao.vvp    # Bytecode do Icarus Verilog
```

## 📖 Conteúdo

### Aula 02: Porta Lógica Inversora
- Implementação de uma porta NOT
- Testbench básico
- Verificação funcional

### Aula 03: Operações com Bits
- **Atividade 1**: Incrementador de 8 bits
- **Atividade 2**: Representações numéricas (binária, decimal, octal, hexadecimal)
- **Atividade 3**: Extrator de bits e slicing

### Aula 05: Álgebra Booleana
- **Atividade 1**: Formas canônicas (SOP, POS, forma simplificada) usando operadores
- **Atividade 2**: Implementação com portas lógicas instantiadas (NOT, AND, OR)


## 📝 Notas

- Todos os projetos foram testados com Icarus Verilog 10+
- Os testes passam corretamente em ambientes Linux
- Recomenda-se usar GTKWave para visualizar as simulações

---

**Última atualização**: Abril de 2026
