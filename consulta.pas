unit Consulta;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DB, DBTables, Mask, ExtCtrls, DBGrids,
  Buttons, TabNotBk, Grids, Spin, DBCtrls, ComCtrls;

type
  TFConsu = class(TForm)
    grilla: TDBGrid;
    selector: TTabbedNotebook;
    inicio: TBitBtn;
    Dataconsu: TDataSource;
    Panelnoti: TPanel;
    Radioarti: TRadioGroup;
    RadioCaja: TRadioGroup;
    Radiocheques: TRadioGroup;
    fechapri: TMaskEdit;
    fechaseg: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    articulo: TTable;
    articulocodiart: TStringField;
    articulodescripart: TStringField;
    articulocosto: TFloatField;
    articulopventa: TFloatField;
    articulostockact: TFloatField;
    queryarti: TQuery;
    consarti: TTable;
    consarticodiart: TStringField;
    consartiCompra: TCurrencyField;
    consartiVenta: TCurrencyField;
    caja: TTable;
    compras: TTable;
    ventas: TTable;
    ordpagos: TTable;
    recibos: TTable;
    conscaja: TTable;
    consucheques: TQuery;
    cajatipo: TStringField;
    cajafecha: TDateField;
    cajaent_sal: TBooleanField;
    cajaDescripcion: TStringField;
    cajaentradas: TFloatField;
    cajasalidas: TFloatField;
    comprastotal: TCurrencyField;
    comprasTipo: TStringField;
    comprasfactunum: TStringField;
    comprasfechafactu: TDateField;
    ventasTipo: TStringField;
    ventasfactunum: TStringField;
    ventasfechafactu: TDateField;
    ventastotal: TCurrencyField;
    ordpagosFecha: TDateField;
    recibosFecha: TDateField;
    cheqmes: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    LabelV1: TLabel;
    LabelV2: TLabel;
    cheques: TTable;
    chq: TTable;
    chqbanco: TIntegerField;
    chqnumero: TStringField;
    chqfecheque: TDateField;
    chqimporcheq: TFloatField;
    chqent_car: TStringField;
    chequesnumero: TStringField;
    chequesfecheque: TDateField;
    chequesimporcheq: TFloatField;
    chequesent_car: TStringField;
    anio: TSpinEdit;
    Label5: TLabel;
    LabelV3: TLabel;
    cajaN: TIntegerField;
    Radioctacte: TRadioGroup;
    Provedor: TTable;
    Provedornomprov: TStringField;
    Provedorcuitprov: TStringField;
    clientes: TTable;
    clientesNombre: TStringField;
    clientesCuit: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Fecha1: TMaskEdit;
    Fecha2: TMaskEdit;
    ventasContado: TBooleanField;
    conscajatipo: TStringField;
    conscajaN: TIntegerField;
    conscajafecha: TDateField;
    conscajaent_sal: TBooleanField;
    conscajaDescripcion: TStringField;
    conscajaentradas: TFloatField;
    conscajasalidas: TFloatField;
    Bevel1: TBevel;
    conscta: TTable;
    comprasContado: TBooleanField;
    consctafecha: TDateField;
    consctatipo: TStringField;
    consctareferencia: TStringField;
    consctadebe: TFloatField;
    consctahaber: TFloatField;
    consctapago: TFloatField;
    consctaestado: TBooleanField;
    comprasCancelado: TBooleanField;
    comprasTPagado: TCurrencyField;
    ventasCancelado: TBooleanField;
    ventasTPagado: TCurrencyField;
    ordpagosProveedor: TIntegerField;
    recibosCliente: TIntegerField;
    Labelnombre: TLabel;
    ordpagosSuma: TCurrencyField;
    recibosSuma: TCurrencyField;
    recibosNeto: TCurrencyField;
    ordpagosNeto: TCurrencyField;
    ordpagosDescuento: TCurrencyField;
    ordpagosPagado: TCurrencyField;
    recibosDescuento: TCurrencyField;
    recibosPagado: TCurrencyField;
    clientesCodigo: TFloatField;
    Provedorcodiprov: TFloatField;
    articuloprovedor: TFloatField;
    comprasCodigo: TFloatField;
    comprascodigoprov: TFloatField;
    ventasCodigo: TFloatField;
    ventasCodcli: TFloatField;
    ordpagosCodigo: TFloatField;
    recibosCodigo: TFloatField;
    chequesbanco: TFloatField;
    procedure selectorChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure inicioClick(Sender: TObject);
    procedure infoarti;
    procedure infocaja;
    procedure infocheques;
    procedure FormCreate(Sender: TObject);
    procedure RadioctacteClick(Sender: TObject);
    Procedure Infocta;
    procedure grillaKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }

  end;

