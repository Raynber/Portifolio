unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Data.DB, Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TFormDashboard = class(TForm)
    PanelTopo: TPanel;
    LabelTitulo: TLabel;
    PanelIndicadores: TPanel;
    PanelGraficos: TPanel;
    PanelDados: TPanel;
    ChartReceitas: TChart;
    ChartFluxoCaixa: TChart;
    ChartCategorias: TChart;
    SeriesReceitas: TBarSeries;
    SeriesDespesas: TBarSeries;
    SeriesFluxo: TLineSeries;
    SeriesCategorias: TPieSeries;
    GridDados: TStringGrid;
    LabelReceita: TLabel;
    LabelDespesa: TLabel;
    LabelLucro: TLabel;
    PanelReceitaTotal: TPanel;
    PanelDespesaTotal: TPanel;
    PanelLucroTotal: TPanel;
    LabelReceitaValor: TLabel;
    LabelDespesaValor: TLabel;
    LabelLucroValor: TLabel;
    BtnAtualizar: TBitBtn;
    DateTimePickerInicio: TDateTimePicker;
    DateTimePickerFim: TDateTimePicker;
    LabelPeriodo: TLabel;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    StatusBar: TStatusBar;
    PanelFiltros: TPanel;
    ComboCategoria: TComboBox;
    LabelCategoria: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ConfigurarGraficos;
    procedure CarregarDadosExemplo;
    procedure AtualizarIndicadores;
    procedure ConfigurarGrid;
    procedure PreencherDadosGraficos;
  public
    { Public declarations }
  end;

var
  FormDashboard: TFormDashboard;

implementation

{$R *.dfm}

procedure TFormDashboard.FormCreate(Sender: TObject);
begin
  ConfigurarGraficos;
  ConfigurarGrid;
  
  // Configurar ClientDataSet
  ClientDataSet.FieldDefs.Add('Data', ftDate);
  ClientDataSet.FieldDefs.Add('Categoria', ftString, 50);
  ClientDataSet.FieldDefs.Add('Descricao', ftString, 100);
  ClientDataSet.FieldDefs.Add('Tipo', ftString, 20);
  ClientDataSet.FieldDefs.Add('Valor', ftCurrency);
  ClientDataSet.CreateDataSet;
  
  // Configurar ComboBox de Categorias
  ComboCategoria.Items.Clear;
  ComboCategoria.Items.Add('Todas');
  ComboCategoria.Items.Add('Vendas');
  ComboCategoria.Items.Add('Serviços');
  ComboCategoria.Items.Add('Investimentos');
  ComboCategoria.Items.Add('Salários');
  ComboCategoria.Items.Add('Fornecedores');
  ComboCategoria.Items.Add('Impostos');
  ComboCategoria.Items.Add('Infraestrutura');
  ComboCategoria.ItemIndex := 0;
  
  // Configurar datas
  DateTimePickerFim.Date := Date;
  DateTimePickerInicio.Date := IncMonth(Date, -6);
end;

procedure TFormDashboard.FormShow(Sender: TObject);
begin
  CarregarDadosExemplo;
  PreencherDadosGraficos;
  AtualizarIndicadores;
end;

