unit muklasTransaksi;
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
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, Mask, sSkinManager, sButton,
  sEdit;

type
  TmuklasFTransaksi = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Shape1: TShape;
    txtJam: TLabel;
    Shape2: TShape;
    txt_total: TLabel;
    Panel2: TPanel;
    txt_karyawan: TLabeledEdit;
    txt_kdNota: TLabeledEdit;
    txt_kdBarang: TLabeledEdit;
    txt_qty: TLabeledEdit;
    ZQBarang: TZQuery;
    txt_bayar: TLabeledEdit;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    Timer1: TTimer;
    ZQuery2: TZQuery;
    PSusuk: TPanel;
    Label1: TLabel;
    Button1: TButton;
    txt_kembali: TLabeledEdit;
    txt_jmlItem: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure txt_qtyKeyPress(Sender: TObject; var Key: Char);
    procedure txt_kdBarangChange(Sender: TObject);
    procedure Anyar;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_bayarKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFTransaksi: TmuklasFTransaksi;

implementation
uses muklasUtama, Math, muklasFQR_U;

{$R *.dfm}

procedure TmuklasFTransaksi.Anyar;    //procedure gawe kodeAnyar
var kodeLawas,kodeAnyar:string;
var jml,panjang:byte;
begin
  //nggo milih baris ngisor dw
  ZQBarang.SQL.Text:='select * from muklas_nota';
  ZQBarang.ExecSQL;
  ZQBarang.Open;
  ZQBarang.Last;

  //nek udu kode kepisan
  if not(ZQBarang.Eof and ZQBarang.Bof) then
    Begin
    kodeLawas:=copy(ZQBarang.Fields[0].AsString,2,4);   //kodeLawas diisi huruf/angka ke 2
    //ShowMessage('kode lawas'+kodeLawas);
    jml:=StrToInt(kodeLawas)+1;                        //Gawe kode anyar. kodeLawas di dadekkan Int trus ditambah 1
    panjang:=Length (IntToStr(jml));                   //dawane kodeAnyar
    // Showmessage('panjang'+IntToStr(panjang));
    case panjang of
      1:kodeAnyar:='N000'+inttostr(jml);               //nek dawane kodeAnyar 1 / satuan maka ngarepe ditambahi N000
      2:kodeAnyar:='N00'+inttostr(jml);                //nek dawane kodeAnyar 2 / puluhan maka ngarepe ditambahi N00
      3:kodeAnyar:='N0'+inttostr(jml);                 //nek dawane kodeAnyar 3 / ratusan maka ngarepe ditambahi N0
      4:kodeAnyar:='N'+inttostr(jml);                  //nek dawane kodeAnyar 4 / ribuan maka ngarepe ditambahi N
    end
  End  else kodeAnyar:='N0001';                        //nek kode kepisan
  txt_kdNota.Text:=kodeAnyar;                          //ditampilkan ning txt_kdNota

  ZQBarang.SQL.Text:='insert into muklas_nota(kd_nota,kd_kasir,tgl,waktu) values('+
  QuotedStr(txt_kdNota.Text)+','+
  QuotedStr(txt_karyawan.Text)+','+
  QuotedStr(FormatDateTime('ddMMyy',now))+','+
  QuotedStr(txtJam.Caption)+
  ')';
  ZQBarang.ExecSQL;
end;

procedure TmuklasFTransaksi.Timer1Timer(Sender: TObject);
begin
  txtJam.Caption:=FormatDateTime('HH:MM:ss',now)
end;

procedure TmuklasFTransaksi.txt_qtyKeyPress(Sender: TObject; var Key: Char);
var kd_barang, nm_barang:string;
var  qty, stok: byte;
var hrg_barang, total, disc:Integer;
begin
  //nek pencet Enter
  if key=char(13) then
  begin
    disc:=0;
    total:=0;

    //Nggoleki barang sek dituku
    ZQBarang.SQL.Text:='select * from muklas_barang where kd_barang='+QuotedStr(txt_kdBarang.Text);
    ZQBarang.ExecSQL;
    ZQBarang.Open;

    stok:=ZQBarang.Fields[3].AsInteger; //stok awal
    kd_barang:= ZQBarang.Fields[0].AsString;
    nm_barang:= ZQBarang.Fields[1].AsString;
    hrg_barang:= ZQBarang.Fields[2].AsInteger;
    qty:=StrToInt(txt_qty.Text);
    total:= hrg_barang*qty-disc;
    stok:=stok-qty;               //stok bar dituku

    //update stok
    ZQBarang.SQL.Text:='update muklas_barang set stok='+QuotedStr(IntToStr(stok))+
    ' where kd_barang='+QuotedStr(kd_barang);
    ZQBarang.ExecSQL;

    //nambah ning detailNota
    ZQBarang.SQL.Text:='insert into muklas_detailnota values('+
    QuotedStr(txt_kdNota.Text)+','+
    QuotedStr(kd_barang)+','+
    QuotedStr(IntToStr(qty))+','+
    QuotedStr(IntToStr(total))+
    ')';
    ZQBarang.ExecSQL;

    //ngisi dbgrid
    ZQuery1.SQL.Text:='select muklas_barang.kd_barang,muklas_barang.nm_barang,muklas_barang.harga,muklas_detailnota.jml,muklas_detailnota.total_harga from muklas_barang,muklas_detailnota where muklas_detailnota.kd_barang=muklas_barang.kd_barang and muklas_detailnota.kd_nota='+QuotedStr(txt_kdNota.Text);
    ZQuery1.ExecSQL;
    ZQuery1.Open;
    total:=0;

    //ngitung totalHarga
    ZQuery2.SQL.Text:='select sum(total_harga) from muklas_detailnota where kd_nota='+QuotedStr(txt_kdNota.Text);
    ZQuery2.ExecSQL;
    ZQuery2.Open;

    txt_total.Caption:=ZQuery2.Fields[0].AsString;

    txt_qty.ReadOnly:=true;
    txt_kdBarang.Text:='';
    txt_qty.Text:='';
    //ShowMessage(ZQBarang.Fields[1].AsString);
    txt_kdBarang.SetFocus;
    txt_jmlItem.Caption:='Jenis barang yang dibeli ada '+ IntToStr(ZQuery1.RowsAffected);
  end
