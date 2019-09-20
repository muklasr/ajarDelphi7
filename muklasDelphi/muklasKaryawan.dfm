object muklasFKaryawan: TmuklasFKaryawan
  Left = -274
  Top = 203
  BorderStyle = bsSingle
  ClientHeight = 706
  ClientWidth = 1366
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 10
    Top = 10
    Width = 1348
    Height = 685
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 664
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 136
      Width = 1257
      Height = 521
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
      Columns = <
        item
          Expanded = False
          FieldName = 'kd_kasir'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_kasir'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jk'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telp'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'foto'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pw'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 192
      Top = 16
      Width = 945
      Height = 65
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = '.: Data Karyawan :. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Forte'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
    object E_Golek: TEdit
      Left = 48
      Top = 96
      Width = 881
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = E_GolekChange
    end
  end
  object ZQuery1: TZQuery
    Connection = muklasFUtama.ZConnection1
    SQL.Strings = (
      'select * from muklas_kasir')
    Params = <>
    Left = 457
    Top = 331
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 489
    Top = 331
  end
  object PopupMenu1: TPopupMenu
    Left = 513
    Top = 307
    object T1: TMenuItem
      Caption = '&Tambah'
      OnClick = T1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = '&Edit'
      OnClick = N1Click
    end
  end
end
