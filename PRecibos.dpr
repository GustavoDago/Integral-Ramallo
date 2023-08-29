program Precibos;

uses
  Forms,
  Recibos in 'RECIBOS.PAS' {FReci};

{$R *.RES}

begin
  Application.Title := 'Manejo de Recibos';
  Application.CreateForm(TFReci, FReci);
  Application.Run;
end.
