unit JanelaFilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TFrmJanelaFilha = class(TForm)
    ImagemFilha: TImage;
    MainJanelaFilha: TMainMenu;
    Janela1: TMenuItem;
    OrganizarHorizontalmente1: TMenuItem;
    OrganizarVerticalmente1: TMenuItem;
    N1: TMenuItem;
    EmCascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    procedure OrganizarHorizontalmente1Click(Sender: TObject);
    procedure OrganizarVerticalmente1Click(Sender: TObject);
    procedure EmCascata1Click(Sender: TObject);
    procedure LadoaLado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJanelaFilha: TFrmJanelaFilha;

implementation

{$R *.dfm}

procedure TFrmJanelaFilha.OrganizarHorizontalmente1Click(Sender: TObject);
begin
   TileMode := tbHorizontal;
   Tile;
end;

procedure TFrmJanelaFilha.OrganizarVerticalmente1Click(Sender: TObject);
begin
   TileMode := tbVertical;
   Tile;
end;

procedure TFrmJanelaFilha.EmCascata1Click(Sender: TObject);
begin
    Cascade;
end;

procedure TFrmJanelaFilha.LadoaLado1Click(Sender: TObject);
begin
   ArrangeIcons;
end;

end.
