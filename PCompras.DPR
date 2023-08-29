program Pcompras;

uses
  Forms,
  Compra in 'COMPRA.PAS' {FormCompra};

{$R *.RES}

begin
  Application.Title := 'Módulo de compras';
  Application.CreateForm(TFormCompra, FormCompra);
  Application.Run;
end.
