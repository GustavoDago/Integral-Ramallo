program Pcompras;

uses
  Forms,
  Compra in 'COMPRA.PAS' {FormCompra};

{$R *.RES}

begin
  Application.Title := 'M�dulo de compras';
  Application.CreateForm(TFormCompra, FormCompra);
  Application.Run;
end.
