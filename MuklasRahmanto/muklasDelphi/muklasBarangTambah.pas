unit muklasBarangTambah;
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
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, sSkinManager;

type
  TmuklasFBarangTambah = class(TForm)
    Panel1: TPanel;
    e1: TLabeledEdit;
    e2: TLabeledEdit;
    e3: TLabeledEdit;
    e4: TLabeledEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    e5: TMemo;
    btnSave: TBitBtn;
    btnGaksida: TBitBtn;
    ZQuery1: TZQuery;
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
  muklasFBarangTambah: TmuklasFBarangTambah;
implementation
      uses muklasBarang;
{$R *.dfm}

procedure TmuklasFBarangTambah.kodeAnyar;
var kodeLawas,kodeAnyar:string;
var jml,panjang:byte;
begin
muklasFBarang.ZQuery1.SQL.Text:='select * from muklas_barang';
muklasFBarang.ZQuery1.ExecSQL;
muklasFBarang.ZQuery1.Open;
muklasFBarang.ZQuery1.Last;

if not(muklasFBarang.ZQuery1.Eof and muklasFBarang.ZQuery1.Bof) then
  Begin
  kodeLawas:=copy(muklasFBarang.ZQuery1.Fields[0].AsString,2,4);
  //ShowMessage('kode lawas'+kodeLawas);
  jml:=StrToInt(kodeLawas)+1;
 panjang:=Length (IntToStr(jml));
 // Showmessage('panjang'+IntToStr(panjang));
    case panjang of
      1:kodeAnyar:='B000'+inttostr(jml);
      2:kodeAnyar:='B00'+inttostr(jml);
      3:kodeAnyar:='B0'+inttostr(jml);
      4:kodeAnyar:='B'+inttostr(jml);
    end
End;
e1.Text:=kodeAnyar;
end;

procedure TmuklasFBarangTambah.setip;
begin
e2.Text:='';
e3.Text:='';
e4.Text:='';
e5.Clear;
end;

procedure TmuklasFBarangTambah.btnGaksidaClick(Sender: TObject);
begin
   setip;
muklasFBarangTambah.Close;
end;

procedure TmuklasFBarangTambah.FormShow(Sender: TObject);
begin
if Panel2.Caption='Tambah Data' then
begin
       setip;
kodeAnyar;

end else
begin
    e1.Text:=muklasFBarang.DBGrid1.Fields[0].AsString;
    e2.Text:=muklasFBarang.DBGrid1.Fields[1].AsString;
    e3.Text:=muklasFBarang.DBGrid1.Fields[2].AsString;
    e4.Text:=muklasFBarang.DBGrid1.Fields[3].AsString;
    e5.Text:=muklasFBarang.DBGrid1.Fields[4].AsString;
end;
end;

procedure TmuklasFBarangTambah.btnSaveClick(Sender: TObject);
var sqle:string;
begin
if Panel2.Caption='Tambah Data' then
begin
     sqle:='insert into muklas_barang values('+
     QuotedStr(e1.Text)+','+
     QuotedStr(e2.Text)+','+
     QuotedStr(e3.Text)+','+
     QuotedStr(e4.Text)+','+
     QuotedStr(e5.Lines.GetText)+','+
     QuotedStr('default')+
     ')';
end else
begin
      sqle:='update muklas_barang set nm_barang='+
     QuotedStr(e2.Text)+', harga='+
     QuotedStr(e3.Text)+', stok='+
     QuotedStr(e4.Text)+', spesifikasi='+
     QuotedStr(e5.Lines.GetText)+
     ' where kd_barang='+QuotedStr(e1.Text);
end;
     ZQuery1.SQL.Text:=sqle;
     ZQuery1.ExecSQL;
     muklasFBarang.ZQuery1.SQL.Text:='select * from muklas_barang';
     muklasFBarang.ZQuery1.ExecSQL;
     muklasFBarang.ZQuery1.Open;
     setip;
     ShowMessage(Panel2.Caption+' Berhasil');
muklasFBarangTambah.Close;
end;

end.
