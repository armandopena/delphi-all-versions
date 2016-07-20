object FrmJanelaFilha: TFrmJanelaFilha
  Left = 200
  Top = 204
  Width = 727
  Height = 373
  Caption = 'Janela Filha MDI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainJanelaFilha
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 105
  TextHeight = 13
  object ImagemFilha: TImage
    Left = 0
    Top = 0
    Width = 719
    Height = 316
    Align = alClient
  end
  object MainJanelaFilha: TMainMenu
    Left = 400
    Top = 24
    object Janela1: TMenuItem
      Caption = 'Janela'
      object OrganizarHorizontalmente1: TMenuItem
        Caption = 'Organizar Horizontalmente'
        OnClick = OrganizarHorizontalmente1Click
      end
      object OrganizarVerticalmente1: TMenuItem
        Caption = 'Organizar Verticalmente'
        OnClick = OrganizarVerticalmente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object EmCascata1: TMenuItem
        Caption = 'Em Cascata'
        OnClick = EmCascata1Click
      end
      object LadoaLado1: TMenuItem
        Caption = 'Arrumar Icones'
        OnClick = LadoaLado1Click
      end
    end
  end
end