procedure TFormDashboard.ConfigurarGraficos;
begin
  // Configurar gráfico de Receitas x Despesas
  ChartReceitas.Title.Text.Clear;
  ChartReceitas.Title.Text.Add('Receitas x Despesas por Mês');
  ChartReceitas.Title.Font.Size := 12;
  ChartReceitas.Title.Font.Style := [fsBold];
  ChartReceitas.Legend.Visible := True;
  ChartReceitas.View3D := False;
  
  SeriesReceitas.Title := 'Receitas';
  SeriesReceitas.SeriesColor := clGreen;
  SeriesDespesas.Title := 'Despesas';
  SeriesDespesas.SeriesColor := clRed;
  
  // Configurar gráfico de Fluxo de Caixa
  ChartFluxoCaixa.Title.Text.Clear;
  ChartFluxoCaixa.Title.Text.Add('Fluxo de Caixa Mensal');
  ChartFluxoCaixa.Title.Font.Size := 12;
  ChartFluxoCaixa.Title.Font.Style := [fsBold];
  ChartFluxoCaixa.Legend.Visible := True;
  ChartFluxoCaixa.View3D := False;
  
  SeriesFluxo.Title := 'Saldo';
  SeriesFluxo.SeriesColor := clBlue;
  SeriesFluxo.LinePen.Width := 3;
  
  // Configurar gráfico de Categorias
  ChartCategorias.Title.Text.Clear;
  ChartCategorias.Title.Text.Add('Despesas por Categoria');
  ChartCategorias.Title.Font.Size := 12;
  ChartCategorias.Title.Font.Style := [fsBold];
  ChartCategorias.Legend.Visible := True;
  ChartCategorias.View3D := True;
  ChartCategorias.View3DOptions.Elevation := 315;
  ChartCategorias.View3DOptions.Perspective := 15;
  ChartCategorias.View3DOptions.Rotation := 360;
end;

procedure TFormDashboard.ConfigurarGrid;
begin
  // Configurar Grid
  GridDados.ColCount := 5;
  GridDados.RowCount := 1;
  GridDados.FixedRows := 1;
  GridDados.FixedCols := 0;
  
  GridDados.Cells[0, 0] := 'Data';
  GridDados.Cells[1, 0] := 'Categoria';
  GridDados.Cells[2, 0] := 'Descrição';
  GridDados.Cells[3, 0] := 'Tipo';
  GridDados.Cells[4, 0] := 'Valor';
  
  GridDados.ColWidths[0] := 80;
  GridDados.ColWidths[1] := 120;
  GridDados.ColWidths[2] := 250;
  GridDados.ColWidths[3] := 80;
  GridDados.ColWidths[4] := 100;
end;

procedure TFormDashboard.CarregarDadosExemplo;
var
  I: Integer;
  Meses: array[0..5] of string;
begin
  Meses[0] := 'Maio';
  Meses[1] := 'Junho';
  Meses[2] := 'Julho';
  Meses[3] := 'Agosto';
  Meses[4] := 'Setembro';
  Meses[5] := 'Outubro';
  
  ClientDataSet.EmptyDataSet;
  
  // Adicionar dados de exemplo
  // Receitas
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 5, 15);
  ClientDataSet.FieldByName('Categoria').AsString := 'Vendas';
  ClientDataSet.FieldByName('Descricao').AsString := 'Venda Produto A';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 45000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 6, 10);
  ClientDataSet.FieldByName('Categoria').AsString := 'Serviços';
  ClientDataSet.FieldByName('Descricao').AsString := 'Consultoria Estratégica';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 38000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 7, 20);
  ClientDataSet.FieldByName('Categoria').AsString := 'Vendas';
  ClientDataSet.FieldByName('Descricao').AsString := 'Venda Produto B';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 52000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 8, 5);
  ClientDataSet.FieldByName('Categoria').AsString := 'Investimentos';
  ClientDataSet.FieldByName('Descricao').AsString := 'Rendimento Aplicações';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 12000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 9, 12);
  ClientDataSet.FieldByName('Categoria').AsString := 'Vendas';
  ClientDataSet.FieldByName('Descricao').AsString := 'Venda Produto C';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 48000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 10, 8);
  ClientDataSet.FieldByName('Categoria').AsString := 'Serviços';
  ClientDataSet.FieldByName('Descricao').AsString := 'Manutenção Sistemas';
  ClientDataSet.FieldByName('Tipo').AsString := 'Receita';
  ClientDataSet.FieldByName('Valor').AsCurrency := 41000.00;
  ClientDataSet.Post;
  
  // Despesas
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 5, 5);
  ClientDataSet.FieldByName('Categoria').AsString := 'Salários';
  ClientDataSet.FieldByName('Descricao').AsString := 'Folha de Pagamento';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 25000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 6, 15);
  ClientDataSet.FieldByName('Categoria').AsString := 'Fornecedores';
  ClientDataSet.FieldByName('Descricao').AsString := 'Compra Matéria Prima';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 18000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 7, 10);
  ClientDataSet.FieldByName('Categoria').AsString := 'Impostos';
  ClientDataSet.FieldByName('Descricao').AsString := 'Impostos Federais';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 8500.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 8, 20);
  ClientDataSet.FieldByName('Categoria').AsString := 'Infraestrutura';
  ClientDataSet.FieldByName('Descricao').AsString := 'Aluguel + Contas';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 12000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 9, 5);
  ClientDataSet.FieldByName('Categoria').AsString := 'Salários';
  ClientDataSet.FieldByName('Descricao').AsString := 'Folha de Pagamento';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 26000.00;
  ClientDataSet.Post;
  
  ClientDataSet.Append;
  ClientDataSet.FieldByName('Data').AsDateTime := EncodeDate(2024, 10, 3);
  ClientDataSet.FieldByName('Categoria').AsString := 'Fornecedores';
  ClientDataSet.FieldByName('Descricao').AsString := 'Equipamentos Escritório';
  ClientDataSet.FieldByName('Tipo').AsString := 'Despesa';
  ClientDataSet.FieldByName('Valor').AsCurrency := 15000.00;
  ClientDataSet.Post;
  
  // Atualizar Grid
  ClientDataSet.First;
  GridDados.RowCount := ClientDataSet.RecordCount + 1;
  I := 1;
  while not ClientDataSet.Eof do
  begin
    GridDados.Cells[0, I] := DateToStr(ClientDataSet.FieldByName('Data').AsDateTime);
    GridDados.Cells[1, I] := ClientDataSet.FieldByName('Categoria').AsString;
    GridDados.Cells[2, I] := ClientDataSet.FieldByName('Descricao').AsString;
    GridDados.Cells[3, I] := ClientDataSet.FieldByName('Tipo').AsString;
    GridDados.Cells[4, I] := FormatCurr('R$ #,##0.00', ClientDataSet.FieldByName('Valor').AsCurrency);
    Inc(I);
    ClientDataSet.Next;
  end;
