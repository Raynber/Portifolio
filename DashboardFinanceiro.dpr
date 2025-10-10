program DashboardFinanceiro;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormDashboard};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Dashboard Financeiro';
  Application.CreateForm(TFormDashboard, FormDashboard);
  Application.Run;
end.
