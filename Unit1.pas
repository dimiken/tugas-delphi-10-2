unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
var nAbsen, nTugas, nMid, nUas, hasil:real;
begin
nAbsen:=StrToFloat(Edit1.Text)*0.1;
nTugas:=StrToFloat(Edit2.Text)*0.2;
nMid:=StrToFloat(Edit3.Text)*0.3;
nUas:=StrToFloat(Edit4.Text)*0.4;
hasil:=nAbsen+nTugas+nMid+nUas;
Edit5.Text:=FloatToStr(hasil);

if hasil > 80 then Edit6.Text:='A'
else if hasil > 69 then Edit6.Text:='B'
else if hasil > 59 then Edit6.Text:='C'
else if hasil > 49 then Edit6.Text:='D'
else Edit6.Text:='E';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then begin
key:=#0;
MessageDlg('Nilai yang dimasukkan harus angka !!!',mtError,[mbOK],0);
Edit2.SelectAll; end;
end;

end.
