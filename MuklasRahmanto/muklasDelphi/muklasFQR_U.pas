unit muklasFQR_U;
{*************************
 *************************
 ***  Muklas Rahmanto  ***
 ***       RPL 1       ***
 ***   SMKN 1 BANTUL   ***
 *************************
 *************************}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, grimgctrl;

type
  TmuklasFQR = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRHRule1: TQRHRule;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRHRule2: TQRHRule;
    QRNota: TQuickRep;
    DetailBand2: TQRBand;
    SummaryBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRRichText1: TQRRichText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFQR: TmuklasFQR;

implementation

uses muklasBarang, muklasTransaksi, muklasutama;
{$R *.dfm}

end.
