unit Recibos;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, DBCtrls, Grids, DBGrids, StdCtrls, TabNotBk,
  Mask, ExtCtrls, DBLookup, DB, DBTables, ComCtrls;

type
  TFReci = class(TForm)
    PanelDatos: TPanel;
    Listaclie: TDBLookupCombo;
    libro: TNotebook;
    Botonaceptar: TButton;
    Botoncancelar: TButton;
    DBNavegador: TDBNavigator;
    solapas: TTabbedNotebook;
    Panelinvisible: TPanel;
    listaFac: TTable;
    DataLista: TDataSource;
    DataRecibos: TDataSource;
    Ventas: TTable;
    DataVentas: TDataSource;
    Clientes: TTable;
    Dataclie: TDataSource;
    Cheques: TTable;
    Datacheque: TDataSource;
    Banco: TTable;
    DataBanco: TDataSource;
    Chequesnumero: TStringField;
    PanelPagos: TPanel;
    EtiquetaTotal: TLabel;
    DBPAGADO: TDBText;
    EtiqEfectivo: TLabel;
    LbCheques: TLabel;
    DBEefectivo: TDBEdit;
    PanelBusquedas: TPanel;
    busca1: TMaskEdit;
    DBFecha: TDBEdit;
    GrillaOrden: TDBGrid;
    DBfacta: TDBComboBox;
    Sumador: TQuery;
    SumadorCampo: TFloatField;
    DataSuma: TDataSource;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    Bevel2: TBevel;
    PanelFactu: TPanel;
    Agrefac: TSpeedButton;
    Quitafac: TSpeedButton;
    Templist: TTable;
    Radio: TRadioGroup;
    Chequesfecheque: TDateField;
    Chequesent_car: TStringField;
    copiador: TBatchMove;
    GrillaLista: TDBGrid;
    ltipo: TLabel;
    Lnum: TLabel;
    lFecha: TLabel;
    LTotal: TLabel;
    LTotpaga: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    cancelador: TDBCheckBox;
    DBText9: TDBText;
    VentasTipo: TStringField;
    Ventasfactunum: TStringField;
    VentasCancelado: TBooleanField;
    Ventastotal: TCurrencyField;
    VentasTPagado: TCurrencyField;
    ClientesNombre: TStringField;
    GCheques: TPanel;
    GrillaCheques: TDBGrid;
    Bancobanco: TStringField;
    Ventasfechafactu: TDateField;
    ChequesVoR: TStringField;
    TempCheq: TTable;
    TempCheqnumero: TStringField;
    TempCheqVoR: TStringField;
    TempCheqfecheque: TDateField;
    TempCheqent_car: TStringField;
    Bevel3: TBevel;
    Recibos: TTable;
    RecibosCliente: TIntegerField;
    RecibosFecha: TDateField;
    RecibosFac_cta: TStringField;
    RecibosSuma: TCurrencyField;
    RecibosNeto: TCurrencyField;
    RecibosEfectivo: TCurrencyField;
    RecibosR: TStringField;
    DBcodigo: TDBText;
    Bevel1: TBevel;
    RecibosDescuento: TCurrencyField;
    DBdescuento: TDBText;
    RecibosPagado: TCurrencyField;
    RecibosCodigo: TFloatField;
    VentasCodigo: TFloatField;
    Bancocodigo: TFloatField;
    TempCheqcodifactu: TFloatField;
    TempCheqimporcheq: TFloatField;
    Chequesbanco: TFloatField;
    Chequescodifactu: TFloatField;
    Chequesimporcheq: TFloatField;
    ChequesT_destino: TStringField;
    ChequesDestino: TFloatField;
    TemplistFactura: TIntegerField;
    TemplistRecibo: TFloatField;
    TemplistPagado: TCurrencyField;
    TemplistCancelar: TBooleanField;
    listaFacRecibo: TIntegerField;
    listaFacFactura: TIntegerField;
    listaFacPagado: TCurrencyField;
    VentasCodcli: TFloatField;
    TempCheqbanco: TFloatField;
    ClientesCodigo: TFloatField;
    ChequesnBanco: TStringField;
    TempCheqnBanco: TStringField;
    TempCheqT_destino: TStringField;
    TempCheqDestino: TFloatField;
    Recibosncliente: TStringField;
    RecibosCheques: TCurrencyField;
    VerCheques: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioClick(Sender: TObject);
    procedure busca1Change(Sender: TObject);
    procedure busca1KeyPress(Sender: TObject; var Key: Char);
    procedure RecibosNewRecord(DataSet: TDataset);
    procedure RecibosBeforePost(DataSet: TDataset);
    procedure RecibosBeforeInsert(DataSet: TDataset);
    procedure RecibosBeforeEdit(DataSet: TDataset);
    procedure RecibosAfterPost(DataSet: TDataset);
    procedure RecibosAfterCancel(DataSet: TDataset);
    procedure TempcheqNewRecord(DataSet: TDataset);
    procedure TempcheqBeforePost(DataSet: TDataset);
    Procedure TempCheqBeforeInsert(DataSet: TDataset);
    Procedure TempCheqAfterPost(DataSet: TDataset);
    procedure TempcheqAfterCancel(DataSet: TDataset);
    procedure DataSumaDataChange(Sender: TObject; Field: TField);
    Procedure Modisql;
    Procedure GrabaCheques;
    procedure AgrefacClick(Sender: TObject);
    procedure QuitafacClick(Sender: TObject);
    procedure RecibosEfectivoValidate(Sender: TField);
    Procedure GrabaListaFac;
    procedure BotoncancelarClick(Sender: TObject);
    procedure BotonaceptarClick(Sender: TObject);
    Procedure Pendientes(Sender:TObject);
    Procedure Botones(SN:Boolean);
    Procedure Iniciar;
    Procedure Restaurar;
    procedure GrillaListaDblClick(Sender: TObject);
    procedure ListaclieChange(Sender: TObject);
    procedure ListaclieExit(Sender: TObject);
    procedure DBfactaExit(Sender: TObject);
    procedure DBfactaChange(Sender: TObject);
    Procedure calcupagado;
    procedure canceladorExit(Sender: TObject);
    procedure TemplistCancelarChange(Sender: TField);
    procedure RecibosBeforeDelete(DataSet: TDataset);
    procedure AgrefacMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TempCheqAfterDelete(DataSet: TDataset);
    procedure ListaclieEnter(Sender: TObject);
    procedure ListaclieKeyPress(Sender: TObject; var Key: Char);
    procedure DataListaDataChange(Sender: TObject; Field: TField);
    procedure modificar;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReci: TFReci;
  NClie, final : Extended;
  NFacta : string;
  TotalCancel: double;

