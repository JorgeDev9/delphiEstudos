unit ProjetoEstudos.View.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, ProjetoEstudos.Data.DMdata;

type
  TFrmBusca = class(TForm)
    Resultado: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BtnBusca: TButton;
    EditBusca: TEdit;
    StaticText1: TStaticText;
    DSBusca: TDataSource;
    procedure BtnBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBusca: TFrmBusca;

implementation

{$R *.dfm}

procedure TFrmBusca.BtnBuscaClick(Sender: TObject);
begin
  DM.qryBusca.Close;
  DM.qryBusca.ParamByName('clinome').AsString := (EditBusca.Text);
  DM.qryBusca.Open;
end;

end.
