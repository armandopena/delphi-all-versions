unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, ValEdit, ExtCtrls, Sockets;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    edtServer: TLabeledEdit;
    edtMinPort: TLabeledEdit;
    Label1: TLabel;
    edtMaxPort: TEdit;
    lstPorts: TValueListEditor;
    pb1: TProgressBar;
    btnExecute: TButton;
    btnSair: TButton;
    TcpClient1: TTcpClient;
    btnStop: TButton;
    ValueListEditor1: TValueListEditor;
    procedure btnSairClick(Sender: TObject);
    procedure TcpClient1Connect(Sender: TObject);
    procedure TcpClient1Error(Sender: TObject; SocketError: Integer);
    procedure btnExecuteClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    currentPort: String;
    abortProcess: Boolean;
    procedure addPort(const lst: TValueListEditor; const statusMsg: AnsiString);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.addPort(const lst: TValueListEditor; const statusMsg: AnsiString);
begin
  lst.InsertRow(currentPort, statusMsg, False);
  LST.Refresh;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  abortProcess := True;
  Application.Terminate;
end;

procedure TForm1.TcpClient1Connect(Sender: TObject);
begin
    addPort(lstPorts, 'OK');
end;

procedure TForm1.TcpClient1Error(Sender: TObject; SocketError: Integer);
begin
    addPort(ValueListEditor1, 'Erro: '+ IntToStr(SocketError));
end;

procedure TForm1.btnExecuteClick(Sender: TObject);
var I, minPort, maxPort: Integer;

begin
    abortProcess := False;
    pb1.Position := 0;
    lstPorts.Strings.Clear;
    minPort := StrToInt(edtMinPort.Text);
    maxPort := StrToInt(edtMaxPort.Text);
    TcpClient1.RemoteHost := edtServer.Text;
    pb1.Min := minPort;
    pb1.Max := maxPort;
    for I := minPort to maxPort do
    begin
      currentPort := IntToStr(I);
      TcpClient1.RemotePort := currentPort;
      try
        TcpClient1.Connect;
      except
      end;
      if abortProcess then Break;

      pb1.Position := I;
      pb1.Refresh;
      Application.ProcessMessages;
    end;
    TcpClient1.Disconnect;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
    abortProcess := True;
end;

end.