implementation

{$R *.DFM}

procedure TFReci.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if libro.Pageindex = 0 then Recibos.cancel;
     Sumador.close;

end;

procedure TFReci.RadioClick(Sender: TObject);
begin
     if Radio.Itemindex = 0 then
        Recibos.IndexFieldNames := 'Codigo'
     else
        Recibos.IndexFieldNames := 'cliente';
     Busca1.clear;
end;

procedure TFReci.busca1Change(Sender: TObject);
begin
     Recibos.FindNearest([Busca1.text]);
end;

procedure TFReci.busca1KeyPress(Sender: TObject; var Key: Char);
begin
     if (key > '9') then key := #0;
end;

procedure TFReci.RecibosNewRecord(DataSet: TDataset);
begin
     RecibosCodigo.value := final + 1;
     RecibosR.value := 'R';
end;

procedure TFReci.RecibosBeforePost(DataSet: TDataset);
begin

     if (RecibosFac_cta.value = 'F') and( abs(RecibosPagado.value - RecibosNeto.value) > 0.001) then
        Raise Exception.create('En el caso de pagar facturas completas, hay que asegurarse que coincidan los totales');
     if (RecibosPagado.value - RecibosNeto.value > 0.001) then
        Raise Exception.create('El pago es superior al valor de las facturas');
     if TotalCancel - RecibosPagado.value *(Recibossuma.value / recibosNeto.value) > 0.005 then
        Raise Exception.create('La suma no alcanza para cancelar facturas');
     if not (RecibosNeto.value > 0) then
        raise exception.create('el neto debe ser positivo');
     RecibosCheques.Value := SumadorCampo.Value;    
     Sumador.close;


end;

