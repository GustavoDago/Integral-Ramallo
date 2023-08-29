unit Grande;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Menus, ComCtrls, ToolWin;

type
  TIntegral = class(TForm)
    Botonbancos: TBitBtn;
    Botonarti: TBitBtn;
    BotonProve: TBitBtn;
    Botoncaja: TBitBtn;
    Botondepos: TBitBtn;
    BotonCompras: TBitBtn;
    BotonVentas: TBitBtn;
    BotonOrdenes: TBitBtn;
    BotonRecibos: TBitBtn;
    BotonConsu: TBitBtn;
    BotonClientes: TBitBtn;
    procedure BotonclientesClick(Sender: TObject);
    procedure BotonProveClick(Sender: TObject);
    procedure BotonartiClick(Sender: TObject);
    procedure BotonbancosClick(Sender: TObject);
    procedure BotonlocClick(Sender: TObject);
    procedure BotoncontrolClick(Sender: TObject);
    procedure BotongaranClick(Sender: TObject);
    procedure BotonCajaClick(Sender: TObject);
    procedure BotonDeposClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BotonComprasClick(Sender: TObject);
    procedure BotonVentasClick(Sender: TObject);
    procedure BotonOrdenesClick(Sender: TObject);
    procedure BotonRecibosClick(Sender: TObject);
    procedure BotonConsuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Integral: TIntegral;

implementation

uses Programa, Prove, Artic, Localida, Banco, Ctrl, Unigar, Caja, Deposita,
  Compra, Venta, Orden, Recibos, Consulta;

{$R *.DFM}

procedure TIntegral.BotonclientesClick(Sender: TObject);
begin
        Formuclie.show;
end;

procedure TIntegral.BotonProveClick(Sender: TObject);
begin
        Formuprove.show;
end;

procedure TIntegral.BotonartiClick(Sender: TObject);
begin
        Formuarti.show;
end;

procedure TIntegral.BotonbancosClick(Sender: TObject);
begin
        Formbancos.show;
end;

procedure TIntegral.BotonlocClick(Sender: TObject);
begin
        Formulocal.show;
end;

procedure TIntegral.BotoncontrolClick(Sender: TObject);
begin
        Controlform.show;        
end;

procedure TIntegral.BotongaranClick(Sender: TObject);
begin
        FormuG.show;
end;

procedure TIntegral.BotonCajaClick(Sender: TObject);
begin
        Formucaja.show;
end;

procedure TIntegral.BotonDeposClick(Sender: TObject);
begin
        Fdepos.show;
end;

procedure TIntegral.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{If MessageDlg('¿Realmente desea cerrar la aplicación?',
        mtConfirmation,[mbOk, mbCancel],0)= mrCancel then
        CanClose := False;}
end;

procedure TIntegral.BotonComprasClick(Sender: TObject);
begin
       FormCompra.show;
end;

procedure TIntegral.BotonVentasClick(Sender: TObject);
begin
       FormVenta.show;
end;

procedure TIntegral.BotonOrdenesClick(Sender: TObject);
begin
       Forden.show;
end;

procedure TIntegral.BotonRecibosClick(Sender: TObject);
begin
       FReci.show;
end;

procedure TIntegral.BotonConsuClick(Sender: TObject);
begin
        FConsu.show;
end;

end.
