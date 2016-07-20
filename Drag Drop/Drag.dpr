program Drag;

uses
  Forms,
  UDragDrop in 'UDragDrop.pas' {frmDragDrop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDragDrop, frmDragDrop);
  Application.Run;
end.
