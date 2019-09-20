unit muklasKaryawanTambah;
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
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls;

type
  TmuklasFKaryawanTambah = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    e1: TLabeledEdit;
    e2: TLabeledEdit;
    e6: TLabeledEdit;
    e4: TLabeledEdit;
    e5: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnGaksida: TBitBtn;
    ZQuery1: TZQuery;
    Label2: TLabel;
    e3: TRadioButton;
    e33: TRadioButton;
    procedure btnGaksidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure setip;          
    procedure kodeAnyar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFKaryawanTambah: TmuklasFKaryawanTambah;

implementation

uses muklasKaryawan, Math;

{$R *.dfm}

procedure TmuklasFKaryawanTambah.kodeAnyar;
var kodeLawas,kodeAnyar:string;
var jml,panjang:byte;
begin
muklasFKaryawan.ZQuery1.SQL.Text:='select * from muklas_kasir';
muklasFKaryawan.ZQuery1.ExecSQL;
muklasFKaryawan.ZQuery1.Open;
muklasFKaryawan.ZQuery1.Last;

if not(muklasFKaryawan.ZQuery1.Eof and muklasFKaryawan.ZQuery1.Bof) then
  Begin
  kodeLawas:=copy(muklasFKaryawan.ZQuery1.Fields[0].AsString,2,4);
  //ShowMessage('kode lawas'+kodeLawas);
  jml:=StrToInt(kodeLawas)+1;
 panjang:=Length (IntToStr(jml));
 // Showmessage('panjang'+IntToStr(panjang));
    case panjang of
      1:kodeAnyar:='K000'+inttostr(jml);
      2:kodeAnyar:='K00'+inttostr(jml);
      3:kodeAnyar:='K0'+inttostr(jml);
      4:kodeAnyar:='K'+inttostr(jml);
    end
End;
e1.Text:=kodeAnyar;
end;

procedure TmuklasFKaryawanTambah.setip;
begin
e2.Text:='';
e3.Checked:=false;
e33.Checked:=false;
e4.Text:='';
e5.Clear;
e6.Text:='';
end;

procedure TmuklasFKaryawanTambah.btnGaksidaClick(Sender: TObject);
begin
setip;
muklasFKaryawanTambah.Close;
end;

procedure TmuklasFKaryawanTambah.FormShow(Sender: TObject);
begin
if Panel2.Caption='Tambah Data' then
begin
       setip;
       kodeAnyar;
end else
begin
    e1.Text:=muklasFKaryawan.DBGrid1.Fields[0].AsString;
    e2.Text:=muklasFKaryawan.DBGrid1.Fields[1].AsString;
    if muklasFKaryawan.DBGrid1.Fields[2].AsString='L' then e3.Checked:=true
    else e33.Checked:=true;
    e4.Text:=muklasFKaryawan.DBGrid1.Fields[3].AsString;
    e5.Text:=muklasFKaryawan.DBGrid1.Fields[4].AsString;
    e6.Text:=muklasFKaryawan.DBGrid1.Fields[6].AsString;
end;
end;

procedure TmuklasFKaryawanTambah.btnSaveClick(Sender: TObject);
var sqle,jk:string;
begin
If e3.Checked then jk:='L';
If e33.Checked then jk:='P';
if Panel2.Caption='Tambah Data' then
begin
     sqle:='insert into muklas_kasir values('+
     QuotedStr(e1.Text)+','+
     QuotedStr(e2.Text)+','+
     QuotedStr(jk)+','+
     QuotedStr(e4.Text)+','+
     QuotedStr(e5.Lines.GetText)+','+
     QuotedStr('default')+','+
     QuotedStr(e6.Text)+
     ')';
     //showmessage(sqle);
end else
begin
      sqle:='update muklas_kasir set nm_kasir='+
     QuotedStr(e2.Text)+', jk='+
     QuotedStr(jk)+', telp='+
     QuotedStr(e4.Text)+', alamat='+
     QuotedStr(e5.Lines.GetText)+', pw='+
     QuotedStr(e6.Text)+
     ' where kd_kasir='+QuotedStr(e1.Text);
end;
     ZQuery1.SQL.Text:=sqle;
     ZQuery1.ExecSQL;
     muklasFKaryawan.ZQuery1.SQL.Text:='select * from muklas_kasir';
     muklasFKaryawan.ZQuery1.ExecSQL;
     muklasFKaryawan.ZQuery1.Open;
     setip;
     ShowMessage(Panel2.Caption+' Berhasil');
muklasFKaryawanTambah.Close;
end;

end.

