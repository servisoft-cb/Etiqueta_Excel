object frmDM: TfrmDM
  OldCreateOrder = False
  Height = 173
  Width = 456
  object dstblEtiqueta: TDataSource
    DataSet = tblEtiqueta
    Left = 102
    Top = 14
  end
  object tblEtiqueta: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Fornecedor'
    Params = <>
    Left = 148
    Top = 14
    Data = {
      050100009619E0BD01000000180000000900000000000300000005010A466F72
      6E656365646F720100490000000100055749445448020002003C000A44617461
      50656469646F040006000000000009436F644D61737465720400010000000000
      0944657363726963616F0100490000000100055749445448020002003C000A52
      65666572656E6369610100490000000100055749445448020002003C00054772
      6164650100490000000100055749445448020002001E000754616D616E686F04
      000100000000000451746465040001000000000008436F644261727261010049
      000000010005574944544802000200140001000D44454641554C545F4F524445
      520200820000000000}
    object tblEtiquetaFornecedor: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'Fornecedor'
      Size = 60
    end
    object tblEtiquetaDataPedido: TDateField
      DisplayLabel = 'Data Pedido'
      FieldName = 'DataPedido'
    end
    object tblEtiquetaCodMaster: TIntegerField
      DisplayLabel = 'C'#243'd. Master'
      FieldName = 'CodMaster'
    end
    object tblEtiquetaDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 60
    end
    object tblEtiquetaReferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'Referencia'
      Size = 60
    end
    object tblEtiquetaGrade: TStringField
      FieldName = 'Grade'
      Size = 30
    end
    object tblEtiquetaTamanho: TIntegerField
      FieldName = 'Tamanho'
    end
    object tblEtiquetaQtde: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qtde'
    end
    object tblEtiquetaCodBarra: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CodBarra'
    end
  end
  object Report: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44495.915253206020000000
    ReportOptions.LastChange = 44495.920285381940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 32
    Datasets = <
      item
        DataSet = frxDBEtiqueta
        DataSetName = 'frxDBEtiqueta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 55.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 181.417322830000000000
        Top = 18.897650000000000000
        Width = 143.622140000000000000
        DataSet = frxDBEtiqueta
        DataSetName = 'frxDBEtiqueta'
        RowCount = 0
        object frxDBEtiquetaCodMaster: TfrxMemoView
          Left = 4.559060000000000000
          Top = 4.559060000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          DataField = 'CodMaster'
          DataSet = frxDBEtiqueta
          DataSetName = 'frxDBEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBEtiqueta."CodMaster"]')
          ParentFont = False
        end
        object frxDBEtiquetaGrade: TfrxMemoView
          Left = 89.708720000000000000
          Top = 10.559060000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'Grade'
          DataSet = frxDBEtiqueta
          DataSetName = 'frxDBEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBEtiqueta."Grade"]')
          ParentFont = False
        end
        object frxDBEtiquetaDescricao: TfrxMemoView
          Left = 1.779530000000000000
          Top = 30.236240000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DataField = 'Descricao'
          DataSet = frxDBEtiqueta
          DataSetName = 'frxDBEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBEtiqueta."Descricao"]')
          ParentFont = False
        end
        object frxDBEtiquetaReferencia: TfrxMemoView
          Left = 72.811070000000000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'Referencia'
          DataSet = frxDBEtiqueta
          DataSetName = 'frxDBEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBEtiqueta."Referencia"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 22.677180000000000000
          Top = 71.811070000000000000
          Width = 90.000000000000000000
          Height = 64.252010000000000000
          Restrictions = [rfDontSize, rfDontMove]
          BarType = bcCode128
          Expression = '<frxDBEtiqueta."CodBarra">'
          Rotation = 0
          TestLine = False
          Text = '9313580016'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 6.453665380000000000
          Top = 164.449526920000000000
          Width = 135.481613850000000000
          Height = 13.664454620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'CONFIRA CODIGO E DECRI'#195#8225#195#402'O')
          ParentFont = False
        end
      end
    end
  end
  object frxDBEtiqueta: TfrxDBDataset
    UserName = 'frxDBEtiqueta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Fornecedor=Fornecedor'
      'DataPedido=DataPedido'
      'CodMaster=CodMaster'
      'Descricao=Descricao'
      'Referencia=Referencia'
      'Grade=Grade'
      'Tamanho=Tamanho'
      'Qtde=Qtde'
      'CodBarra=CodBarra')
    DataSource = dstblImpressao
    BCDToCurrency = False
    Left = 256
    Top = 32
  end
  object tblImpressao: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Fornecedor'
    Params = <>
    Left = 300
    Top = 78
    Data = {
      050100009619E0BD01000000180000000900000000000300000005010A466F72
      6E656365646F720100490000000100055749445448020002003C000A44617461
      50656469646F040006000000000009436F644D61737465720400010000000000
      0944657363726963616F0100490000000100055749445448020002003C000A52
      65666572656E6369610100490000000100055749445448020002003C00054772
      6164650100490000000100055749445448020002001E000754616D616E686F04
      000100000000000451746465040001000000000008436F644261727261010049
      000000010005574944544802000200140001000D44454641554C545F4F524445
      520200820000000000}
    object StringField1: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'Fornecedor'
      Size = 60
    end
    object DateField1: TDateField
      DisplayLabel = 'Data Pedido'
      FieldName = 'DataPedido'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'd. Master'
      FieldName = 'CodMaster'
    end
    object StringField2: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 60
    end
    object StringField3: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'Referencia'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'Grade'
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'Tamanho'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qtde'
    end
    object StringField5: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CodBarra'
    end
  end
  object dstblImpressao: TDataSource
    DataSet = tblImpressao
    Left = 254
    Top = 78
  end
  object frxBarCode: TfrxBarCodeObject
    Left = 344
    Top = 32
  end
end
