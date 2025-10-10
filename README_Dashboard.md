# Dashboard Financeiro em Delphi

Este é um projeto de Dashboard Financeiro desenvolvido em Delphi para visualização de dados financeiros empresariais.

## 📊 Características

### Componentes Visuais
- **Painel de Indicadores**: Mostra receita total, despesa total e lucro líquido
- **Gráfico de Receitas x Despesas**: Gráfico de barras comparando receitas e despesas mensais
- **Gráfico de Fluxo de Caixa**: Gráfico de linha mostrando o saldo acumulado mês a mês
- **Gráfico de Categorias**: Gráfico de pizza (3D) com a distribuição de despesas por categoria
- **Grid de Dados**: Tabela detalhada com todas as transações financeiras

### Funcionalidades
- Visualização de dados financeiros em tempo real
- Filtros por período (data início e fim)
- Filtro por categoria de transação
- Botão de atualização do dashboard
- Status bar com informações do período e total de transações
- Interface responsiva e moderna

## 🎨 Interface

O dashboard possui:
- **Painel Superior**: Título do dashboard e controles de período
- **Painéis de KPIs**: 3 painéis destacados mostrando receita, despesa e lucro
- **Área de Filtros**: ComboBox para filtrar por categoria
- **Área de Gráficos**: 3 gráficos lado a lado para análise visual
- **Grade de Dados**: Visualização tabular das transações

## 📁 Estrutura do Projeto

```
DashboardFinanceiro/
├── DashboardFinanceiro.dpr   - Arquivo principal do projeto
├── UnitPrincipal.pas          - Unit com o código da interface
├── UnitPrincipal.dfm          - Form com a definição visual dos componentes
└── README_Dashboard.md        - Este arquivo
```

## 🔧 Componentes Utilizados

### VCL Components
- **TChart** (TeeChart): Para criação dos gráficos
  - TBarSeries: Gráfico de barras
  - TLineSeries: Gráfico de linha
  - TPieSeries: Gráfico de pizza
- **TPanel**: Organização da interface em seções
- **TStringGrid**: Exibição tabular dos dados
- **TClientDataSet**: Armazenamento de dados em memória
- **TDateTimePicker**: Seleção de período
- **TComboBox**: Filtro de categorias
- **TBitBtn**: Botão de atualização
- **TStatusBar**: Barra de status

### Dados de Exemplo

O dashboard vem pré-carregado com dados de exemplo incluindo:
- **Receitas**: Vendas, Serviços, Investimentos
- **Despesas**: Salários, Fornecedores, Impostos, Infraestrutura
- **Período**: 6 meses (Maio a Outubro de 2024)

## 🚀 Como Usar

### Requisitos
- Delphi 10.x ou superior (compatível com VCL)
- Componentes TeeChart (incluídos no Delphi)

### Compilação
1. Abra o arquivo `DashboardFinanceiro.dpr` no Delphi IDE
2. Compile o projeto (Ctrl + F9)
3. Execute o programa (F9)

### Personalização
Para adicionar seus próprios dados:
1. Modifique o método `CarregarDadosExemplo` em `UnitPrincipal.pas`
2. Ou implemente uma conexão com banco de dados real
3. Ajuste as consultas e cálculos conforme necessário

## 📊 Indicadores Calculados

- **Receita Total**: Soma de todas as receitas do período
- **Despesa Total**: Soma de todas as despesas do período
- **Lucro Líquido**: Diferença entre receitas e despesas
- **Fluxo de Caixa**: Saldo acumulado mês a mês

## 🎨 Cores e Estilo

- **Receitas**: Verde (#008000)
- **Despesas**: Vermelho (#FF0000)
- **Lucro Positivo**: Verde com fundo claro
- **Lucro Negativo**: Vermelho com fundo claro
- **Tema**: Paleta profissional com gradientes

## 📝 Licença

Este projeto é parte do portfólio de Raynner Bernardes Rabelo.

## 👨‍💻 Autor

**Raynner Bernardes Rabelo**
- Desenvolvedor Full Stack
- Experiência com Python, PHP, JavaScript
- Experiência com SQL Server, PostgreSQL, MySQL, SQLite

## 🔗 Links Relacionados

- [Bot Elétrico](https://github.com/raynner/bot-eletrico)
- [Dashboard de Vendas](https://github.com/raynner/dashboard-vendas)
