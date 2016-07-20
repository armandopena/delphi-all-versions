program PrjDateTime;

uses
  Forms,
  UDateTime in 'UDateTime.pas' {FrmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmDataHora, FrmDataHora);
  Application.Run;
end.
