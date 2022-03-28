unit ProjetoEstudos.View.uCodes;

interface

procedure LiberarVisual;
procedure BloquearVisual;

implementation
uses ProjetoEstudos.View.Cadastro, SysUtils;

procedure LiberarVisual;
begin
  FormCadastro.DBEditNome.Enabled := True;
  FormCadastro.DBEditCpf.Enabled := True;
  FormCadastro.DBEditTelefone.Enabled := True;
  FormCadastro.DBEdit1.Enabled := True;
  FormCadastro.DBEdit3.Enabled := True;
  FormCadastro.DBEdit5.Enabled := True;
  FormCadastro.BtnIncluir.Enabled := False;
  FormCadastro.BtnGravar.Enabled := True;
  FormCadastro.BtnCancelar.Enabled := True;
  FormCadastro.DBEditNome.SetFocus;
end;

procedure BloquearVisual;
begin
  FormCadastro.DBEditNome.Enabled := False;
  FormCadastro.DBEditCpf.Enabled := False;
  FormCadastro.DBEditTelefone.Enabled := False;
  FormCadastro.DBEdit1.Enabled := False;
  FormCadastro.DBEdit3.Enabled := False;
  FormCadastro.DBEdit5.Enabled := False;
  FormCadastro.BtnIncluir.Enabled := True;
  FormCadastro.BtnGravar.Enabled := False;
  FormCadastro.BtnCancelar.Enabled := False;
end;

end.