end;

procedure TmuklasFTransaksi.txt_kdBarangChange(Sender: TObject);
begin
  ZQBarang.SQL.Text:='select * from muklas_barang where kd_barang='+QuotedStr(txt_kdBarang.Text);
  ZQBarang.ExecSQL;
  ZQBarang.Open;
  If ZQBarang.RowsAffected > 0 then      //nek barange ana warnane kuning
  begin
    txt_kdBarang.Color:=clYellow ;       //nek barange gak ana warnane abang
    txt_qty.ReadOnly:=false;
  end
  else txt_kdBarang.Color:=clRed;
end;

procedure TmuklasFTransaksi.FormShow(Sender: TObject);
begin
  ZQuery1.Active;
  Anyar;
end;

procedure TmuklasFTransaksi.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_delete then ZQuery1.Delete;   //nek dipencet delet
end;

procedure TmuklasFTransaksi.txt_bayarKeyPress(Sender: TObject; var Key: Char);
var sql:string;
begin
  if key=char(13) then             //dipencet enter
  begin
    txt_kembali.Text:=IntToStr(StrToInt(txt_bayar.Text)-StrToInt(txt_total.Caption));             //susuk:=le mbayar- le tuku
    PSusuk.Caption:=txt_kembali.Text;                                                             //ditampilken

    sql:='update muklas_nota set total='+QuotedStr(txt_total.Caption)
        +', bayar='+QuotedStr(txt_bayar.Text)+', kembali='+QuotedStr(txt_kembali.Text)
        +', waktu='+QuotedStr(FormatDateTime('HH:MM:ss',now))+' where kd_nota='+QuotedStr(txt_kdNota.Text);     //update sek mau kosong
    //ShowMessage(sql);
    ZQuery2.SQL.Text:=sql;
    ZQuery2.ExecSQL;

    PSusuk.Visible:=true;
    Button1.SetFocus;
  end
end;

procedure TmuklasFTransaksi.Button1Click(Sender: TObject);
begin
  ZQuery2.SQL.Text:='select * from muklas_nota where kd_nota='+QuotedStr(txt_kdNota.Text);
  ZQuery2.ExecSQL;
  ZQuery2.Open;
  muklasFQR.QRDBText8.DataField:= 'tgl';
  muklasFQR.QRDBText9.DataField:= 'bayar';
  muklasFQR.QRDBText10.DataField:= 'kembali';
  muklasFQR.QRDBText11.DataField:= 'kd_nota';
  //reset
  //FQR.QRNota.Preview;
  PSusuk.Visible:=false;
  muklasFUtama.ZQuery1.SQL.Text:='select * from muklas_profil';
  muklasFUtama.ZQuery1.ExecSQL;
  muklasFUtama.ZQuery1.Open;
  muklasFQR.QRNota.Print;
  txt_total.Caption:='0';
  txt_kembali.Text:='0';
  PSusuk.Caption:='susuk';
  txt_bayar.Text:='0';
  ZQuery1.SQL.Text:='';
  Anyar;
end;

procedure TmuklasFTransaksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //nek rung ono transaksi
  if((ZQuery1.RowsAffected<1) or (PSusuk.Caption='susuk')) then
  ZQuery1.SQL.Text:='delete from muklas_nota where kd_nota='+QuotedStr(txt_kdNota.Text);
  ZQuery1.ExecSQL;

  if MessageDlg('Yakin ingin keluar?', mtWarning, mbOKCancel, 0)=mrOk then
Application.Terminate
end;

end.

