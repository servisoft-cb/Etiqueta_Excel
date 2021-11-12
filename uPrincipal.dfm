object frmPrincipal: TfrmPrincipal
  Left = 57
  Top = 304
  Width = 1071
  Height = 676
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 140
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 91
      Height = 18
      Caption = 'Arquivo Excel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnDialog: TSpeedButton
      Left = 351
      Top = 48
      Width = 25
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FCE8ECF2E8ECF2DBE7F1D5E4F0D7E6F1D8
        E6F1D8E6F1DAE8F2DBE8F2DDEAF4DEEBF6DFEDF7E8F3FDFFFFFF7DCDFD16A6FD
        14A6FF14A6FF14A6FF14A6FF14A6FF14A6FF14A6FF14A6FF14A6FF14A6FF14A6
        FF14A6FF92B2C864B5F918B2FE13B1FF13B1FF13B1FF13B1FF13B1FF13B1FF13
        B1FF13B1FF13B1FF13B1FF13B1FF13B1FF13B1FFAABDC53C9DF111BCFF11BCFF
        11BCFF11BCFF11BCFF11BCFF11BCFF11BCFF11BCFF11BCFF11BCFF11BCFF11BC
        FF11BCFFABC3CB3D9FF20FC5FF0FC5FF0FC5FF0FC5FF0FC5FF0FC5FF0FC5FF0F
        C5FF0FC5FF0FC5FF0FC5FF0FC5FF0FC5FF0FC5FFACC9CF3EA0F40ECCFF0ECCFF
        0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECCFF0ECC
        FF0ECCFFAECFD43DAAF60DCFFF0DCFFF0DCFFF0DCFFF0DCFFF0DCFFF0DCFFF0D
        CFFF0DCFFF0DCFFF0DCFFF0DCFFF0DCFFF0DCFFFAED2D83CB1F70DD0FF0DD0FF
        0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0
        FF0DD0FFAFD5DA3DB6F70DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0D
        D0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FFB0D7DD3EB7F60DD0FF0DD0FF
        0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0
        FF0DD0FFB6DAE03FB6F50DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF0D
        D0FF0DD0FF0DD0FF0DD0FF0DD0FF0DD0FF3BCFF2EEEDEB41B5F414D1FF0DD0FF
        0DD0FF0DD0FF1FA4FB4C39F2512BF1512BF18C78E7D6DDEBE0EAECE0EAECE4EC
        EFF4F3F3ECEFF329C4FA81E6FF12D1FF0DD0FF30D6FF6469F77247FE7247FE64
        66F738BCF736C2F936C4F936C5F936C7FA36C9FA22CDFE7EE5FFFFFFFFFAFEFF
        F7FEFFFFFFFFFFFFFFEFF5FEF0F6FEF7FDFFF7FDFFF7FDFFF7FDFFF7FDFFF7FD
        FFF7FDFFFAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnDialogClick
    end
    object edtArquivo: TEdit
      Left = 24
      Top = 48
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object btnImprimir: TNxButton
      Left = 195
      Top = 88
      Width = 150
      Height = 25
      Caption = 'Imprimir'
      Enabled = False
      PopupMenu = menuImpressoes
      ShowArrow = True
      TabOrder = 1
      Transparent = True
    end
    object btnCarregar: TNxButton
      Left = 24
      Top = 88
      Width = 150
      Height = 25
      Caption = 'Carregar arquivo'
      TabOrder = 2
      Transparent = True
      OnClick = btnCarregarClick
    end
  end
  object gridArquivo: TSMDBGrid
    Left = 15
    Top = 140
    Width = 1025
    Height = 482
    Align = alClient
    DataSource = frmDM.dstblEtiqueta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataPedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodMaster'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tamanho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodBarra'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 140
    Width = 15
    Height = 482
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 1040
    Top = 140
    Width = 15
    Height = 482
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 0
    Top = 622
    Width = 1055
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
  end
  object OpenDialog: TOpenDialog
    Left = 288
    Top = 8
  end
  object menuImpressoes: TPopupMenu
    Left = 504
    Top = 64
    object EtiquetaAdesiva1: TMenuItem
      Caption = 'Etiqueta Adesiva'
      OnClick = EtiquetaAdesiva1Click
    end
    object Etiqueta1: TMenuItem
      Caption = 'Etiqueta'
      OnClick = Etiqueta1Click
    end
  end
end
