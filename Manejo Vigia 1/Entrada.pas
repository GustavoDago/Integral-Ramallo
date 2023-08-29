unit Entrada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TIngreso = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Bevel1: TBevel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ingreso: TIngreso;

implementation

{$R *.DFM}

procedure TIngreso.Timer1Timer(Sender: TObject);
begin
        Ingreso.close;        
end;

end.
