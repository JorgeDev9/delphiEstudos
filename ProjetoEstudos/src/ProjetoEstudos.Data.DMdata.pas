unit ProjetoEstudos.Data.DMdata;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Base: TFDConnection;
    queryCli: TFDQuery;
    queryParentes: TFDQuery;
    queryParentesNOME_PARENTE: TWideStringField;
    queryParentesTELL_PARENTE: TWideStringField;
    queryParentesCPF_PARENTE: TWideStringField;
    queryParentesCLI_CODIGO: TIntegerField;
    queryCliCLI_CODIGO: TIntegerField;
    queryCliCLI_NOME: TWideStringField;
    queryCliCLI_CPF: TIntegerField;
    queryCliCLI_TELEFONE: TIntegerField;
    queryCliNOME_PARENTE: TWideStringField;
    queryCliTELL_PARENTE: TWideStringField;
    queryCliCPF_PARENTE: TWideStringField;
    queryCliCLI_CODIGO_1: TIntegerField;
    qryGerador: TFDQuery;
    qryBusca: TFDQuery;
    qryBuscaCLI_CODIGO: TIntegerField;
    qryBuscaCLI_NOME: TWideStringField;
    qryBuscaCLI_CPF: TIntegerField;
    qryBuscaCLI_TELEFONE: TIntegerField;
    qryBuscaID_PARENTE: TIntegerField;
    qryBuscaNOME_PARENTE: TWideStringField;
    qryBuscaTELL_PARENTE: TWideStringField;
    qryBuscaCPF_PARENTE: TWideStringField;
    qryBuscaCLI_CODIGO_1: TIntegerField;
    queryParentesID_PARENTE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation
uses
  Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
 Vname : String;
begin
 base.Connected := False;

 Vname := ExtractFilePath(Application.ExeName) + '..\..\DataBase\BASE.FDB';
 base.Params.Database := Vname;
 base.Params.UserName := 'SYSDBA';
 base.Params.Password := 'masterkey';

 base.Open;
end;

end.
