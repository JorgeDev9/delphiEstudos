object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 364
  Width = 522
  object Base: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\Lukaz\Documents\GitHub\delphiEstudos\ProjetoEs' +
        'tudos\DataBase\BASE.FDB'
      'DriverID=FB')
    Connected = True
    Left = 56
    Top = 40
  end
  object queryCli: TFDQuery
    Connection = Base
    SQL.Strings = (
      'select * from CLIENTE c'
      'inner join PARENTES p on c.CLI_CODIGO = p.CLI_CODIGO')
    Left = 144
    Top = 40
    object queryCliCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object queryCliCLI_NOME: TWideStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 25
    end
    object queryCliCLI_CPF: TIntegerField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object queryCliCLI_TELEFONE: TIntegerField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
    end
    object queryCliNOME_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PARENTE'
      Origin = 'NOME_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object queryCliTELL_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELL_PARENTE'
      Origin = 'TELL_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object queryCliCPF_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_PARENTE'
      Origin = 'CPF_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object queryCliCLI_CODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO_1'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object queryParentes: TFDQuery
    Connection = Base
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_IDPARENTE'
    UpdateOptions.UpdateTableName = 'PARENTES'
    UpdateOptions.KeyFields = 'ID_PARENTE'
    SQL.Strings = (
      'select * from Parentes p'
      'where p.NOME_PARENTE =:parente')
    Left = 232
    Top = 40
    ParamData = <
      item
        Name = 'PARENTE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
      end>
    object queryParentesNOME_PARENTE: TWideStringField
      FieldName = 'NOME_PARENTE'
      Origin = 'NOME_PARENTE'
      Size = 80
    end
    object queryParentesTELL_PARENTE: TWideStringField
      FieldName = 'TELL_PARENTE'
      Origin = 'TELL_PARENTE'
      Size = 50
    end
    object queryParentesCPF_PARENTE: TWideStringField
      FieldName = 'CPF_PARENTE'
      Origin = 'CPF_PARENTE'
      Size = 15
    end
    object queryParentesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
    end
    object queryParentesID_PARENTE: TIntegerField
      FieldName = 'ID_PARENTE'
      Origin = 'ID_PARENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object qryGerador: TFDQuery
    Connection = Base
    Left = 144
    Top = 112
  end
  object qryBusca: TFDQuery
    Connection = Base
    SQL.Strings = (
      'select * from CLIENTE c'
      'inner join PARENTES p on c.CLI_CODIGO = p.CLI_CODIGO'
      'where c.CLI_NOME =:clinome')
    Left = 56
    Top = 112
    ParamData = <
      item
        Name = 'CLINOME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 25
        Value = Null
      end>
    object qryBuscaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBuscaCLI_NOME: TWideStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Size = 25
    end
    object qryBuscaCLI_CPF: TIntegerField
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
    end
    object qryBuscaCLI_TELEFONE: TIntegerField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
    end
    object qryBuscaID_PARENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PARENTE'
      Origin = 'ID_PARENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryBuscaNOME_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PARENTE'
      Origin = 'NOME_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qryBuscaTELL_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELL_PARENTE'
      Origin = 'TELL_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryBuscaCPF_PARENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_PARENTE'
      Origin = 'CPF_PARENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryBuscaCLI_CODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_CODIGO_1'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