procedure TFReci.RecibosBeforeInsert(DataSet: TDataset);
begin
      iniciar;
      Radio.Itemindex := 0;
       {este procedimiento calcula el código siguiente de orden,
        esto luego es utilizado para relacionar las demás tablas}
      Recibos.Last;
      if Recibos.RecordCount > 0 then
         final := RecibosCodigo.value
      else
          final := 108;

end;

procedure TFReci.RecibosBeforeEdit(DataSet: TDataset);
begin
      Iniciar;
      Recibos.tag := 1;
      NClie := RecibosCliente.value;
      Nfacta := RecibosFac_cta.value;
      Pendientes(nil);
      TempCheq.BatchMove(Cheques, batAppend);
end;

procedure TFReci.RecibosAfterPost(DataSet: TDataset);
begin
     botones(false);
     Tempcheq.disableControls;
     GrabaListafac;
     grabaCheques;
     Radio.visible := True;
     libro.pageindex := 1;
     PanelDatos.enabled := False;
     modisql;
     Vercheques.DataField := '';
     Vercheques.DataSource := DataRecibos;
     Vercheques.DataField := 'Cheques';

     Tempcheq.EnableControls;
end;

procedure TFReci.RecibosAfterCancel(DataSet: TDataset);
begin
     restaurar;
end;

procedure TFReci.TempcheqNewRecord(DataSet: TDataset);
begin
     TempCheqEnt_car.value := 'C';
     TempCheqVoR.value := 'R';
     TempcheqCodiFactu.value := RecibosCodigo.value;
end;

procedure TFReci.TempcheqBeforePost(DataSet: TDataset);
begin
     {ahora se busca el nuevo cheque en la base Cheques}
     with cheques do begin
        MasterFields := '';
        MasterSource := nil;
        IndexFieldNames := 'banco;numero';
        if FindKey([TempcheqBanco.value, TempcheqNumero.value]) then
                Raise exception.Create('ya existe este cheque');
        IndexfieldNames := 'VoR;codifactu';
        MasterSource := DataRecibos;
        MasterFields := 'R;Codigo';
     end;
end;

procedure TFReci.TempcheqBeforeInsert(DataSet: TDataset);
begin
     DBEefectivo.enabled := false;
end;

procedure TFReci.TempcheqAfterPost(DataSet: TDataset);
begin
        
     DBEefectivo.enabled := true;
     Calcupagado;
end;

procedure TFReci.TempcheqAfterCancel(DataSet: TDataset);
begin
     DBEefectivo.enabled := true;
end;

procedure TFReci.DataSumaDataChange(Sender: TObject; Field: TField);
begin
     if (Datarecibos.state =dsedit) or (Datarecibos.state =dsinsert) then
     RecibosPagado.value := SumadorCampo.value + RecibosEfectivo.value;

end;

Procedure TFReci.Modisql;
{este se encarga de modificar la consulta Sumador}
Begin
     with Sumador do
     begin
      Close;
      SQL.Clear;
      if tag = 0 then
         begin
            tag := 1;
            DataSource := DataCheque;
            SQL.Add('SELECT sum(imporcheq)');
            SQL.Add('FROM "TmpCheq.DB"');
         End
      else
         Begin
            tag := 0;
            DataSource := DataRecibos;
            SQL.Add('SELECT sum(imporcheq)');
            SQL.Add('FROM "Cheques.DB"');
            SQL.Add('WHERE (Codifactu =:codigo) and VoR = "R"');
         End;
      Open;
     end;

End;

Procedure TFReci.Grabacheques;
Begin
     tempcheq.cancelRange;
     Tempcheq.first;
      with Cheques do
      begin
           close;
           readonly := false;
           open;
           MasterFields := '';
           MasterSource := nil;
           IndexFieldNames := 'banco;numero';
           MasterSource := nil;
           BatchMove(TempCheq, batdelete);
           BatchMove(Tempcheq, BatAppend);
           IndexFieldNames := 'VoR;Codifactu';
           MasterSource := DataRecibos;
           MasterFields := 'R;Codigo';
           close;
           readonly := true;
           open;
      end;
      TempCheq.first;
      while not TempCheq.Eof do tempcheq.delete;
      DataCheque.Dataset := Cheques;
End;

