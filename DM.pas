unit DM;

interface

uses
  SysUtils,
  Classes,
  DB,
  DBTables,
  DBClient, frxClass, frxDBSet, frxBarcode;

type
  TTipoImpressao = (tpAdesiva, tpEtiqueta);

type
  TfrmDM = class(TDataModule)
    dstblEtiqueta: TDataSource;
    tblEtiqueta: TClientDataSet;
    tblEtiquetaFornecedor: TStringField;
    tblEtiquetaDataPedido: TDateField;
    tblEtiquetaCodMaster: TIntegerField;
    tblEtiquetaDescricao: TStringField;
    tblEtiquetaReferencia: TStringField;
    tblEtiquetaGrade: TStringField;
    tblEtiquetaTamanho: TIntegerField;
    tblEtiquetaQtde: TIntegerField;
    tblEtiquetaCodBarra: TStringField;
    Report: TfrxReport;
    frxDBEtiqueta: TfrxDBDataset;
    tblImpressao: TClientDataSet;
    StringField1: TStringField;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    dstblImpressao: TDataSource;
    frxBarCode: TfrxBarCodeObject;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprimir(Tipo : TTipoImpressao);
  end;

var
  frmDM: TfrmDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TfrmDM }
procedure TfrmDM.Imprimir(Tipo: TTipoImpressao);
begin
  tblImpressao.first;
  if Tipo = tpAdesiva then
  begin
    Report.LoadFromFile(GetCurrentDir()+'\FR3\Adesiva.fr3');
    Report.ShowReport();
  end;
  if Tipo = tpEtiqueta then
  begin
    Report.LoadFromFile(GetCurrentDir()+'\FR3\Etiqueta.fr3');
    Report.ShowReport();
  end;
end;

end.