var
  FConsu: TFConsu;
  totalcompras,totalventas: double;

implementation

{$R *.DFM}

procedure TFConsu.selectorChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     dataconsu.dataset := nil;
     PanelNoti.visible := false;
     label3.caption := #0;
     label4.caption := #0;
     label5.caption := #0;
     labelV1.caption := #0;
     labelV2.caption := #0;
     labelV3.caption := #0;

     {si se selecciona la cuenta corriente, ejecuta el evento On click de
         Radioctacte}
     if Newtab = 3 then RadioCtaCteClick(nil)
end;

procedure TFConsu.inicioClick(Sender: TObject);
begin
dataconsu.dataset := nil;
PanelNoti.visible := False;
label3.caption := #0;
label4.caption := #0;
label5.caption := #0;
labelV1.caption := #0;
labelV2.caption := #0;
labelV3.caption := #0;
case selector.pageindex of
0: infoarti;
1: infocaja;
2: infocheques;
3: infocta;
end;
end;


procedure TFConsu.infoarti;
var
   TotalPCosto, TotalPVenta: double;
begin
     TotalPCosto := 0;
     TotalPVenta := 0;
     queryarti.close;
     queryarti.sql.clear;
     case Radioarti.Itemindex of
     0: queryarti.sql.LoadFromFile('enfalta.sql');
     1: queryarti.sql.LoadFromfile('encero.sql');
     2:
          begin
               {este modulo copia en consarti los valores que resultan de la
                multiplicacion del stock por el costo o por el precio venta,
                luego mediante una consulta se muestran los artículos con sus
                valores, y se suman los totales de valor compra y valor venta}

               consarti.first;
               while not consarti.eof do consarti.delete;

               with articulo do
               begin
                    first;
                    while not eof do
                    begin
                         consarti.appendRecord([articulocodiart.value, articulocosto.value
                         * articulostockact.value,articulopventa.value * articulostockact.value]);
                         TotalPCosto := TotalPcosto + ConsartiCompra.value;
                         TotalPVenta := TotalPVenta + ConsartiVenta.value;
                         next;
                    end;
               end;
               Label3.caption := 'Valor Compra($):';
               Label4.caption := 'Valor Venta($):';
               LabelV1.caption:= FloatToStrF(TotalPCosto, ffnumber,8,2);
               LabelV2.caption := FloatToStrF(TotalPVenta, ffnumber,8,2);
               PanelNoti.visible := true;
               queryarti.sql.LoadFromFile('totales.sql');
          end;
     end;
     queryarti.open;
     dataconsu.dataset := queryarti;
end;

procedure TFConsu.infocaja;
var
   Tent, Tsal, valor : double;
