object muklasFDetail: TmuklasFDetail
  Left = 531
  Top = 174
  Width = 737
  Height = 520
  AutoSize = True
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 482
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 16
      Top = 88
      Width = 689
      Height = 353
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
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -13
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'kd_nota'
          Title.Alignment = taCenter
          Title.Caption = 'Kode Nota'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_barang'
          Title.Alignment = taCenter
          Title.Caption = 'Kode Barang'
          Width = 100
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
          FieldName = 'total_harga'
          Title.Alignment = taCenter
          Title.Caption = 'Total Harga'
          Width = 100
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 16
      Top = 16
      Width = 689
      Height = 65
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = '.: Detail Transaksi :. '
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
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 160
  end
  object ZQuery1: TZQuery
    Connection = muklasFUtama.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      
        'select muklas_detailnota.kd_nota, muklas_barang.nm_barang, mukla' +
        's_detailnota.jml, muklas_detailnota.total_harga from muklas_deta' +
        'ilnota, muklas_barang where muklas_detailnota.kd_barang=muklas_b' +
        'arang.kd_barang')
    Params = <>
    Left = 48
    Top = 128
  end
end
