object muklasFTransaksi: TmuklasFTransaksi
  Left = 406
  Top = 342
  BorderStyle = bsNone
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 23
    Top = 22
    Width = 1319
    Height = 650
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object Shape1: TShape
      Left = 1057
      Top = 24
      Width = 201
      Height = 65
      Shape = stRoundRect
    end
    object txtJam: TLabel
      Left = 1080
      Top = 31
      Width = 160
      Height = 52
      Caption = '00:00:00'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -37
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Shape2: TShape
      Left = 49
      Top = 100
      Width = 1216
      Height = 65
      Shape = stRoundRect
    end
    object txt_total: TLabel
      Left = 643
      Top = 107
      Width = 23
      Height = 52
      Alignment = taCenter
      Caption = '0'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -37
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object txt_jmlItem: TLabel
      Left = 48
      Top = 584
      Width = 76
      Height = 13
      Caption = 'Item yang dibeli '
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 176
      Width = 1217
      Height = 401
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
          FieldName = 'kd_barang'
          Title.Alignment = taCenter
          Title.Caption = 'Kode'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_barang'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama Barang'
          Width = 333
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jml'
          Title.Alignment = taCenter
          Title.Caption = 'Qty'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Diskon'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total_harga'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 200
          Visible = True
        end>
    end
    object txt_karyawan: TLabeledEdit
      Left = 144
      Top = 25
      Width = 145
      Height = 28
      Color = clScrollBar
      EditLabel.Width = 120
      EditLabel.Height = 23
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Kode Karyawan  '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
    end
    object txt_kdNota: TLabeledEdit
      Left = 144
      Top = 57
      Width = 145
      Height = 28
      Color = clScrollBar
      EditLabel.Width = 121
      EditLabel.Height = 23
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Kode Nota         '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 2
    end
    object txt_kdBarang: TLabeledEdit
      Left = 432
      Top = 25
      Width = 145
      Height = 28
      EditLabel.Width = 120
      EditLabel.Height = 23
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Kode Barang      '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 3
      OnChange = txt_kdBarangChange
    end
    object txt_qty: TLabeledEdit
      Left = 432
      Top = 57
      Width = 145
      Height = 28
      EditLabel.Width = 120
      EditLabel.Height = 23
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Qty                  '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = txt_qtyKeyPress
    end
    object txt_bayar: TLabeledEdit
      Left = 736
      Top = 587
      Width = 190
      Height = 53
      EditLabel.Width = 80
      EditLabel.Height = 38
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Bayar:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -27
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 5
      Text = '0'
      OnChange = txt_kdBarangChange
      OnKeyPress = txt_bayarKeyPress
    end
    object PSusuk: TPanel
      Left = 440
      Top = 216
      Width = 393
      Height = 249
      Caption = 'susuk'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 6
      Visible = False
      object Label1: TLabel
        Left = 88
        Top = 24
        Width = 220
        Height = 52
        Caption = 'Terima Kasih'
      end
      object Button1: TButton
        Left = 160
        Top = 192
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object txt_kembali: TLabeledEdit
      Left = 1076
      Top = 587
      Width = 190
      Height = 53
      EditLabel.Width = 113
      EditLabel.Height = 38
      EditLabel.Hint = 'Kode'
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Kembali: '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -27
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      EditLabel.ParentShowHint = False
      EditLabel.ShowHint = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 7
      OnChange = txt_kdBarangChange
      OnKeyPress = txt_bayarKeyPress
    end
  end
  object Panel2: TPanel
    Left = 23
    Top = 672
    Width = 1319
    Height = 73
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 1
  end
  object ZQBarang: TZQuery
    Connection = muklasFUtama.ZConnection1
    Params = <>
    Left = 7
    Top = 13
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 8
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = muklasFUtama.ZConnection1
    SQL.Strings = (
      
        'select muklas_barang.kd_barang, muklas_barang.nm_barang, muklas_' +
        'barang.harga, muklas_detailnota.jml, muklas_detailnota.total_har' +
        'ga from muklas_barang, muklas_detailnota where muklas_detailnota' +
        '.kd_barang=muklas_barang.kd_barang')
    Params = <>
    Left = 7
    Top = 86
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 120
  end
  object ZQuery2: TZQuery
    Connection = muklasFUtama.ZConnection1
    SQL.Strings = (
      'select * from muklas_detailnota')
    Params = <>
    Left = 8
    Top = 160
  end
end
