unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    ListBox1: TListBox;
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
var
  sresult:string;
  i,res:int64;
const
  a = 123456789;
begin
  i := 9;
  while i <= 81 do begin
    res := a*i;
    sresult := Format ('%d', [res]);
    //sresult := IntToStr(res);
    ListBox1.Items.Add(sresult);
    i := i+9;
  end;

end;

end.
