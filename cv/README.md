# CV (HTML) — Raynner Bernardes Rabelo

Este diretório contém uma versão em HTML do currículo, preparada para impressão em **A4** em layout de **duas colunas** (sidebar + conteúdo principal).

## Como abrir

1. Abra o arquivo `cv/CV_Raynner_Bernardes_Rabelo.html` no navegador (Chrome/Edge/Firefox).
2. Confira se o layout está correto.

## Como imprimir / salvar em PDF

1. No navegador, abra o menu **Imprimir** (`Ctrl+P` / `Cmd+P`).
2. Selecione **Salvar como PDF** (ou uma impressora).
3. Configurações recomendadas:
   - **Papel:** A4
   - **Margens:** Padrão (o arquivo já define `@page` para A4)
   - **Escala:** 100% (se necessário, ajuste para caber em 1 página)
   - **Cabeçalhos e rodapés:** desativar

## Estrutura do layout

- **Coluna esquerda (sidebar):** Projetos, Competências, Idiomas, Links.
- **Coluna direita:** Objetivo, Resumo Profissional, Experiência, Formação.

O CSS também inclui:

- Regras de impressão em A4 (`@page size: A4`).
- Evita que seções “quebrem” no meio da página (`break-inside: avoid; page-break-inside: avoid;`).

## Como personalizar

Edite o arquivo `CV_Raynner_Bernardes_Rabelo.html` e ajuste:

- **Dados pessoais:** no topo da sidebar (nome, localidade, modalidade, telefone, e-mail).
- **Links:** seção **Links** (LinkedIn/GitHub).
- **Projetos:** cards na seção **Projetos**.
- **Competências:** lista de *chips* na seção **Competências**.
- **Experiências:** blocos `.job` na seção **Experiência**.
- **Formação:** itens `.edu` na seção **Formação**.

Se precisar forçar/evitar que algo vá para a próxima página, você pode mover blocos de seção (por exemplo `.job`) ou reduzir levemente o texto para manter a paginação.
