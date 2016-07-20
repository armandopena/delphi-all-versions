object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 279
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 51
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object LblResultado: TLabel
    Left = 64
    Top = 104
    Width = 261
    Height = 167
    AutoSize = False
    WordWrap = True
  end
  object BtnVerificar: TButton
    Left = 250
    Top = 46
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = BtnVerificarClick
  end
  object EdValor: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '430,50'
  end
end
