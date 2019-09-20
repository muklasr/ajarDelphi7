unit muklasLogDetail;
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
  Dialogs, Grids, DBGrids, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TmuklasFDetail = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFDetail: TmuklasFDetail;

implementation
 uses muklasLogTransaksi,muklasUtama;
{$R *.dfm}

procedure TmuklasFDetail.FormShow(Sender: TObject);
var sql:string;
begin
sql:='select muklas_detailnota.kd_nota, muklas_barang.nm_barang, muklas_detailnota.jml, muklas_detailnota.total_harga from muklas_detailnota, muklas_barang where muklas_detailnota.kd_nota='+QuotedStr(muklasFLogTransaksi.DBGrid1.Fields[0].AsString)+' and muklas_detailnota.kd_barang=muklas_barang.kd_barang';
ZQuery1.SQL.Text:=sql;
//ShowMessage(sql);
ZQuery1.ExecSQL;
ZQuery1.Open;
end;

end.