begin
     {en este se copian en conscaja los datos de caja, compras, ventas, ordenes,
      recibos, todos los datos se acomodan para ser bien aceptados por conscaja
      y se suman las entradas y las salidas en variables que luego dan el saldo}
     Tent := 0;
     Tsal := 0;
     conscaja.first;
     while not conscaja.eof do conscaja.delete;
     with caja do
     begin
          if RadioCaja.ItemIndex = 0 then setRange([date], [date])
          else setRange([FechaPri.text], [FechaSeg.text]);
          first;
          while not eof do
          begin
               Conscaja.AppendRecord( [cajaTipo.value, CajaN.value, Cajafecha.value, cajaent_sal.value,
                                      cajadescripcion.value, cajaentradas.value, cajasalidas.value]);
               Tent := Tent + cajaentradas.value;
               Tsal := Tsal + cajasalidas.value;
               Next;
          end;
          cancelrange;
     end;

     with Compras do
     begin
          first;
          while not eof do
          begin
               if ((RadioCaja.ItemIndex = 0) and (ComprasFechafactu.value = date))
                  or ((RadioCaja.ItemIndex = 1) and ((ComprasFechafactu.value >= strtodate(FechaPri.text))
                  and (ComprasFechafactu.value <= strtodate(FechaSeg.text)))) then
                  begin
                       if comprasTipo.value = 'NC A' Then
                          valor := Comprastotal.value * (-1)
                       else
                           valor := ComprasTotal.value;
                       Conscaja.AppendRecord( ['Compra', ComprasCodigo.value, ComprasFechaFactu.value,
                                              false,ComprasTipo.value + ' ' + ComprasFactunum.value,
                                              nil, valor]);
                       Tsal := Tsal + valor;
                       if ComprasContado.value = False then
                          begin
                               Conscaja.AppendRecord( ['Compra', ComprasCodigo.value,
                                ComprasFechaFactu.value,true,ComprasTipo.value + ' '
                                 + ComprasFactunum.value, valor]);
                               Tent := Tent + valor;
                          End;

                  end;
               Next;
          end;
     end;

     with Ventas do
     begin
          first;
          while not eof do
          begin
               if ((RadioCaja.ItemIndex = 0) and (VentasFechafactu.value = date))
                  or ((RadioCaja.ItemIndex = 1) and ((VentasFechafactu.value >= strtodate(FechaPri.text))
                  and (VentasFechafactu.value <= strtodate(FechaSeg.text)))) then
                  begin
                       if (VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B') Then
                          valor := Ventastotal.value * (-1)
                       else
                           valor := VentasTotal.value;
                       Conscaja.AppendRecord( ['Venta', VentasCodigo.value, VentasFechaFactu.value,
                                              True,VentasTipo.value + ' ' + VentasFactunum.value,
                                              valor]);
                       Tent := Tent + valor;
                       if VentasContado.value = False then
                          begin
                               Conscaja.AppendRecord( ['Venta', VentasCodigo.value,
                                VentasFechaFactu.value,false,VentasTipo.value + ' '
                                 + VentasFactunum.value, nil,valor]);
                               Tsal := Tsal + valor;
                          End;
                  end;
               Next;
          end;
     end;

     with Ordpagos do
     begin
          first;
          while not eof do
          begin
               if ((RadioCaja.ItemIndex = 0) and (OrdPagosFecha.value = date))
                  or ((RadioCaja.ItemIndex = 1) and ((OrdPagosFecha.value >= strtodate(FechaPri.text))
                  and (OrdPagosFecha.value <= strtodate(FechaSeg.text)))) then
                  begin
                       Conscaja.AppendRecord( ['Orden', OrdPagosCodigo.value, OrdPagosFecha.value, false,
                                      ordpagosCodigo , nil,OrdPagosPagado.value]);
                       Tsal := Tsal + OrdPagosPagado.value;
                  end;
               Next;
          end;
     end;

     with Recibos do
     begin
          first;
          while not eof do
          begin
               if ((RadioCaja.ItemIndex = 0) and (RecibosFecha.value = date))
                  or ((RadioCaja.ItemIndex = 1) and ((RecibosFecha.value >= strtodate(FechaPri.text))
                  and (RecibosFecha.value <= strtodate(FechaSeg.text)))) then
                  begin
                       Conscaja.AppendRecord( ['Recibo', RecibosCodigo.value, RecibosFecha.value, true,
                                      RecibosCodigo.asstring, RecibosPagado.value, nil]);
                       Tent := Tent + RecibosPagado.value;
                  end;
               Next;
          end;
     end;
     Label3.caption := 'Entradas($):';
     label4.caption := 'Saldo($):';
     Label5.caption := 'Salidas($):';
     labelV1.caption := FloatToStrF(Tent, ffnumber,8,2);
     LabelV2.caption := FloatToStrF(Tent - Tsal, ffnumber,8,2);
     LabelV3.caption := FloatToStrF(Tsal, ffnumber,8,2);
     PanelNoti.visible := true;
     DataConsu.dataset:= ConsCaja;
end;

procedure TFConsu.infocheques;
var
   aniocheq, mescheq, diacheq : word;
   totalcance : double;
begin
     totalcance := 0;
     consucheques.Active := false;
     consucheques.sql.clear;
     case Radiocheques.Itemindex of
     0: begin
                consucheques.sql.LoadFromFile('cartera.sql');
                consucheques.Prepare ;
                consucheques.open;
        end;
     1: begin
                consucheques.sql.LoadFromfile('Entrega.sql');
                consucheques.Prepare ;
                consucheques.open;
        end;

     2:
       begin
            {esta parte copia en chq todos los cheques que se tienen que cancelar
             en determinado mes}
            chq.first;
            while not chq.eof do chq.delete;
            with cheques do
            begin
                 first;
                 while not eof do
                 begin
                      decodedate(chequesfecheque.asdatetime, aniocheq, mescheq,diacheq);
                      if (mescheq = cheqmes.value) and (anio.value = aniocheq) and
                       (Chequesent_car.value = 'C') then
                         begin
                              chq.appendRecord( [chequesbanco.value,chequesnumero.value,
                                           chequesfecheque.value,chequesimporcheq.value,
                                           chequesent_car.value]);
                              Totalcance := Totalcance + ChequesImporcheq.value;
                         end;
                      next;
                 end;
            end;
            Label5.caption := 'Total ($):';
            LabelV3.caption := FloatToStrF(Totalcance, ffnumber,8,2);
            PanelNoti.visible := true;
            consucheques.sql.LoadFromFile('cancelar.sql');
            consucheques.Prepare ;
            consucheques.open;

       end;
     end;
     dataconsu.dataset := consucheques;
end;

procedure TFConsu.FormCreate(Sender: TObject);
var
  anioc,mescombo,diac: word;
begin
     decodedate(now,anioc,mescombo,diac);
     fechaseg.text := datetostr(date);
     Fecha2.text := datetostr(date);
end;

procedure TFConsu.RadioctacteClick(Sender: TObject);
begin
     if (RadioCtaCte.ItemIndex = 0) then
        begin
             DataConsu.Dataset := Provedor;
        end
     else
         begin
              DataConsu.Dataset := clientes;
         end;
     LabelNombre.visible := False;
end;

Procedure TFconsu.Infocta;
var
   Tent,Tsal, valor : double;
begin
     TEnt := 0;
     Tsal := 0;
     LabelNombre.visible := True;
     ConsCta.first;
     while not Conscta.Eof do conscta.delete;

     if Radioctacte.ItemIndex = 0 then
        Begin
             labelNombre.caption := ProvedorNomprov.value;
             with Compras do
             begin
                  IndexFieldNames := 'codigoprov;Tipo;factunum';
                  setrange([ProvedorCodiprov.value],[ProvedorCodiprov.value]);
                  first;
                  while not eof do
                  begin
                       if ((ComprasContado.value = False) or (ComprasTipo.value = 'NC A')) and
                          ((ComprasFechafactu.value >= strtodate(Fecha1.text))
                          and (ComprasFechafactu.value <= strtodate(Fecha2.text))) then
                           begin
                           if comprasTipo.value = 'NC A' Then
                              valor := Comprastotal.value * (-1)
                           else
                               valor := ComprasTotal.value;
                           Conscta.AppendRecord( [ComprasFechaFactu.value,'Compra',ComprasTipo.value +
                                     ' ' + ComprasFactunum.value, valor, nil, ComprasTpagado.value,
                                    ComprasCancelado.value]);
                           Tent := Tent + valor;
                           end;
                       Next;
                  end;
                  cancelrange;
                  IndexFieldNames := 'Codigo';
             end;

             with Ordpagos do
             begin
                  IndexFieldNames := 'Proveedor';
                  setRange([ProvedorCodiprov.value],[ProvedorCodiprov.value]);
                  first;
                  while not eof do
                  begin
                       if (OrdPagosFecha.value >= strtodate(Fecha1.text))
                       and (OrdPagosFecha.value <= strtodate(Fecha2.text)) then
                       begin
                                Conscta.AppendRecord( [OrdPagosFecha.value,'Orden','Nº ' + OrdPagosCodigo.asstring,
                                nil,OrdPagosSuma.value /OrdPagosNeto.value *  OrdPagosPagado.value - OrdPagosDescuento.value]);
                                Tsal := Tsal + OrdPagosSuma.value /OrdPagosNeto.value *  OrdPagosPagado.value - OrdPagosDescuento.value;
                       end;
                       Next;
                  end;
                  CancelRange;
                  IndexFieldNames := 'Codigo';
             end;
        end
     else
         Begin
             labelNombre.caption := ClientesNombre.value;
             with Ventas do
             begin
                  IndexFieldNames := 'Codcli';
                  setrange([ClientesCodigo.value],[Clientescodigo.value]);
                  first;
                  while not eof do
                  begin
                       if ((VentasContado.value = False) or ((VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B'))) and
                          ((VentasFechafactu.value >= strtodate(Fecha1.text))
                          and (VentasFechafactu.value <= strtodate(Fecha2.text))) then
                          begin
                           if (VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B') Then
                              valor := Ventastotal.value * (-1)
                           else
                               valor := VentasTotal.value;

                           Conscta.AppendRecord( [VentasFechaFactu.value,'Venta',VentasTipo.value +
                                     ' ' + VentasFactunum.value, valor, nil, VentasTpagado.value,
                                    VentasCancelado.value]);
                           Tent := Tent + valor;
                          end;
                       Next;
                  end;
                  cancelrange;
                  IndexFieldNames := 'Codigo';
             end;

             with Recibos do
             begin
                  IndexFieldNames := 'Cliente';
                  setRange([ClientesCodigo.value],[Clientescodigo.value]);
                  first;
                  while not eof do
                  begin
                       if (RecibosFecha.value >= strtodate(Fecha1.text))
                       and (RecibosFecha.value <= strtodate(Fecha2.text)) then
                       begin
                                Conscta.AppendRecord( [RecibosFecha.value,'Recibo','Nº ' + RecibosCodigo.asstring,
                                nil, RecibosSuma.value / RecibosNeto.value * RecibosPagado.value - Recibosdescuento.value]);
                                Tsal := Tsal + RecibosSuma.value / RecibosNeto.value * RecibosPagado.value - recibosdescuento.value;
                       end;
                       Next;
                  end;
                  CancelRange;
                  IndexFieldNames := 'Codigo';
             end;
        end;
     Label3.caption := 'Debe($):';
     label4.caption := 'Saldo($):';
     Label5.caption := 'Haber($):';
     labelV1.caption := FloatToStrF(Tent, ffnumber,8,2);
     LabelV2.caption := FloatToStrF(Tent - Tsal, ffnumber,8,2);
     LabelV3.caption := FloatToStrF(Tsal, ffnumber,8,2);
     PanelNoti.visible := true;
     DataConsu.dataset:= ConsCta;
end;

procedure TFConsu.grillaKeyPress(Sender: TObject; var Key: Char);
begin
     if selector.activepage = 'Cta Cte' then
     if dataconsu.dataset = provedor then
        provedor.findNearest([key])
     else
         clientes.findNearest([key]);
end;

procedure TFConsu.FormPaint(Sender: TObject);
begin
        if FConsu.Tag = 0 then exit;
        Inicio.Click ;
        FConsu.Tag := 0;
end;

end.
