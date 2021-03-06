unit ProjetoEstudos.View.uCodes;

interface

procedure LiberarVisual;
procedure BloquearVisual;

implementation
uses ProjetoEstudos.View.Cadastro, SysUtils;


procedure LiberarVisual; //Procedure para habilitar os bot?es e edits.
begin
  FormCadastro.DBEditNome.Enabled := True;
  FormCadastro.DBEditCpf.Enabled := True;
  FormCadastro.DBEditTelefone.Enabled := True;
  FormCadastro.BtnIncluir.Enabled := False;
  FormCadastro.BtnGravar.Enabled := True;
  FormCadastro.BtnCancelar.Enabled := True;
  FormCadastro.DBGrid1.Enabled := True;
  FormCadastro.DBEditNome.SetFocus;
end;

procedure BloquearVisual; //Procedure para desabilitar os bot?es e edits.
begin
  FormCadastro.DBEditNome.Enabled := False;
  FormCadastro.DBEditCpf.Enabled := False;
  FormCadastro.DBEditTelefone.Enabled := False;
  FormCadastro.BtnIncluir.Enabled := True;
  FormCadastro.BtnGravar.Enabled := False;
  FormCadastro.BtnCancelar.Enabled := False;
  FormCadastro.DBGrid1.Enabled := False;
end;

end.
