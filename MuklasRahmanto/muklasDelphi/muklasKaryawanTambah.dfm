object muklasFKaryawanTambah: TmuklasFKaryawanTambah
  Left = 618
  Top = 134
  BorderStyle = bsDialog
  ClientHeight = 442
  ClientWidth = 618
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 80
    Width = 601
    Height = 305
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = '   '
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 178
      Width = 56
      Height = 23
      Caption = ' Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 36
      Top = 102
      Width = 99
      Height = 23
      Caption = 'Jenis Kelamin'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object e1: TLabeledEdit
      Left = 160
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
      ReadOnly = True
      TabOrder = 0
    end
    object e2: TLabeledEdit
      Left = 160
      Top = 63
      Width = 145
      Height = 28
      EditLabel.Width = 120
      EditLabel.Height = 23
      EditLabel.Caption = 'Nama Karyawan '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
    end
    object e6: TLabeledEdit
      Left = 160
      Top = 268
      Width = 145
      Height = 28
      EditLabel.Width = 121
      EditLabel.Height = 23
      EditLabel.Caption = 'Password           '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 2
    end
    object e4: TLabeledEdit
      Left = 160
      Top = 136
      Width = 145
      Height = 28
      EditLabel.Width = 122
      EditLabel.Height = 23
      EditLabel.Caption = 'No. Telepon       '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Comic Sans MS'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 3
    end
    object e5: TMemo
      Left = 160
      Top = 171
      Width = 185
      Height = 89
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 4
    end
    object e3: TRadioButton
      Left = 160
      Top = 104
      Width = 41
      Height = 17
      Caption = 'L'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
    end
    object e33: TRadioButton
      Left = 208
      Top = 104
      Width = 41
      Height = 17
      Caption = 'P'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 601
    Height = 65
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = True
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 8
    Top = 392
    Width = 601
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 2
    object btnSave: TBitBtn
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
      OnClick = btnSaveClick
      Style = bsWin31
    end
    object btnGaksida: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 1
      OnClick = btnGaksidaClick
    end
  end
  object ZQuery1: TZQuery
    Connection = muklasFUtama.ZConnection1
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 18
    Top = 18
  end
end
