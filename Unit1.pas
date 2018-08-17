unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP,
  Vcl.StdCtrls, IdFTPCommon;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    labeluser: TLabel;
    labelsenha: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    host: TEdit;
    user: TEdit;
    senha: TEdit;
    porta: TEdit;
    Button1: TButton;
    arquivo_local: TEdit;
    destino: TEdit;
    IdFTP1: TIdFTP;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

{
IP: 108.179.252.23
Usuário: contato@hops.com.br
Senha: hops@2018
Y:\datamais\_arte\logos\datamais.png
/wsite/_upl/produtos/datamais.png

}
  IdFTP1.Disconnect();

  IdFTP1.Host := host.text;
  IdFTP1.Port := strtoint(porta.text);
  IdFTP1.Username := user.text;
  IdFTP1.Password := senha.text;
  IdFTP1.TransferType := ftBinary;
  IdFTP1.Passive := true; { usa modo ativo }
  IdFTP1.ConnectTimeout := 10000;
  //IdFTP1.RecvBufferSize := 8192;
  try
  { Espera até 10 segundos pela conexão }
  IdFTP1.Connect;
  //IdFTP1.ChangeDir(destino);
  try

  except on E: Exception do
  begin
    ShowMessage(E.Message);
  end;

  end;
  IdFTP1.Put (arquivo_local.Text, destino.Text);
  except
  on E: Exception do
  ShowMessage(E.Message);
  end;

  ShowMessage('Processo Cocluido!');
end;

end.