procedure TFReci.AgrefacClick(Sender: TObject);
begin
     if agrefac.tag = 0 then
        begin
             agrefac.tag := 1;
             quitafac.enabled := False;
             TempList.SetRange([0],[0]);
             grillalista.Font.Name := 'Terminal';
             PanelDatos.enabled := False;
             if RecibosFac_cta.value = 'C' then Cancelador.visible := false;
        end
     Else
        begin
             quitafac.enabled := True;
             TempList.SetRange([RecibosCodigo.Value],[RecibosCodigo.Value]);
             grillalista.Font.Name := 'Times New Roman';
             PanelDatos.enabled := True;
             if RecibosFac_cta.value = 'C' then Cancelador.visible := true;
             Calcupagado;
             agrefac.tag := 0;
        end;

end;

procedure TFReci.QuitafacClick(Sender: TObject);
begin
with tempList do
     if not eof then
     begin
          if (ventasTipo.value = 'NC A') or (ventasTipo.value = 'NC B') then
              RecibosDescuento.value := Recibosdescuento.Value - ventasTotal.value
          else
              RecibosSuma.value := RecibosSuma.Value - ventasTotal.value
                               + ventasTPagado.value;

          RecibosNeto.value := RecibosSuma.value - RecibosDescuento.value;
        edit;
        if TempListCancelar.value = true and not ((ventasTipo.value = 'NC A')
           or (ventasTipo.value = 'NC B')) then
        begin
             TempListCancelar.value := False;
             TotalCancel := TotalCancel - VentasTotal.value - VentasTPagado.value;
        end;
        TempListRecibo.value := 0;
        post;
        CalcuPagado;
     end;
      
end;

procedure TFReci.RecibosEfectivoValidate(Sender: TField);
begin
     RecibosPagado.value := SumadorCampo.value + RecibosEfectivo.value;
     Calcupagado;
end;

