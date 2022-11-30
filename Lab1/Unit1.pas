unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Math;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
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
  g,ec:real;
  res:string;

begin
  ec:=exp(1);

  g := 2.1 * sqrt( sqr(5.76) - ( (8.23 * cos(3.1) )/( exp(2.06*ln(ec)) - 1.07 * 9.46) ) );
  res := Format ('g = %.2f', [g]);

  Label1.Caption := res;
end;

end.
