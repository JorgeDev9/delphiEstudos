unit ProjetoEstudos.View.Cadastro;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
    Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Datasnap.Provider, Vcl.Grids,
  Vcl.DBGrids;

type
    TFormCadastro = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    BtnIncluir: TButton;
    BtnGravar: TButton;
    DBEditNome: TDBEdit;
    DBEditCpf: TDBEdit;
    DBEditTelefone: TDBEdit;
    StaticText5: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    BtnCancelar: TButton;
    DSparentes: TDataSource;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    private
    procedure IncluirCadastro;
    procedure GravarGerarRegistro;
    procedure ValidationNomeCpf;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FormCadastro: TFormCadastro;

implementation
uses
 ProjetoEstudos.Data.DMdata, ProjetoEstudos.View.uCodes;

{$R *.dfm}

procedure TFormCadastro.BtnGravarClick(Sender: TObject);
begin
  ValidationNomeCpf;
end;

procedure TFormCadastro.BtnIncluirClick(Sender: TObject);
begin
  IncluirCadastro;
  LiberarVisual;
end;

procedure TFormCadastro.BtnCancelarClick(Sender: TObject);
begin
  BloquearVisual;
end;

procedure TFormCadastro.IncluirCadastro;
begin
  Dm.queryCli.Open;
  Dm.queryParentes.Open;
  DataSource1.DataSet.Append;
  DSparentes.DataSet.Append;
end;

procedure TFormCadastro.GravarGerarRegistro;
begin
  if DM.queryCliCLI_CODIGO.AsInteger <= 0 then
  begin
    DM.qryGerador.Close;
    DM.qryGerador.SQL.Text := 'select gen_id (GEN_CODCLI,1) as GERADOR from RDB$DATABASE';
    DM.qryGerador.open;
    DM.queryCliCLI_CODIGO.AsInteger := DM.qryGerador.FieldByName('GERADOR').AsInteger;
  end;

  //DM.queryParentes.First;
  while not DM.queryParentes.EOF do
  begin
    if DM.queryParentesID_PARENTE.AsInteger <= 0 then
    begin
     DM.qryGerador.Close;
     DM.qryGerador.SQL.Text := 'select gen_id (GEN_CODCLI,1) as GERADOR2 from RDB$DATABASE';
     DM.qryGerador.open;
     DM.queryParentes.Edit;
     DM.queryParentesID_PARENTE.AsInteger := DM.qryGerador.FieldByName('GERADOR2').AsInteger;
    end;

    //DM.queryParentes.First;
    DM.queryParentesCli_Codigo.AsInteger := DM.queryCliCLI_CODIGO.AsInteger;
    DM.queryParentes.Next;

  end;

    DM.queryParentesCli_Codigo.AsInteger := DM.queryCliCLI_CODIGO.AsInteger;

  try
    DataSource1.DataSet.Post;
    DSparentes.DataSet.Post;
  finally
  end;
  ShowMessage('GRAVADO COM SUCESSO!!');
end;

procedure TFormCadastro.ValidationNomeCpf;
begin
  if (DBEditNome.Text = '') or (DBEditCpf.Text = '') then
  begin
    MessageDlg('Por Favor, Preencha os Campos!', mtInformation,
      [mbOk], 0, mbOk);
  end
  else
    GravarGerarRegistro;
end;

end.