end;

procedure TFormDashboard.PreencherDadosGraficos;
var
  Meses: array[0..5] of string;
  ReceitasMes: array[0..5] of Currency;
  DespesasMes: array[0..5] of Currency;
  FluxoMes: array[0..5] of Currency;
  DespesasCategoria: array[0..3] of Currency;
  I: Integer;
  Mes, Ano: Word;
begin
  Meses[0] := 'Mai/24';
  Meses[1] := 'Jun/24';
  Meses[2] := 'Jul/24';
  Meses[3] := 'Ago/24';
  Meses[4] := 'Set/24';
  Meses[5] := 'Out/24';
  
  // Inicializar arrays
  for I := 0 to 5 do
  begin
    ReceitasMes[I] := 0;
    DespesasMes[I] := 0;
    FluxoMes[I] := 0;
  end;
  
  for I := 0 to 3 do
    DespesasCategoria[I] := 0;
  
  // Calcular totais por mês
  ClientDataSet.First;
  while not ClientDataSet.Eof do
  begin
    Mes := MonthOf(ClientDataSet.FieldByName('Data').AsDateTime);
    Ano := YearOf(ClientDataSet.FieldByName('Data').AsDateTime);
    
    if (Ano = 2024) and (Mes >= 5) and (Mes <= 10) then
    begin
      I := Mes - 5;
      if ClientDataSet.FieldByName('Tipo').AsString = 'Receita' then
        ReceitasMes[I] := ReceitasMes[I] + ClientDataSet.FieldByName('Valor').AsCurrency
      else
        DespesasMes[I] := DespesasMes[I] + ClientDataSet.FieldByName('Valor').AsCurrency;
    end;
    
    // Categorizar despesas
    if ClientDataSet.FieldByName('Tipo').AsString = 'Despesa' then
    begin
      if ClientDataSet.FieldByName('Categoria').AsString = 'Salários' then
        DespesasCategoria[0] := DespesasCategoria[0] + ClientDataSet.FieldByName('Valor').AsCurrency
      else if ClientDataSet.FieldByName('Categoria').AsString = 'Fornecedores' then
        DespesasCategoria[1] := DespesasCategoria[1] + ClientDataSet.FieldByName('Valor').AsCurrency
      else if ClientDataSet.FieldByName('Categoria').AsString = 'Impostos' then
        DespesasCategoria[2] := DespesasCategoria[2] + ClientDataSet.FieldByName('Valor').AsCurrency
      else if ClientDataSet.FieldByName('Categoria').AsString = 'Infraestrutura' then
        DespesasCategoria[3] := DespesasCategoria[3] + ClientDataSet.FieldByName('Valor').AsCurrency;
    end;
    
    ClientDataSet.Next;
  end;
  
  // Calcular fluxo acumulado
  FluxoMes[0] := ReceitasMes[0] - DespesasMes[0];
  for I := 1 to 5 do
    FluxoMes[I] := FluxoMes[I-1] + (ReceitasMes[I] - DespesasMes[I]);
  
  // Preencher gráfico Receitas x Despesas
  SeriesReceitas.Clear;
  SeriesDespesas.Clear;
  for I := 0 to 5 do
  begin
    SeriesReceitas.Add(ReceitasMes[I], Meses[I], clGreen);
    SeriesDespesas.Add(DespesasMes[I], Meses[I], clRed);
  end;
  
  // Preencher gráfico Fluxo de Caixa
  SeriesFluxo.Clear;
  for I := 0 to 5 do
    SeriesFluxo.Add(FluxoMes[I], Meses[I], clBlue);
  
  // Preencher gráfico de Categorias (Pie Chart)
  SeriesCategorias.Clear;
  SeriesCategorias.Add(DespesasCategoria[0], 'Salários', clNavy);
  SeriesCategorias.Add(DespesasCategoria[1], 'Fornecedores', clMaroon);
  SeriesCategorias.Add(DespesasCategoria[2], 'Impostos', clOlive);
  SeriesCategorias.Add(DespesasCategoria[3], 'Infraestrutura', clPurple);
