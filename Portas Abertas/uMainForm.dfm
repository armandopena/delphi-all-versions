object Form1: TForm1
  Left = 192
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Portas Abertas'
  ClientHeight = 477
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 81
    Caption = 'Configura'#231#245'es'
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 48
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object edtServer: TLabeledEdit
      Left = 24
      Top = 40
      Width = 113
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Servidor'
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object edtMinPort: TLabeledEdit
      Left = 152
      Top = 40
      Width = 41
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Portas'
      TabOrder = 1
      Text = '0'
    end
    object edtMaxPort: TEdit
      Left = 224
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '99999'
    end
  end
  object lstPorts: TValueListEditor
    Left = 8
    Top = 96
    Width = 169
    Height = 300
    TabOrder = 1
    TitleCaptions.Strings = (
      'Porta'
      'Status')
    ColWidths = (
      57
      106)
  end
  object pb1: TProgressBar
    Left = 8
    Top = 400
    Width = 345
    Height = 17
    TabOrder = 2
  end
  object btnExecute: TButton
    Left = 120
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    Default = True
    TabOrder = 3
    OnClick = btnExecuteClick
  end
  object btnSair: TButton
    Left = 280
    Top = 440
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btnSairClick
  end
  object btnStop: TButton
    Left = 200
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Parar'
    TabOrder = 5
    OnClick = btnStopClick
  end
  object ValueListEditor1: TValueListEditor
    Left = 192
    Top = 96
    Width = 169
    Height = 300
    TabOrder = 6
    TitleCaptions.Strings = (
      'Porta'
      'Status')
    ColWidths = (
      57
      106)
  end
  object TcpClient1: TTcpClient
    OnConnect = TcpClient1Connect
    OnError = TcpClient1Error
    Left = 312
    Top = 16
  end
end
