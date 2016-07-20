object FrmDataHora: TFrmDataHora
  Left = 366
  Top = 499
  BorderStyle = bsToolWindow
  BorderWidth = 2
  Caption = 'Data e Hora SQL'
  ClientHeight = 76
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object CboData: TDateTimePicker
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    Date = 39982.605164004630000000
    Time = 39982.605164004630000000
    TabOrder = 0
    OnChange = CboHoraChange
  end
  object CboHora: TDateTimePicker
    Left = 167
    Top = 8
    Width = 78
    Height = 21
    CalAlignment = dtaRight
    Date = 39982.631064456020000000
    Time = 39982.631064456020000000
    Kind = dtkTime
    TabOrder = 1
    OnChange = CboHoraChange
  end
  object RdgTipo: TRadioGroup
    Left = 8
    Top = 35
    Width = 237
    Height = 38
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Data'
      'Hora'
      'Data/Hora')
    TabOrder = 2
    OnClick = RdgTipoClick
  end
end
