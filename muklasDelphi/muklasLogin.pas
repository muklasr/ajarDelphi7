unit muklasLogin;
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
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TmuklasFLogin = class(TForm)
    E_Username: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    BitBtn1: TBitBtn;
    ZQuery1: TZQuery;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFLogin: TmuklasFLogin;

implementation
                                                                                                                                                                         uses muklasUtama,
  muklasTransaksi, muklasBarang, muklasBarangTambah, muklasLogTransaksi, muklasLogDetail,
  muklasKaryawan,
  muklasKaryawanTambah;
{$R *.dfm}

procedure TmuklasFLogin.BitBtn1Click(Sender: TObject);
begin
ZQuery1.SQL.Text:='select kd_kasir, nm_kasir, pw from muklas_kasir where nm_kasir='+QuotedStr(E_Username.Text)+' and pw='+QuotedStr(LabeledEdit2.Text);
ZQuery1.ExecSQL;
ZQuery1.Open;
if ZQuery1.RowsAffected>0 then
begin
  muklasFLogin.Visible:=false;
  //showMessage(ZQuery1.Fields[0].AsString);
  muklasFTransaksi.txt_karyawan.Text:=ZQuery1.Fields[0].AsString;
  muklasFTransaksi.showModal;
end
else
begin
  ZQuery1.SQL.Text:='select admin,pw from muklas_profil where admin='+QuotedStr(E_Username.Text)+' and pw='+QuotedStr(LabeledEdit2.Text);
  ZQuery1.ExecSQL;
  ZQuery1.Open;

  if ZQuery1.RowsAffected>0 then
  begin
    muklasFLogin.Visible:=false;
    muklasFUtama.Visible:=true;
    muklasFUtama.StatusBar1.Panels[0].Text:='User: '+ZQuery1.Fields[1].AsString;
  end
  else ShowMessage('Login Gagal');
end
end;



end.
