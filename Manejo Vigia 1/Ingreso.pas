unit Ingreso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TBienvenida = class(TForm)
    Image1: TImage;
    StaticText1: TStaticText;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bienvenida: TBienvenida;

implementation

{$R *.DFM}

end.
