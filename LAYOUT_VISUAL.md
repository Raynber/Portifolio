# Layout Visual do Dashboard Financeiro

```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                          DASHBOARD FINANCEIRO EMPRESARIAL                           │
│                                                                                     │
│  Período de Análise: [01/05/2024] até [01/10/2024]  [Atualizar Dashboard]        │
└─────────────────────────────────────────────────────────────────────────────────────┘

┌──────────────────────────┬──────────────────────────┬──────────────────────────────┐
│   RECEITA TOTAL          │   DESPESA TOTAL          │   LUCRO LÍQUIDO              │
│                          │                          │                              │
│   R$ 236.000,00          │   R$ 104.500,00          │   R$ 131.500,00              │
│   ▲ (Verde)              │   ▼ (Vermelho)           │   ★ (Verde/Vermelho)         │
└──────────────────────────┴──────────────────────────┴──────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────────────────────┐
│  Filtrar por Categoria: [Todas                          ▼]                         │
└─────────────────────────────────────────────────────────────────────────────────────┘

┌──────────────────────────┬──────────────────────────┬──────────────────────────────┐
│  RECEITAS x DESPESAS     │  FLUXO DE CAIXA MENSAL   │  DESPESAS POR CATEGORIA      │
│  ┌────────────────────┐  │  ┌────────────────────┐  │  ┌────────────────────────┐  │
││  │    ███             │  │  │                    │  │  │        ╱───╲            │  │
││  │    ███   ▄▄▄       │  │  │        ╱────╲      │  │  │     ╱─────────╲        │  │
││  │  ▄▄███   ███       │  │  │    ╱───      ╲───  │  │  │   ●─────●─────●──●    │  │
││  │  ███▄▄▄  ███  ▄▄▄  │  │  │  ╱              ╲  │  │  │    │Salár│Forn│Imp│    │  │
││  │  ███ ███ ███  ███  │  │  │ ╱                  │  │  │    │ ios │eced│ost│    │  │
││  │  Mai Jun Jul Ago   │  │  │                    │  │  │    │     │ores│os │    │  │
││  └────────────────────┘  │  └────────────────────┘  │  └────────────────────────┘  │
││  █ Receitas             │  ─── Saldo Acumulado    │  ● Salários    ● Impostos    │
││  █ Despesas             │                          │  ● Fornecedores ● Infraest.  │
│└──────────────────────────┴──────────────────────────┴──────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────────────────────┐
│  DATA       CATEGORIA      DESCRIÇÃO                    TIPO        VALOR           │
│  ─────────────────────────────────────────────────────────────────────────────────  │
│  15/05/24   Vendas         Venda Produto A            Receita     R$ 45.000,00     │
│  05/05/24   Salários       Folha de Pagamento         Despesa     R$ 25.000,00     │
│  10/06/24   Serviços       Consultoria Estratégica    Receita     R$ 38.000,00     │
│  15/06/24   Fornecedores   Compra Matéria Prima       Despesa     R$ 18.000,00     │
│  20/07/24   Vendas         Venda Produto B            Receita     R$ 52.000,00     │
│  10/07/24   Impostos       Impostos Federais          Despesa     R$  8.500,00     │
│  05/08/24   Investimentos  Rendimento Aplicações      Receita     R$ 12.000,00     │
│  20/08/24   Infraestrutura Aluguel + Contas           Despesa     R$ 12.000,00     │
│  12/09/24   Vendas         Venda Produto C            Receita     R$ 48.000,00     │
│  05/09/24   Salários       Folha de Pagamento         Despesa     R$ 26.000,00     │
│  08/10/24   Serviços       Manutenção Sistemas        Receita     R$ 41.000,00     │
│  03/10/24   Fornecedores   Equipamentos Escritório    Despesa     R$ 15.000,00     │
└─────────────────────────────────────────────────────────────────────────────────────┘

 Total de Transações: 12 | Período: 01/05/2024 a 01/10/2024 | Dashboard Financeiro v1.0 - © 2024
```

## 🎨 Legenda de Cores

### Painel Superior
- **Background**: Azul Escuro (RGB: 0, 42, 44)
- **Texto**: Branco
- **Botão Atualizar**: Cinza com ícone azul

