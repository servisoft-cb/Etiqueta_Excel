unit Classe.ExcelToTable;

interface

uses
  SysUtils,
  ComObj,
  Classes,
  Forms,
  DBClient;

type
  TExcelToTable = class
  private
    function ExcelInstalado : Boolean;
  public
    constructor Create(AOwner: TComponent);
    function XlsToDataSet(Arq : string; CDS : TClientDataSet) : Boolean;
  end;


implementation

uses
  Variants,
  ActiveX;

{ TExcelToTable }

constructor TExcelToTable.Create(AOwner: TComponent);
var
  excel : Variant;
begin
  if not ExcelInstalado then
    raise Exception.Create('Excel Não Instalado');
end;

function TExcelToTable.ExcelInstalado: Boolean;
var
  ClassID : TCLSID;
  strOleObject :  string;
begin
  strOleObject := 'Excel.Application';
  Result  := CLSIDFromProgID(PWideChar(WideString(strOleObject)),ClassID) = S_OK;
end;

function TExcelToTable.XlsToDataSet(Arq: string; CDS: TClientDataSet) : Boolean;
var
  Excel, Planilha : OleVariant;
  Dados : Variant;
  i, j, x, y : Integer;
const
   xlCellTypeLastCell = $0000000B;
begin
  Excel := CreateOleObject('Excel.Application');
  Result := False;
  try
    Excel.WorkBooks.Open(Arq);
    Excel.WorkSheets[1].Activate;
    Planilha := Excel.Workbooks[ExtractFileName(Arq)].WorkSheets[1];
    Planilha.Cells.SpecialCells(xlCellTypeLastCell,EmptyParam).Activate;
    x := Excel.ActiveCell.Row;
    y := Excel.ActiveCell.Column;

    Dados := Excel.Range['A2',Excel.Cells.Item[x,y]].Value;

    CDS.DisableControls;
    CDS.EmptyDataSet;
    CDS.First;
    for i := 1 to VarArrayHighBound(Dados, 1) do
    begin
      CDS.Append;
      CDS.FieldCount;
      if Dados[i,1] = EmptyStr then
        Continue;
      for j := 1 to CDS.FieldCount do
      begin
        CDS.Fields[j-1].Value := Dados[i,j];
      end;
    end;
    Result := True;
  finally
    Excel.Quit;
    Excel := Unassigned;
    Planilha := Unassigned;
    CDS.First;
    CDS.EnableControls;
  end;
end;

end.
