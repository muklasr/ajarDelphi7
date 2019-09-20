unit muklasBarang;
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
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, Menus, ComCtrls,
  sSpeedButton;

type
  TmuklasFBarang = class(TForm)
    Panel1: TPanel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    E_Golek: TEdit;
    Label1: TLabel;
    sSpeedButton2: TsSpeedButton;
    procedure T1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure E_GolekChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFBarang: TmuklasFBarang;
implementation
uses muklasUtama, muklasBarangTambah, muklasFQR_U;
{$R *.dfm}

procedure TmuklasFBarang.T1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFBarangTambah, muklasFBarangTambah);
muklasFBarangTambah.Panel2.Caption:='Tambah Data';
muklasFBarangTambah.ShowModal;
end;

procedure TmuklasFBarang.N1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFBarangTambah, muklasFBarangTambah);
muklasFBarangTambah.Panel2.Caption:='Ubah Data';
muklasFBarangTambah.ShowModal;
end;

procedure TmuklasFBarang.FormCreate(Sender: TObject);
begin
ZQuery1.Active:=true;
Label1.Caption:='Jumlah data: '+ IntToStr(ZQuery1.RowsAffected);
end;

procedure TmuklasFBarang.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
if MessageDlg('Data akan dihapus?', mtWarning, mbOKCancel,0)=mrOK then
ZQuery1.Delete;
end;

procedure TmuklasFBarang.Button1Click(Sender: TObject);
begin
muklasFUtama.ZQuery1.SQL.Text:='select * from muklas_profil';
muklasFUtama.ZQuery1.ExecSQL;
muklasFUtama.ZQuery1.Open;
muklasFQR.QuickRep1.Preview;
end;

procedure TmuklasFBarang.E_GolekChange(Sender: TObject);
begin
ZQuery1.SQL.Text:='select * from muklas_barang where spesifikasi like '+QuotedStr('%'+E_Golek.Text+'%')+' or nm_barang like '+QuotedStr('%'+E_Golek.Text+'%')+' or kd_barang like '+QuotedStr('%'+E_Golek.Text+'%');
ZQuery1.ExecSQL;
ZQuery1.Open;
Label1.Caption:='Jumlah data: '+ IntToStr(ZQuery1.RowsAffected);
end;

end.
