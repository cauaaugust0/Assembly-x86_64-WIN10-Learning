### Assembly x86-64 — Windows

---

# Repositório dedicado ao meu estudo de Assembly x86-64 no Windows 10, utilizando principalmente NASM e as ferramentas de desenvolvimento do Windows.

O objetivo é entender, através de implementação e experimentação, como o software funciona em um nível mais próximo do hardware, estudando não apenas a sintaxe do Assembly, mas também os mecanismos envolvidos na execução de um programa.

# Este repositório é utilizado para estudar e experimentar conceitos como:

- Assembly x86-64

- Registradores

- Stack e gerenciamento de memória

- Calling conventions

- Windows x64 ABI

- Passagem de parâmetros

- Retorno de funções

- Chamadas de funções em C

- Windows API (WinAPI)

- Linkagem de programas

- Representação de dados na memória

- Strings e buffers

- Análise de execução

- Segurança e comportamento de memória

- A ideia é entender o que está acontecendo por baixo do código, e não apenas fazer os programas funcionarem.

---

# Ambiente

- Sistema operacional: Windows 10

- Arquitetura: x86-64

- Assembly: NASM

- Linguagem auxiliar: C

- Linker: Microsoft Linker (link.exe)

- Ferramentas de análise: debugger/disassembler quando necessário

---

# Metodologia

Os códigos deste repositório são pequenos experimentos desenvolvidos durante o estudo.

A abordagem é partir de um conceito, implementar algo mínimo para observá-lo e então analisar seu comportamento.

Por exemplo:

Código
  ↓
Compilação / Assembly
  ↓
Registradores e memória
  ↓
Calling Convention
  ↓
Execução
  ↓
Observação no debugger

O objetivo é construir gradualmente uma compreensão de como uma instrução escrita em Assembly participa da execução real de um programa no Windows.

---

# Sobre os códigos
Alguns experimentos são propositalmente simples ou utilizam construções inseguras, como buffers sem verificação de tamanho.
Esses casos existem para estudo de memória e comportamento de programas e não representam código destinado a produção.
Este repositório é, acima de tudo, um registro do meu processo de aprendizado de Assembly x86-64 e funcionamento de programas no Windows.
