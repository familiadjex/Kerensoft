unit ABRIAPLICACIONESDOSVECES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Top := 0;
Width := Screen.Width div 2;
Height := Screen.Height;
if (CreateSemaphore(nil, 0, 1,
PChar(ExtractFileName(Application.ExeName))) <> 0) and
(GetLastError = ERROR_ALREADY_EXISTS) then
Left := Screen.Width div 2
else
begin
Left := 0;
WinExec(PChar(Application.ExeName), SW_NORMAL);
end;
end;

end.
