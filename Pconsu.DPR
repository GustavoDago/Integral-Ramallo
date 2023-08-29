program Pconsu;

uses
  Forms,
  Consulta in 'CONSULTA.PAS' {FConsu};

{$R *.RES}

begin
  Application.Title := 'Consultas';
  Application.CreateForm(TFConsu, FConsu);
  Application.Run;
end.
