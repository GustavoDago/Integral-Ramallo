program Pgrande;

uses
  Forms,
  Grande in 'Grande.pas' {Integral},
  Banco in 'banco.pas' {FormBancos},
  Artic in 'artic.pas' {Formuarti},
  Prove in 'prove.pas' {Formuprove},
  Splash in 'Splash.pas' {SplashForm},
  Caja in 'caja.pas' {Formucaja},
  Deposita in 'deposita.pas' {Fdepos},
  Venta in 'Venta.PAS' {FormVenta},
  Compra in 'Compra.pas' {FormCompra},
  Orden in 'Orden.pas' {FOrden},
  Recibos in 'Recibos.pas' {FReci},
  Consulta in 'consulta.pas' {FConsu},
  Programa in 'programa.pas' {Formuclie};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Sistema Integral Ramallo';
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.CreateForm(TIntegral, Integral);
  Application.CreateForm(TFormBancos, FormBancos);
  Application.CreateForm(TFormuarti, Formuarti);
  Application.CreateForm(TFormuprove, Formuprove);
  Application.CreateForm(TFormucaja, Formucaja);
  Application.CreateForm(TFdepos, Fdepos);
  Application.CreateForm(TFormVenta, FormVenta);
  Application.CreateForm(TFormCompra, FormCompra);
  Application.CreateForm(TFOrden, FOrden);
  Application.CreateForm(TFReci, FReci);
  Application.CreateForm(TFConsu, FConsu);
  Application.CreateForm(TFormuclie, Formuclie);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
