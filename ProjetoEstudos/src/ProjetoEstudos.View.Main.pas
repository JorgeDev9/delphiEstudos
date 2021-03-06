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
    BtnBusca: TSpeedButton;
        procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnBuscaClick(Sender: TObject);
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
  ProjetoEstudos.View.Cadastro, ProjetoEstudos.View.uCodes, ProjetoEstudos.View.Busca,
  ProjetoEstudos.Data.DMdata;

{$R *.dfm}

procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin
  FormCadastro.Close;
  FrmBusca.Close;
  pnlSobre.Visible := True;
  BloquearVisual;
end;

procedure TFormPrincipal.SpeedButton2Click(Sender: TObject);
begin
  CreateFormCadastro;
end;

procedure TFormPrincipal.SpeedButton3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.BtnBuscaClick(Sender: TObject);
begin
  // Modifica??es para ficar dentro do panel
  FrmBusca.Parent := FormPrincipal.PnlPrincipal;
  FrmBusca.Align := alClient;
  FrmBusca.BorderStyle := bsNone;

  // Exibe a tela em quest?o
  FrmBusca.Show;
  pnlSobre.Visible := False;
end;

procedure TFormPrincipal.CreateFormCadastro;
begin
  // Modifica??es para ficar dentro do panel
  FormCadastro.Parent := FormPrincipal.PnlPrincipal;
  FormCadastro.Align := alClient;
  FormCadastro.BorderStyle := bsNone;

  // Exibe a tela em quest?o
  FormCadastro.Show;
  pnlSobre.Visible := False;
  DM.queryParentes.Open;
end;

end.