Procedure TFReci.GrabaListaFac;
begin
      {ahora se realiza la actualización de las Ventas}
      with TempList do
      begin
           GrillaLista.datasource := nil;
           Ventas.disableControls;
           first;

           if (NClie = RecibosCliente.value)
              and (Nfacta = RecibosFac_cta.value) then modificar
           else
               while not eof do
               begin
                    Ventas.edit;
                    if not ((VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC A')) then
                       VentasTPagado.value := VentasTPagado.value + TempListPagado.Value;
                    if (TempListCancelar.value = true) or (RecibosFac_cta.value = 'F') then
                       VentasCancelado.value := True;
                    Ventas.post;
                    next;
               end;
           GrillaLista.dataSource := datalista;
           Ventas.enableControls;
      end;

      with ListaFac do
      begin
            close;
            readOnly := false;
            open;
            first;
            while not eof do delete;
            MasterFields := '';
            MasterSource := nil;
            IndexFieldNames := 'Numero';
            with copiador do
            begin
                 destination := ListaFac;
                 source := TempList;
                 execute;
                 destination := TempList;
                 Source := Listafac;
            end;
            IndexFieldNames := 'Recibo';
            MasterSource := DataRecibos;
            MasterFields := 'Codigo';
            close;
            Readonly := true;
            open;
      end;
      TempList.first;
      while not templist.eof do TempList.delete;
      Datalista.Dataset:= Listafac;

end;

procedure TFReci.BotoncancelarClick(Sender: TObject);
begin
      Recibos.Cancel;
end;

procedure TFReci.BotonaceptarClick(Sender: TObject);
begin
     try
          Recibos.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe esta Orden. Revise los datos');
           on EdatabaseError do
              Raise exception.create('datos incompletos de Compra');
     end;

end;

Procedure TFReci.Pendientes;
var
   siNC : boolean;
Begin
     agrefac.tag := 1;

 {se inicializa la base templist }
   with templist do
   begin
     if (state <> dsinactive) then Disablecontrols;
      first;
      while not eof do delete;
     if (NClie = ClientesCodigo.value) and (Nfacta = RecibosFac_cta.value) then
        Copiador.execute
     else
     begin
          RecibosSuma.clear;
          RecibosDescuento.clear;
          RecibosNeto.clear;
     end;

     open;
     CancelRange;
   end;

 {ahora filtra las Ventas de acuerdo al cliente}
   with Ventas do
   begin
        disablecontrols;
        MasterSource := nil;
        first;
        while not eof do
        begin
             if (VentasCodcli.value = reciboscliente.value)
                and (VentasCancelado.value = false) and ((RecibosFac_cta.value = 'C') or
                ((RecibosFac_cta.value = 'F') and (VentasTPagado.value = 0)))then
                  try
                     if (VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B') then
                        siNC := true
                     else
                         siNC := false;
          	      Templist.AppendRecord([0,VentasCodigo.value,0,siNC]);
                  except
                        On EdbEngineError do cancel;
                  end;
             next;
        end;
        MasterSource := DataLista;
        enablecontrols;
   end;
   TempList.SetRange([RecibosCodigo.Value],[RecibosCodigo.Value]);
   Templist.enableControls;
     agrefac.tag := 0;

End;

Procedure TFReci.Botones(SN:Boolean);
Begin
     if SN = True then
     Begin
        agrefac.enabled := true;
        QuitaFac.enabled := true;
        if RecibosFac_cta.value = 'C' then
        begin
             cancelador.visible := true;
             cancelador.datafield := 'Cancelar';
        end;
     end
     else
     Begin
          if tempcheq.State = dsInsert then Tempcheq.cancel;
          if agrefac.tag = 1 then
          begin
               agrefac.click;
               agrefac.down := false;
          end;
        agrefac.enabled := False;
        QuitaFac.enabled := False;
        cancelador.visible := false;
        cancelador.datafield := '';
     end;
End;

Procedure TFReci.Iniciar;
Begin
    Radio.visible := False;
    libro.pageindex := 0;
    PanelDatos.enabled := true;
    TempCheq.first;
    while not TempCheq.Eof do tempcheq.delete;
    DataLista.Dataset:= TempList;
    DataCheque.Dataset := TempCheq;
    modisql;
    Vercheques.DataField := '';
    Vercheques.DataSource := Datasuma;
    Vercheques.DataField := 'SUM of imporcheq';
    Botones(true);
    TotalCancel := 0;
    dbfecha.SetFocus ;

End;

Procedure TFReci.Restaurar;
Begin
      Recibos.disableControls;
      Botones(False);
      Radio.visible := True;
      libro.pageindex := 1;
      Vercheques.DataField := '';
      Vercheques.DataSource := DataRecibos;
      Vercheques.DataField := 'Cheques';
      TempCheq.first;
      while not TempCheq.Eof do tempcheq.delete;
      TempList.first;
      while not templist.eof do TempList.delete;
      DataLista.Dataset:= Listafac;
      DataCheque.Dataset := Cheques;
      PanelDatos.enabled := false;
      Modisql;
      Recibos.enableControls;
End;

procedure TFReci.GrillaListaDblClick(Sender: TObject);
begin
     if (agrefac.tag = 1) and not (TempList.eof) then
     with TempList do
     begin
          if not ((VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B')) then
             recibosSuma.value := recibosSuma.Value + VentasTotal.value
                               - VentasTPagado.value
          else
              recibosDescuento.value := recibosdescuento.Value + VentasTotal.value;
          recibosNeto.value := recibosSuma.value - recibosDescuento.value;
          edit;
          TempListRecibo.value := RecibosCodigo.value;
          post;
     end;
end;

procedure TFReci.ListaclieChange(Sender: TObject);
begin
     ListaClie.tag := 1;
end;

procedure TFReci.ListaclieExit(Sender: TObject);
begin
     clientes.IndexFieldNames := 'codigo';
  if (ListaClie.tag = 1) and (RecibosFac_Cta.value <> '') then Pendientes(nil);
  ListaClie.tag := 0;
end;

procedure TFReci.DBfactaExit(Sender: TObject);
begin
  if (dbFacta.tag = 1) and (RecibosCliente.value <> 0 ) then Pendientes(nil);
  dbFacta.tag := 0;
  if RecibosFac_cta.value = 'C' then
  begin
       cancelador.visible := true;
       cancelador.datafield := 'Cancelar';
  end
  else
  begin
       cancelador.visible := false;
       cancelador.datafield := '';
  end;
end;

procedure TFReci.DBfactaChange(Sender: TObject);
begin
     Dbfacta.tag := 1;
end;

Procedure TFReci.Calcupagado;
var
   pendiente: Double;
begin
with TempList do
     Begin
          Ventas.disableControls;
          GrillaLista.Datasource := nil;
          first;
          try
          while not eof do
          Begin
               if (Ventastipo.value = 'NC A') or (VentasTipo.value = 'NC B') then
               begin
                    next;
                    continue;
               end;

               pendiente := VentasTotal.value - VentasTPagado.value;
               edit;
               if RecibosFac_cta.value = 'C' then
               begin
                  if TemplistCancelar.value = false then
                  TempListPagado.value :=
                      (RecibosPagado.value *(RecibosSuma.value / recibosNeto.value)-TotalCancel)
                                        * pendiente / (RecibosSuma.value - totalCancel)
                  else
                     TempListPagado.value := pendiente;
               end
               else
                   TempListPagado.value := VentasTotal.value;
                   Post;
                   Next;
               end;
          finally
                 first;
                 Ventas.enableControls;
                 GrillaLista.DataSource := DataLista;
          end;
     end;
end;

procedure TFReci.canceladorExit(Sender: TObject);
var
   pendiente:double;
begin
     if (TempListCancelar.tag = 0) or ((VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B')) then exit;
     pendiente := VentasTotal.value - VentasTPagado.value;
     if TempListcancelar.value = true then
        TotalCancel := TotalCancel + pendiente
     else
         TotalCancel := TotalCancel - pendiente;
     TempListCancelar.tag := 0;
     TemPList.post;
     CalcuPagado;
end;

procedure TFReci.TemplistCancelarChange(Sender: TField);
begin
     TempListCancelar.tag := 1;
end;

procedure TFReci.RecibosBeforeDelete(DataSet: TDataset);
begin
if MessageDlg('borrando este recibo pueden ocasionarse problemas en Ventas y ordenes ¿desea borrar?',
    mtInformation, mbOkCancel, 0) = MrCancel then raise exception.create('se evitó el borrado');
     with ListaFac do
     begin
          first;
          Ventas.disableControls;
          while not eof do
          begin
               with Ventas do
               begin
                    edit;
                    VentasTPagado.value := VentasTPagado.value - ListaFacPagado.value;
                    VentasCancelado.value := False;
                    post;
               end;
               next;
          End;
          first;
          while not eof do delete;
          Ventas.enableControls;
     end;

     with cheques do
     begin
          close;
          disableControls;
          readOnly := false;
          open;
          first;
          while not eof do delete;
          close;
          readonly := true;
          enablecontrols;
          open;
     end;
end;

procedure TFReci.AgrefacMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if (datalista.state = dsinactive) then
        raise exception.create('Indique proveedor y forma de cancelación');
end;
procedure TFReci.TempCheqAfterDelete(DataSet: TDataset);
begin
     Calcupagado;
end;

procedure TFReci.ListaclieEnter(Sender: TObject);
begin
     Clientes.IndexfieldNames := 'nombre';
end;

procedure TFReci.ListaclieKeyPress(Sender: TObject; var Key: Char);
begin
     Clientes.findNearest([key]);
     listaclie.DisplayValue := clientesnombre.Value ;

end;

procedure TFReci.DataListaDataChange(Sender: TObject; Field: TField);
begin
     if (datalista.dataset = TempList) and (agrefac.tag = 0)
        and (RecibosFac_cta.value = 'C')  then
        if (VentasTipo.value = 'NC A') or (VentasTipo.value = 'NC B') then
           cancelador.enabled := false
        else
            cancelador.enabled := true;


end;

Procedure TFReci.Modificar;
begin
     with listafac do
     begin
          indexFieldNames := 'factura';
          Mastersource := nil;
          Masterfields := #0;
          with templist do
          begin
               first;
               while not eof do
               begin
                    Ventas.edit;
                    if not ((VentasTipo.value = 'NC A') and (VentasTipo.value = 'NC B'))  then
                       if listafac.findKey([TempListFactura.value])then
                          VentasTPagado.value := VentasTPagado.value +
                                 (TempListPagado.value - ListaFacPagado.value)
                       else
                           VentasTPagado.value := VentasTPagado.value +
                                                TempListPagado.value;

                    if (TempListCancelar.value = true) or (RecibosFac_cta.value = 'F') then
                      VentasCancelado.value := True;
                    Ventas.post;
                    next;
               end;
          end;
          indexFieldNames := 'recibo';
          Masterfields := 'codigo';
          Mastersource := datarecibos;

     end;
end;

end.