end;

procedure TFormDashboard.AtualizarIndicadores;
var
  TotalReceitas, TotalDespesas, Lucro: Currency;
begin
  TotalReceitas := 0;
  TotalDespesas := 0;
  
  ClientDataSet.First;
  while not ClientDataSet.Eof do
  begin
    if ClientDataSet.FieldByName('Tipo').AsString = 'Receita' then
      TotalReceitas := TotalReceitas + ClientDataSet.FieldByName('Valor').AsCurrency
    else
      TotalDespesas := TotalDespesas + ClientDataSet.FieldByName('Valor').AsCurrency;
    ClientDataSet.Next;
  end;
  
  Lucro := TotalReceitas - TotalDespesas;
  
  LabelReceitaValor.Caption := FormatCurr('R$ #,##0.00', TotalReceitas);
  LabelDespesaValor.Caption := FormatCurr('R$ #,##0.00', TotalDespesas);
  LabelLucroValor.Caption := FormatCurr('R$ #,##0.00', Lucro);
  
  // Colorir o lucro
  if Lucro >= 0 then
  begin
    LabelLucroValor.Font.Color := clGreen;
    PanelLucroTotal.Color := $00E6FFE6;
  end
  else
  begin
    LabelLucroValor.Font.Color := clRed;
    PanelLucroTotal.Color := $00E6E6FF;
  end;
  
  StatusBar.Panels[0].Text := Format('Total de Transações: %d', [ClientDataSet.RecordCount]);
  StatusBar.Panels[1].Text := Format('Período: %s a %s', 
    [DateToStr(DateTimePickerInicio.Date), DateToStr(DateTimePickerFim.Date)]);
end;

procedure TFormDashboard.BtnAtualizarClick(Sender: TObject);
begin
  CarregarDadosExemplo;
  PreencherDadosGraficos;
  AtualizarIndicadores;
  ShowMessage('Dashboard atualizado com sucesso!');
end;

end.
