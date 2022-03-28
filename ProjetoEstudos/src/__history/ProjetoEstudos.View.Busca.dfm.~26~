object FrmBusca: TFrmBusca
  Left = 0
  Top = 0
  Caption = 'FrmBusca'
  ClientHeight = 380
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Resultado: TGroupBox
    Left = 0
    Top = 52
    Width = 551
    Height = 328
    Align = alClient
    Caption = 'Resultado'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 547
      Height = 311
      Align = alClient
      DataSource = DSBusca
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 52
    Align = alTop
    Alignment = taLeftJustify
    TabOrder = 1
    object BtnBusca: TButton
      Left = 438
      Top = 1
      Width = 112
      Height = 50
      Align = alRight
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = BtnBuscaClick
    end
    object EditBusca: TEdit
      Left = 5
      Top = 20
      Width = 239
      Height = 21
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 3
      Width = 90
      Height = 17
      Caption = 'Digite sua Busca..'
      TabOrder = 2
    end
  end
  object DSBusca: TDataSource
    DataSet = DM.qryBusca
    Left = 360
    Top = 8
  end
end
