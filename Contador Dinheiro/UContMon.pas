unit UContMon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TValorTipo = (ntCem,ntCinquenta,ntVinte,ntDez,ntCinco,ntUm,ntDois,
  moCinquenta,moVinteCinco,moDez,moCinco,moUm);

  TForm1 = class(TForm)
    BtnVerificar: TButton;
    Label1: TLabel;
    EdValor: TEdit;
    LblResultado: TLabel;
    procedure BtnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.BtnVerificarClick(Sender: TObject);
    function QuantNotas(const Tipo: TValorTipo; var Valor: Currency; var SNota: String): Integer;
    var ValorNota: Currency;
    begin
      case Tipo of
        ntCem:
        begin
          ValorNota := 100;
          SNota := 'CEM';
        end;
        ntCinquenta:
        begin
          ValorNota := 50;
          SNota := 'CINQUENTA';
        end;
        ntVinte:
        begin
          ValorNota := 20;
          SNota := 'VINTE';
        end;
        ntDez:
        begin
          ValorNota := 10;
          SNota := 'DEZ';
        end;
        ntCinco:
        begin
          ValorNota := 5;
          SNota := 'CINCO';
        end;
        ntUm:
        begin
          ValorNota := 1;
          SNota := 'UM';
        end;
        ntDois:
        begin
          ValorNota := 2;
          SNota := 'DOIS';
        end;
        moCinquenta:
        begin
          ValorNota := FloatToCurr(0.50);
          SNota := 'CINQUENTA CENTAVOS';
        end;
        moVinteCinco:
        begin
          ValorNota := FloatToCurr(0.25);
          SNota := 'VINTE E CINCO CENTAVOS';
        end;
        moDez:
        begin
          ValorNota := FloatToCurr(0.10);
          SNota := 'DEZ CENTAVOS';
        end;
        moCinco:
        begin
          ValorNota := FloatToCurr(00.05);
          SNota := 'CINCO CENTAVOS';
        end;
        moUm:
        begin
          ValorNota := FloatToCurr(00.01);
          SNota := 'UM CENTAVOS';
        end;
      end;
      if Valor >= ValorNota then
      begin
        Result := Trunc(Valor / ValorNota);
        if (Tipo in [moCinquenta,moVinteCinco,moDez,moCinco,moUm]) then
        begin
            Valor := Valor - (ValorNota * Result);
        end
        else
          Valor := Valor - (Round(ValorNota * Result));
        SNota := IntToStr(Result) +' '+ SNota;
      end
      else
        SNota := EmptyStr;
    end;

var ValorEntr: Currency;
    Nota: array[0..11] of Word;
    I: Integer;
    ValorTipo: TValorTipo;
    S: String;
begin
    LblResultado.Caption := EmptyStr;
    ValorEntr := StrToFloat(EdValor.Text);
    for I := 0 to High(Nota) do
    begin
      ValorTipo := TValorTipo(I);
      Nota[I] := QuantNotas(ValorTipo,ValorEntr,S);
      if S <> EmptyStr then
        LblResultado.Caption := LblResultado.Caption + ' ' + S + #13#10;
    end;

end;

end.
