unit muklasSeting;
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
  Dialogs, StdCtrls, ComCtrls, sComboBoxes, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Buttons;

type
  TmuklasFSeting = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    e1: TLabeledEdit;
    e2: TLabeledEdit;
    e3: TLabeledEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnGaksida: TBitBtn;
    e4: TLabeledEdit;
    sSkinSelector2: TsSkinSelector;
    procedure btnGaksidaClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  muklasFSeting: TmuklasFSeting;

implementation

uses muklasUtama;

{$R *.dfm}

procedure TmuklasFSeting.btnGaksidaClick(Sender: TObject);
begin
muklasFSeting.Close;
end;

procedure TmuklasFSeting.btnSaveClick(Sender: TObject);
begin
muklasFUtama.ZQuery1.SQL.Text:='update muklas_profil set nm_toko='+QuotedStr(e1.Text)+', tema='+QuotedStr(sSkinSelector2.SelectedItem.Caption)+', admin='+QuotedStr(e3.Text)+', pw='+QuotedStr(e4.Text);
muklasFUtama.ZQuery1.ExecSQL;
muklasFSeting.Close;
end;

procedure TmuklasFSeting.FormCreate(Sender: TObject);
begin
muklasFUtama.ZQuery1.SQL.Text:='select * from muklas_profil';
muklasFUtama.ZQuery1.ExecSQL;
muklasFUtama.ZQuery1.Open;

e1.Text:=muklasFUtama.ZQuery1.Fields[0].AsString;
e2.Text:=muklasFUtama.ZQuery1.Fields[1].AsString;
e3.Text:=muklasFUtama.ZQuery1.Fields[2].AsString;
e4.Text:=muklasFUtama.ZQuery1.Fields[3].AsString;
end;

end.
