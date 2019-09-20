unit muklasKaryawan;
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
  Dialogs, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TmuklasFKaryawan = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    E_Golek: TEdit;
    Label1: TLabel;
    procedure T1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_GolekChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFKaryawan: TmuklasFKaryawan;

implementation

uses muklasKaryawanTambah;

{$R *.dfm}
procedure TmuklasFKaryawan.T1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFKaryawanTambah, muklasFKaryawanTambah);
muklasFKaryawanTambah.Panel2.Caption:='Tambah Data';
muklasFKaryawanTambah.ShowModal;
end;

procedure TmuklasFKaryawan.N1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFKaryawanTambah, muklasFKaryawanTambah);
muklasFKaryawanTambah.Panel2.Caption:='Ubah Data';
muklasFKaryawanTambah.ShowModal;
end;


procedure TmuklasFKaryawan.FormCreate(Sender: TObject);
begin
ZQuery1.Active:=true;              
Label1.Caption:='Jumlah data: '+ IntToStr(ZQuery1.RowsAffected);
end;
procedure TmuklasFKaryawan.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
if MessageDlg('Data akan dihapus?', mtWarning, mbOKCancel,0)=mrOK then
ZQuery1.Delete;
end;

procedure TmuklasFKaryawan.E_GolekChange(Sender: TObject);
begin
ZQuery1.SQL.Text:='select * from muklas_kasir where nm_kasir like '+QuotedStr('%'+E_Golek.Text+'%')+' or kd_kasir like '+QuotedStr('%'+E_Golek.Text+'%');
ZQuery1.ExecSQL;
ZQuery1.Open;
Label1.Caption:='Jumlah data: '+ IntToStr(ZQuery1.RowsAffected);
end;

end.
