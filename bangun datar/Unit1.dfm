object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 617
    Height = 353
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Persegi'
      object Label1: TLabel
        Left = 72
        Top = 72
        Width = 16
        Height = 13
        Caption = 'Sisi'
      end
      object Label2: TLabel
        Left = 192
        Top = 72
        Width = 33
        Height = 13
        Caption = 'Keliling'
      end
      object Label3: TLabel
        Left = 328
        Top = 72
        Width = 23
        Height = 13
        Caption = 'Luas'
      end
      object Edit1: TEdit
        Left = 56
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 184
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 312
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Button1: TButton
        Left = 200
        Top = 136
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Persegi Panjang'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Segitiga'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'Trapesium'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'Belah ketupat'
      ImageIndex = 4
    end
    object TabSheet6: TTabSheet
      Caption = 'Jajar Genjang'
      ImageIndex = 5
    end
    object TabSheet7: TTabSheet
      Caption = 'Layang-layang'
      ImageIndex = 6
    end
    object TabSheet8: TTabSheet
      Caption = 'Lingkaran'
      ImageIndex = 7
    end
  end
end
