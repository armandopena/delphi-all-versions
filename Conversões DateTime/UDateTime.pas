unit UDateTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls,Clipbrd;

type
  TFrmDataHora = class(TForm)
    CboData: TDateTimePicker;
    CboHora: TDateTimePicker;
    RdgTipo: TRadioGroup;
    procedure CboHoraChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RdgTipoClick(Sender: TObject);
  private
    { Private declarations }
    AreaTrans: TClipboard;
  public
    { Public declarations }
  end;

var
  FrmDataHora: TFrmDataHora;

implementation

{$R *.dfm}

procedure TFrmDataHora.CboHoraChange(Sender: TObject);
var Dt: String;
    PosVr: Integer;
begin
    CboData.Time := CboHora.Time;
    Dt := FloatToStr(CboData.DateTime);
    PosVr := Pos(',',Dt);

    case RdgTipo.ItemIndex of
    0:
      Delete(Dt,PosVr,Length(Dt));
    1:
      Delete(Dt,1,PosVr);
    end;

    AreaTrans.AsText := Dt;
end;

procedure TFrmDataHora.FormCreate(Sender: TObject);
begin
    AreaTrans := TClipboard.Create;
    CboHoraChange(Sender);
    CboData.DateTime := Date;
    CboHora.DateTime := Time;
end;

procedure TFrmDataHora.FormDestroy(Sender: TObject);
begin
    AreaTrans.Free;
    AreaTrans := nil;
end;

procedure TFrmDataHora.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      CboHoraChange(Self);
end;

procedure TFrmDataHora.RdgTipoClick(Sender: TObject);
begin
    CboData.Enabled := True;
    CboHora.Enabled := True;
    case RdgTipo.ItemIndex of
    1:
      CboData.Enabled := False;
    0:
      CboHora.Enabled := False;
    end;
    CboHoraChange(Self);
end;

end.
