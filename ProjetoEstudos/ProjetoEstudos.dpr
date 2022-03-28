program ProjetoEstudos;

uses
  Vcl.Forms,
  ProjetoEstudos.View.Main in 'src\ProjetoEstudos.View.Main.pas' {FormPrincipal},
  ProjetoEstudos.View.Cadastro in 'src\ProjetoEstudos.View.Cadastro.pas' {FormCadastro},
  ProjetoEstudos.Data.DMdata in 'src\ProjetoEstudos.Data.DMdata.pas' {DM: TDataModule},
  ProjetoEstudos.View.uCodes in 'src\ProjetoEstudos.View.uCodes.pas',
  ProjetoEstudos.View.Busca in 'src\ProjetoEstudos.View.Busca.pas' {FrmBusca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmBusca, FrmBusca);
  Application.Run;

end.
