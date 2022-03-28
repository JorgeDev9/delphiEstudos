unit ProjetoEstudos.View.Cadastro;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
    Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Datasnap.Provider;

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
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText6: TStaticText;
    DBEdit3: TDBEdit;
    StaticText7: TStaticText;
    DBEdit4: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StaticText8: TStaticText;
    DBEdit5: TDBEdit;
    StaticText9: TStaticText;
    DBEdit6: TDBEdit;
    DSparentes: TDataSource;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    private
    procedure IncluirCadastro;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FormCadastro: TFormCadastro;

implementation
uses
 ProjetoEstudos.Data.DMdata;

{$R *.dfm}

procedure TFormCadastro.BtnGravarClick(Sender: TObject);
begin
  if DM.queryCliCLI_CODIGO.AsInteger <= 0 then
  begin
    DM.qryGerador.Close;
    DM.qryGerador.SQL.Text := 'select gen_id (GEN_CODCLI,1) as GERADOR from RDB$DATABASE';
    DM.qryGerador.open;
    DM.queryCliCLI_CODIGO.AsInteger := DM.qryGerador.FieldByName('GERADOR').AsInteger;
  end;
  Try
   DataSource1.DataSet.Post;
   DSparentes.DataSet.Post;
  finally
  end;
  
  while not DM.queryParentes.EOF do
  begin
  DM.queryParentes.Edit;
  DM.queryParentesCli_Codigo.AsInteger:= DM.queryCliCLI_CODIGO.AsInteger;
  DM.queryParentes.Next;
  end;

  try
  if DM.queryParentes.State in dsEditModes then
  DM.queryParentes.Post;
  DM.queryParentes.ApplyUpdates(0);
  DM.queryParentes.Transaction.CommitRetaining;
  finally
  end;
  
  ShowMessage('GRAVADO COM SUCESSO!!');
end;

procedure TFormCadastro.BtnIncluirClick(Sender: TObject);
begin
  IncluirCadastro;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
begin
 //Dm.queryParentes.Edit;
end;

procedure TFormCadastro.IncluirCadastro;
begin
  Dm.queryCli.Open;
  Dm.queryParentes.Open;
  DataSource1.DataSet.Append;
  DSparentes.DataSet.Append;
  DBEditNome.Enabled := True;
  DBEditCpf.Enabled := True;
  DBEditTelefone.Enabled := True;
  DBEditNome.SetFocus;
end;

end.
