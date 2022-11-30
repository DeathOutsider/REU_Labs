unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit3: TEdit;
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
  zx, zy, parametr:real;
  sx, sy, sparametr:string;
//const
  //Parametr = 4;
begin
  sx := Edit1.Text;
  sy := Edit2.Text;
  sparametr := Edit3.Text;
  zx := StrToFloat(sx);
  zy := StrToFloat(sy);
  parametr := abs(StrToFloat(sparametr));

  if ( (zx>=0)and(zy>=0)and(zy<= (-zx + parametr)) )
  then Label3.Caption := 'Принадлежит'
  else if ( (zx<=0)and(zy<=0)and(zy>= (-zx - parametr)) )
  then Label3.Caption := 'Принадлежит'
  else Label3.Caption := 'Не принадлежит';

end;

end.
