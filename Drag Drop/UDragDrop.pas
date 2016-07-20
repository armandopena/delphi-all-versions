unit UDragDrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, ComCtrls;

type
  TfrmDragDrop = class(TForm)
    GroupBox1: TGroupBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Panel1: TPanel;
    DriveComboBox1: TDriveComboBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabControl1: TTabControl;
    Memo1: TMemo;
    procedure Memo1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Memo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FileListBox1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure TabControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Path: String;

    procedure WMDROPFILES(var msg: TWMDropFiles); message WM_DROPFILES;
    procedure LoadFiles;
    procedure LoadTab(const indx: Integer = 0);
  public
    { Public declarations }
  end;

var
  frmDragDrop: TfrmDragDrop;

implementation


uses ShellAPI;

{$R *.dfm}

procedure TfrmDragDrop.FileListBox1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
    if Target is TMemo then
    begin
      with (Target as TMemo) do
      begin
        Color := clWindow;
      end;
    end;
end;

procedure TfrmDragDrop.FormCreate(Sender: TObject);
begin
    DragAcceptFiles(Handle, True);
end;

procedure TfrmDragDrop.LoadFiles;
var i: Integer;
    quantSelecionado: Integer;
begin
    TabControl1.Tabs.Clear;

    for I := 0 to FileListBox1.Items.Count - 1 do
    begin
      if FileListBox1.Selected[I] then
      begin
        TabControl1.Tabs.Add(FileListBox1.Items[I]);
      end;
    end;
    Path := ExtractFilePath(FileListBox1.FileName);
    LoadTab;
end;

procedure TfrmDragDrop.LoadTab(const indx: Integer);
var
    aFile: String;
begin
    aFile := TabControl1.Tabs[indx];
    Memo1.Lines.LoadFromFile(path + aFile);
end;

procedure TfrmDragDrop.Memo1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
    LoadFiles;
end;

procedure TfrmDragDrop.Memo1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    if Source is TFileListBox then
    begin
      Accept := True;
      Memo1.Color := clBlue;
      Memo1.Lines.Clear;
    end;
end;

procedure TfrmDragDrop.TabControl1Change(Sender: TObject);
begin
    LoadTab(TabControl1.TabIndex);
end;

procedure TfrmDragDrop.WMDROPFILES(var msg: TWMDropFiles);
const MAXFILE = 255;
var I, quantFile: Integer;
    fileName: array [0..MAXFILE] of char;
begin
    TabControl1.Tabs.Clear;
    quantFile := DragQueryFile(msg.Drop, $FFFFFFFF, fileName, MAXFILE);

    Path := '';
    for I := 0 to -1 + quantFile do
    begin
      DragQueryFile(msg.Drop, I, fileName, MAXFILE);
      if Path = '' then
        Path := ExtractFilePath(fileName);

      TabControl1.Tabs.Add(ExtractFileName(fileName));
    end;
    LoadTab;
    DragFinish(msg.Drop);
end;

end.
