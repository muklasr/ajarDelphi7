unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var s,k,l:real;
begin
if not(edit1.text='') then
begin
s:=strtofloat(edit1.Text);
k:=s*4;
l:=s*s;
edit2.Text:=floattostr(k);
edit3.Text:=floattostr(l);
end
else if not(edit2.text='') then
begin
k:=strtofloat(edit2.Text);
s:=k/4;
l:=s*s;
edit1.Text:=floattostr(s);
edit3.Text:=floattostr(l);
end
else if not(edit3.text='') then
begin
l:=strtofloat(edit3.Text);
s:=sqrt(l);
k:=s*4;
edit2.Text:=floattostr(k);
edit1.Text:=floattostr(s);
end
else
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end
end;

end.
