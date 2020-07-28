unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    DisableActiveWindow: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DisableActiveWindowTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
ShowMessage('');
end;

procedure TForm2.DisableActiveWindowTimer(Sender: TObject);
var
 H: Thandle;
begin
H := GetForeGroundWindow();
EnableWindow(H,False);
SetWindowPos(H,HWND_BOTTOM,0,0,1,1,SWP_nomove);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ShowMessage('V1.0(Beta) Created By DesConnet (https://vk.com/endnet)');
DisableActiveWindow.Enabled := true;
end;

end.
