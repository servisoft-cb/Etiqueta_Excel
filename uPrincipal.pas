unit uPrincipal;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Buttons,
  StdCtrls,
  ExtCtrls,
  DB,
  Classe.ExcelToTable,
  Grids,
  DBGrids,
  SMDBGrid,
  DM, Menus, NxCollection;

type
  TfrmPrincipal = class(TForm)
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    edtArquivo: TEdit;
    Label1: TLabel;
    btnDialog: TSpeedButton;
    gridArquivo: TSMDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    menuImpressoes: TPopupMenu;
    EtiquetaAdesiva1: TMenuItem;
    Etiqueta1: TMenuItem;
    btnImprimir: TNxButton;
    btnCarregar: TNxButton;
    procedure btnDialogClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EtiquetaAdesiva1Click(Sender: TObject);
    procedure Etiqueta1Click(Sender: TObject);
  private
    { Private declarations }
    fDM : TfrmDM;
  public
    { Public declarations }
    procedure PosicionaImp;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCarregarClick(Sender: TObject);
var
  Excel : TExcelToTable;
begin
  if edtArquivo.Text = EmptyStr then
  begin
    MessageDlg('Arquivo não informado.', mtWarning, [mbOk], 0);
    Exit;
  end;
  try
    Excel := TExcelToTable.Create(Self);
  except
    on E: Exception do
    begin
      messagedlg(E.Message,mtError,[mbOk],0);
      FreeAndNil(Excel);
      Exit;
    end;
  end;
  fDM.tblEtiqueta.Open;
  if Excel.XlsToDataSet(edtArquivo.Text, fDM.tblEtiqueta) then
    btnImprimir.Enabled := True;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  if not Assigned(fDM) then
    fDM := Tfrmdm.Create(Self);
end;

procedure TfrmPrincipal.btnDialogClick(Sender: TObject);
begin
  IF OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
    btnCarregar.Click;
  end;
end;

procedure TfrmPrincipal.EtiquetaAdesiva1Click(Sender: TObject);
begin
  PosicionaImp;
  fDM.Imprimir(tpAdesiva);
end;

procedure TfrmPrincipal.PosicionaImp;
var
  i : Integer;
begin
  fDM.tblEtiqueta.DisableControls;
  fDM.tblImpressao.DisableControls;
  fDM.tblEtiqueta.First;
  fDM.tblImpressao.EmptyDataSet;
  while not fDM.tblEtiqueta.Eof do
  begin
    if gridArquivo.SelectedRows.CurrentRowSelected then
    begin
      fDM.tblImpressao.Append;
      for i:= 0  to fDM.tblEtiqueta.FieldCount-1 do
        fDM.tblImpressao.Fields.Fields[i].Value := fDM.tblEtiqueta.Fields.Fields[i].AsVariant;
      fDM.tblImpressao.Post;
    end;
    fDM.tblEtiqueta.Next;
  end;
  fDM.tblEtiqueta.First;
  fDM.tblEtiqueta.EnableControls;
  fDM.tblImpressao.EnableControls;  
end;

procedure TfrmPrincipal.Etiqueta1Click(Sender: TObject);
begin
  PosicionaImp;
  fDM.Imprimir(tpEtiqueta);
end;

end.
