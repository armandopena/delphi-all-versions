object frmDragDrop: TfrmDragDrop
  Left = 0
  Top = 0
  Caption = 'Uso do Drag & Drop'
  ClientHeight = 378
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 177
    Top = 0
    Height = 378
    MinSize = 173
    ExplicitLeft = 176
    ExplicitTop = 192
    ExplicitHeight = 100
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 177
    Height = 378
    Align = alLeft
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 2
      Top = 196
      Width = 173
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 35
      ExplicitWidth = 165
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 2
      Top = 35
      Width = 173
      Height = 161
      Align = alClient
      FileList = FileListBox1
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 33
    end
    object FileListBox1: TFileListBox
      Left = 2
      Top = 200
      Width = 173
      Height = 176
      Align = alBottom
      DragMode = dmAutomatic
      ItemHeight = 13
      Mask = '*.txt'
      MultiSelect = True
      TabOrder = 1
      OnEndDrag = FileListBox1EndDrag
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 173
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object DriveComboBox1: TDriveComboBox
        Left = 0
        Top = -1
        Width = 173
        Height = 19
        DirList = DirectoryListBox1
        TabOrder = 0
      end
    end
  end
  object TabControl1: TTabControl
    Left = 180
    Top = 0
    Width = 439
    Height = 378
    Align = alClient
    TabOrder = 1
    OnChange = TabControl1Change
    ExplicitLeft = 288
    ExplicitTop = 136
    ExplicitWidth = 289
    ExplicitHeight = 193
    object Memo1: TMemo
      Left = 4
      Top = 6
      Width = 431
      Height = 368
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnDragDrop = Memo1DragDrop
      OnDragOver = Memo1DragOver
      ExplicitLeft = 180
      ExplicitTop = 0
      ExplicitWidth = 439
      ExplicitHeight = 378
    end
  end
end
