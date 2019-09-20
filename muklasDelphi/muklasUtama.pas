unit muklasUtama;
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
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, ZConnection, sSkinManager,
  sButton, sSkinProvider, acTitleBar, sPanel, sMonthCalendar, sComboBoxes,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, sSpeedButton,
  ZAbstractTable;

type
  TmuklasFUtama = class(TForm)
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    Timer2: TTimer;
    Timer1: TTimer;
    sSkinManager1: TsSkinManager;
    LSelamatDatang: TPanel;
    StatusBar1: TStatusBar;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFUtama: TmuklasFUtama;

implementation
uses muklasBarang, muklasKaryawan, muklasTransaksi, muklaslogTransaksi,muklaslogin,muklasseting;
{$R *.dfm}

procedure TmuklasFUtama.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[1].Text:=' Tanggal : '+FormatDateTime('dd MMMM yyyy',now)+' , '+FormatDateTime('HH:MM:ss',now)
end;


procedure TmuklasFUtama.Timer2Timer(Sender: TObject);
var judul:string;
begin
judul:=LSelamatDatang.Caption;
judul:=Judul+Judul[1];
Judul:=copy(judul,2,length(judul)-1);
LSelamatDatang.Caption:=Judul;

end;

procedure TmuklasFUtama.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFBarang, muklasFBarang);
muklasFBarang.ShowModal;
end;

procedure TmuklasFUtama.FormCreate(Sender: TObject);
begin
ZQuery1.SQL.Text:='select * from muklas_profil';
ZQuery1.ExecSQL;
ZQuery1.Open;
LSelamatDatang.Caption:=LSelamatDatang.Caption + ZQuery1.Fields[0].AsString;
ZConnection1.Connect;
sSkinManager1.SkinName:=ZQuery1.Fields[1].AsString;
if ZConnection1.Connected = false then
begin
ShowMessage('MYSQL BELUM DIJALANKAN');
Application.Terminate
end

end;

procedure TmuklasFUtama.BitBtn2Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFKaryawan, muklasFKaryawan);
muklasFKaryawan.ShowModal;
end;

procedure TmuklasFUtama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 BitBtn4Click(sender);
end;

procedure TmuklasFUtama.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('Yakin ingin keluar?', mtWarning, mbOKCancel, 0)=mrOk then
Application.Terminate
end;

procedure TmuklasFUtama.sButton1Click(Sender: TObject);
begin
Application.CreateForm(TmuklasFLogTransaksi, muklasFLogTransaksi);
muklasFLogTransaksi.show;
end;

procedure TmuklasFUtama.BitBtn6Click(Sender: TObject);
begin  
Application.CreateForm(TmuklasFSeting, muklasFSeting);
muklasFSeting.ShowModal;
end;

end.
