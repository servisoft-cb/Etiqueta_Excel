program Etiqueta_Excel;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  Classe.ExcelToTable in 'Classe.ExcelToTable.pas',
  DM in 'DM.pas' {frmDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
