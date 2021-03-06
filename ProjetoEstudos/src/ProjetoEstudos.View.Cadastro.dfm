object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 449
  ClientWidth = 641
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 641
    Height = 137
    Align = alTop
    Caption = 'Cliente'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 642
    object DBEditNome: TDBEdit
      Left = 32
      Top = 47
      Width = 297
      Height = 21
      DataField = 'CLI_NOME'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object DBEditCpf: TDBEdit
      Left = 360
      Top = 47
      Width = 209
      Height = 21
      DataField = 'CLI_CPF'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEditTelefone: TDBEdit
      Left = 32
      Top = 103
      Width = 209
      Height = 21
      DataField = 'CLI_TELEFONE'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object StaticText5: TStaticText
      Left = 32
      Top = 24
      Width = 31
      Height = 17
      ParentCustomHint = False
      Caption = 'Nome'
      Color = clWhite
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      Transparent = False
    end
    object StaticText1: TStaticText
      Left = 32
      Top = 80
      Width = 60
      Height = 17
      ParentCustomHint = False
      Caption = 'Telefone(*)'
      Color = clWhite
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 4
      Transparent = False
    end
    object StaticText3: TStaticText
      Left = 360
      Top = 24
      Width = 23
      Height = 17
      ParentCustomHint = False
      Caption = 'CPF'
      Color = clWhite
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      Transparent = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 404
    Width = 641
    Height = 45
    Align = alBottom
    Color = 2697513
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 392
    ExplicitWidth = 642
    object BtnIncluir: TButton
      Left = 1
      Top = 1
      Width = 77
      Height = 43
      Align = alLeft
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BtnIncluirClick
    end
    object BtnGravar: TButton
      Left = 490
      Top = 1
      Width = 75
      Height = 43
      Align = alRight
      Caption = 'Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = BtnGravarClick
      ExplicitLeft = 491
    end
    object BtnCancelar: TButton
      Left = 565
      Top = 1
      Width = 75
      Height = 43
      Align = alRight
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = BtnCancelarClick
      ExplicitLeft = 566
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 137
    Width = 641
    Height = 267
    Align = alClient
    Caption = 'Parentes'
    TabOrder = 2
    ExplicitTop = 257
    ExplicitHeight = 141
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 637
      Height = 250
      Align = alClient
      DataSource = DSparentes
      Enabled = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PARENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PARENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELL_PARENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_PARENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.queryCli
    Left = 592
    Top = 96
  end
  object DSparentes: TDataSource
    DataSet = DM.queryParentes
    Left = 504
    Top = 96
  end
end
