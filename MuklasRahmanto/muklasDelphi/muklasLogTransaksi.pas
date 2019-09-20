unit muklasLogTransaksi;
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
  StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TmuklasFLogTransaksi = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    H1: TMenuItem;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure H1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFLogTransaksi: TmuklasFLogTransaksi;

implementation
  uses muklaslogDetail;
{$R *.dfm}

procedure TmuklasFLogTransaksi.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_delete then
if MessageDlg('Data akan dihapus?', mtWarning, mbOKCancel,0)=mrOK then
ZQuery1.Delete;
end;

procedure TmuklasFLogTransaksi.H1Click(Sender: TObject);
begin
if MessageDlg('Data akan dihapus?', mtWarning, mbOKCancel,0)=mrOK then
ZQuery1.Delete;
end;

procedure TmuklasFLogTransaksi.D1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFDetail, muklasFDetail);
muklasFDetail.ShowModal;
end;

end.
