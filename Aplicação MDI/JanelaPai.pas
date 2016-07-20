unit JanelaPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, Menus, ExtDlgs, ExtCtrls,jpeg;

type
  TForm1 = class(TForm)
    TbPrincipal: TToolBar;
    ImageListPrincipal: TImageList;
    ImageListLink: TImageList;
    BtnAbrir: TToolButton;
    BtnDistorcer: TToolButton;
    BtnFechar: TToolButton;
    PopupTipoImg: TPopupMenu;
    MnuNormal: TMenuItem;
    MnuDistorcer: TMenuItem;
    ImagePrincipal: TImage;
    SbPrincipal: TStatusBar;
    OpenImagem: TOpenPictureDialog;
    procedure BtnAbrirClick(Sender: TObject);
    procedure MnuNormalClick(Sender: TObject);
    procedure MnuDistorcerClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
   // arquivoatual: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnAbrirClick(Sender: TObject);
begin
   if OpenImagem.Execute then
     ImagePrincipal.Picture.LoadFromFile( OpenImagem.FileName);

end;

procedure TForm1.MnuNormalClick(Sender: TObject);
begin
   MnuNormal.Checked:=True;
   ImagePrincipal.Stretch:=False
end;

procedure TForm1.MnuDistorcerClick(Sender: TObject);
begin
    MnuDistorcer.Checked:=True;
    ImagePrincipal.Stretch:=True;

end;

procedure TForm1.BtnFecharClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
