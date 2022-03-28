unit ProjetoEstudos.View.Main;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
    Vcl.StdCtrls,
    Vcl.Imaging.pngimage;

type
    TFormPrincipal = class(TForm)
        PnlMenuLat: TPanel;
        PnlPrincipal: TPanel;
        SpeedButton1: TSpeedButton;
        SpeedButton2: TSpeedButton;
        SpeedButton3: TSpeedButton;
        pnlSobre: TPanel;
        Image1: TImage;
        Image2: TImage;
        procedure SpeedButton2Click(Sender: TObject);
    private
        procedure CreateFormCadastro;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FormPrincipal: TFormPrincipal;

implementation

uses
    ProjetoEstudos.View.Cadastro;

{$R *.dfm}

procedure TFormPrincipal.SpeedButton2Click(Sender: TObject);
begin
    CreateFormCadastro;
end;

procedure TFormPrincipal.CreateFormCadastro;
begin
    // Modificações para ficar dentro do panel
    FormCadastro.Parent := FormPrincipal.PnlPrincipal;
    FormCadastro.Align := alClient;
    FormCadastro.BorderStyle := bsNone;

    // Exibe a tela em questão
    FormCadastro.Show;
    pnlSobre.Visible := False;
end;

end.
