object muklasFLogTransaksi: TmuklasFLogTransaksi
  Left = 683
  Top = 0
  AutoScroll = False
  ClientHeight = 690
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 9
    Top = 12
    Width = 1348
    Height = 683
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 48
      Top = 96
      Width = 1257
      Height = 569
      Color = clWhite
      DataSource = DataSource1
      FixedColor = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -13
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGrid1KeyDown
    end
    object Panel2: TPanel
      Left = 192
      Top = 24
      Width = 945
      Height = 65
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = '.: Data Transaksi :. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Forte'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
  end
  object ZQuery1: TZQuery
    Connection = muklasFUtama.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from muklas_nota')
    Params = <>
    Left = 463
    Top = 271
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 495
    Top = 271
  end
  object PopupMenu1: TPopupMenu
    Left = 73
    Top = 68
    object D1: TMenuItem
      Caption = 'Detail Transaksi'
      OnClick = D1Click
    end
    object H1: TMenuItem
      Caption = 'Hapus'
      OnClick = H1Click
    end
  end
end