### Painéis de KPI
- **Receita Total**: 
  - Fundo: Verde claro (#E6FFE6)
  - Texto: Verde (#008000)
  - Ícone: Seta para cima ▲
  
- **Despesa Total**:
  - Fundo: Vermelho claro (#FFE6E6)
  - Texto: Vermelho (#FF0000)
  - Ícone: Seta para baixo ▼
  
- **Lucro Líquido**:
  - Fundo: Dinâmico (Verde se positivo, Vermelho se negativo)
  - Texto: Dinâmico (Verde se positivo, Vermelho se negativo)
  - Ícone: Estrela ★

### Gráficos

#### Gráfico de Barras (Receitas x Despesas)
```
     60K │        
         │    ███           
     50K │    ███   ▄▄▄     
         │  ▄▄███   ███     
     40K │  ███▄▄▄  ███  ▄▄▄
         │  ███ ███ ███  ███
     30K │  ███ ███ ███  ███
         │  ███ ███ ███  ███
     20K │  ███ ███ ███  ███
         │  ███ ███ ███  ███
     10K │  ███ ███ ███  ███
         │  ███ ███ ███  ███
      0K └──Mai─Jun─Jul─Ago──
         
         █ Verde  = Receitas
         █ Vermelho = Despesas
```

#### Gráfico de Linha (Fluxo de Caixa)
```
    150K │            ╱────╲
         │        ╱───      ╲───
    100K │    ╱───              ╲
         │╱───                    
     50K │                        
         │                        
      0K └─Mai─Jun─Jul─Ago─Set─Out
         
         ─── Azul = Saldo Acumulado
```

#### Gráfico de Pizza 3D (Despesas por Categoria)
```
           ╱────────╲
        ╱─────────────╲
      ╱─────────────────╲
     │  51% Salários     │
     │  32% Fornecedores │
     │   8% Impostos     │
     │   9% Infraestrutura│
      ╲─────────────────╱
        ╲─────────────╱
           ╲────────╱
```

### Grid de Dados
- **Header**: Fundo cinza, texto preto negrito
- **Receitas**: Texto verde nos valores
- **Despesas**: Texto vermelho nos valores
- **Linhas**: Alternadas branco/cinza claro

## 📐 Dimensões dos Componentes

### Layout Principal
- **Largura total**: 1424 pixels
- **Altura total**: 861 pixels
- **Margin lateral**: 24 pixels

### Seções
1. **PanelTopo**: 1424 x 89 px
2. **PanelIndicadores**: 1424 x 121 px
3. **PanelFiltros**: 1424 x 57 px
4. **PanelGraficos**: 1424 x 345 px
5. **PanelDados**: 1424 x 230 px
6. **StatusBar**: 1424 x 19 px

### Componentes Individuais

#### KPI Panels
- Dimensões: 417 x 89 pixels cada
- Espaçamento entre painéis: 23 pixels
- Border: BevelInner + BevelOuter

#### Gráficos
- Dimensões: 425 x 329 pixels cada
- Espaçamento: 15 pixels entre gráficos
- 3 gráficos lado a lado

#### Grid
- Dimensões: 1305 x 201 pixels
- Altura de linha: 24 pixels
- Larguras de colunas:
  - Data: 80px
  - Categoria: 120px
  - Descrição: 250px
  - Tipo: 80px
  - Valor: 100px

## 🔤 Fontes Utilizadas

### Títulos
- **Fonte**: Segoe UI
- **Tamanho**: 27pt
- **Estilo**: Bold
- **Cor**: Branco (no header)

### Subtítulos e Labels
- **Fonte**: Segoe UI
- **Tamanho**: 13-16pt
- **Estilo**: Bold
- **Cor**: Variável (Verde, Vermelho, Azul marinho)

### Valores dos KPIs
- **Fonte**: Segoe UI
- **Tamanho**: 27pt
- **Estilo**: Bold
- **Cor**: Verde/Vermelho/Azul marinho

### Gráficos
- **Fonte**: Segoe UI
- **Tamanho**: 12-15pt
- **Cor**: Azul marinho (títulos)

### Grid e Controles
- **Fonte**: Segoe UI
- **Tamanho**: 12pt
- **Estilo**: Regular

## 🎯 Fluxo de Dados

```
ClientDataSet (In-Memory)
    ↓
┌───────────────────┐
│ CarregarDados     │ → Popula 12 transações de exemplo
└───────────────────┘
    ↓
┌───────────────────┐
│ PreencherGraficos │ → Calcula totais mensais e por categoria
└───────────────────┘
    ↓
┌───────────────────┬─────────────────┬──────────────────┐
│ SeriesReceitas    │ SeriesFluxo     │ SeriesCategorias │
│ SeriesDespesas    │                 │                  │
└───────────────────┴─────────────────┴──────────────────┘
    ↓
┌───────────────────┐
│ AtualizarKPIs     │ → Calcula totais e lucro
└───────────────────┘
    ↓
┌───────────────────┬─────────────────┬──────────────────┐
│ LabelReceita      │ LabelDespesa    │ LabelLucro       │
└───────────────────┴─────────────────┴──────────────────┘
```

## 📊 Exemplo de Dados Processados

### Por Mês
```
Mês    | Receitas  | Despesas | Saldo Mensal | Saldo Acumulado
-------|-----------|----------|--------------|----------------
Mai/24 | 45.000    | 25.000   | +20.000      | 20.000
Jun/24 | 38.000    | 18.000   | +20.000      | 40.000
Jul/24 | 52.000    |  8.500   | +43.500      | 83.500
Ago/24 | 12.000    | 12.000   |      0       | 83.500
Set/24 | 48.000    | 26.000   | +22.000      | 105.500
Out/24 | 41.000    | 15.000   | +26.000      | 131.500
```

### Por Categoria (Despesas)
```
Categoria       | Valor     | Percentual
----------------|-----------|------------
Salários        | 51.000    | 48.8%
Fornecedores    | 33.000    | 31.6%
Infraestrutura  | 12.000    | 11.5%
Impostos        |  8.500    |  8.1%
----------------|-----------|------------
TOTAL           | 104.500   | 100%
```

## 🎨 Interações e Estados Visuais

### Hover States
- Botões: Mudança de cor ao passar mouse
- Grid: Highlight da linha selecionada

### Estados dos KPIs
- **Lucro Positivo**: 
  - Fundo verde claro
  - Texto verde escuro
  
- **Lucro Negativo**: 
  - Fundo vermelho claro
  - Texto vermelho escuro

### Feedback Visual
- Mensagem de confirmação ao atualizar
- Status bar com informações contextuais
- Cores semafóricas (verde=bom, vermelho=ruim)
