unit Orden;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Buttons, DBCtrls, Grids, DBGrids, StdCtrls, TabNotBk,
  Mask, ExtCtrls, DBLookup, DB, DBTables, ComCtrls;

type
  TFOrden = class(TForm)
    PanelDatos: TPanel;
    ListaProv: TDBLookupCombo;
    libro: TNotebook;
    Botonaceptar: TButton;
    Botoncancelar: TButton;
    DBNavegador: TDBNavigator;
    solapas: TTabbedNotebook;
    Panelinvisible: TPanel;
    listaFac: TTable;
    DataLista: TDataSource;
    ordenes: TTable;
    ordenesProveedor: TIntegerField;
    ordenesFecha: TDateField;
    ordenesFac_cta: TStringField;
    ordenesSuma: TCurrencyField;
    ordenesNeto: TCurrencyField;
    Dataordenes: TDataSource;
    Compras: TTable;
    DataCompras: TDataSource;
    Proveedor: TTable;
    Dataprove: TDataSource;
    Cheques: TTable;
    Datacheque: TDataSource;
    ordenesO: TStringField;
    Banco: TTable;
    DataBanco: TDataSource;
    Chequesnumero: TStringField;
    Chequesimporcheq: TFloatField;
    PanelContenedor: TPanel;
    Panelnuevo: TPanel;
    Labelnum: TLabel;
    Labelfe: TLabel;
    Labelimpo: TLabel;
    chefecha: TDBEdit;
    chenumero: TDBEdit;
    cheimporte: TDBEdit;
    Acepta: TBitBtn;
    Cancela: TBitBtn;
    Panelbanco: TPanel;
    DBLbancos: TDBLookupCombo;
    GCheques: TPanel;
    Panelhace: TPanel;
    Propio: TSpeedButton;
    Agrega: TSpeedButton;
    Quita: TSpeedButton;
    GrillaCheques: TDBGrid;
    PanelPagos: TPanel;
    EtiquetaTotal: TLabel;
    DBPAGADO: TDBText;
    EtiqEfectivo: TLabel;
    LbCheques: TLabel;
    DBTCheques: TDBText;
    DBEefectivo: TDBEdit;
    PanelBusquedas: TPanel;
    busca1: TMaskEdit;
    DBFecha: TDBEdit;
    DBText1: TDBText;
    GrillaOrden: TDBGrid;
    DBfacta: TDBComboBox;
    Bevel1: TBevel;
    Sumador: TQuery;
    SumadorCampo: TFloatField;
    DataSuma: TDataSource;
    Proveedornomprov: TStringField;
    Proveedorempreprov: TStringField;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBSuma: TDBText;
    Bevel2: TBevel;
    ordenesEfectivo: TCurrencyField;
    PanelFactu: TPanel;
    Agrefac: TSpeedButton;
    Quitafac: TSpeedButton;
    Templist: TTable;
    Tempcheq: TTable;
    Radio: TRadioGroup;
    Tempcheqfecheque: TDateField;
    Tempcheqimporcheq: TFloatField;
    Tempcheqent_car: TStringField;
    Chequesfecheque: TDateField;
    Tempcheqnumero: TStringField;
    Chequesent_car: TStringField;
    listaFacOrden: TIntegerField;
    listaFacFactura: TIntegerField;
    listaFacPagado: TCurrencyField;
    TemplistFactura: TIntegerField;
    TemplistPagado: TCurrencyField;
    copiador: TBatchMove;
    ComprasTPagado: TCurrencyField;
    Comprastotal: TCurrencyField;
    GrillaLista: TDBGrid;
    Comprasfechafactu: TDateField;
    ComprasTipo: TStringField;
    Comprassubto: TCurrencyField;
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
    Bevel3: TBevel;
    TemplistCancelar: TBooleanField;
    ComprasCancelado: TBooleanField;
    cancelador: TDBCheckBox;
    DBText9: TDBText;
    DBdescuento: TDBText;
    ordenesDescuento: TCurrencyField;
    ordenesPagado: TCurrencyField;
    ordenesCodigo: TFloatField;
    ComprasCodigo: TFloatField;
    Proveedorcodiprov: TFloatField;
    TempcheqDestino: TFloatField;
    TemplistOrden: TFloatField;
    Chequescodifactu: TFloatField;
    Tempcheqcodifactu: TFloatField;
    Tempcheqbanco: TFloatField;
    TempcheqT_destino: TStringField;
    Chequesbanco: TFloatField;
    ChequesT_destino: TStringField;
    ChequesDestino: TFloatField;
    Comprascodigoprov: TFloatField;
    Comprasfactunum: TStringField;
    Bancocodigo: TFloatField;
    Bancobanco: TStringField;
    BancoB: TStringField;
    Splitter1: TSplitter;
    listaFacNumero: TAutoIncField;
    ordenesnProve: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioClick(Sender: TObject);
    procedure busca1Change(Sender: TObject);
    procedure busca1KeyPress(Sender: TObject; var Key: Char);
    procedure GrillaChequesDblClick(Sender: TObject);
    procedure AgregaClick(Sender: TObject);
    procedure QuitaClick(Sender: TObject);
    procedure AceptaClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure ordenesNewRecord(DataSet: TDataset);
    procedure ordenesBeforePost(DataSet: TDataset);
    procedure ordenesBeforeInsert(DataSet: TDataset);
    procedure ordenesBeforeEdit(DataSet: TDataset);
    procedure ordenesAfterPost(DataSet: TDataset);
    procedure ordenesAfterCancel(DataSet: TDataset);
    procedure TempcheqNewRecord(DataSet: TDataset);
    procedure TempcheqBeforePost(DataSet: TDataset);
    procedure TempcheqBeforeInsert(DataSet: TDataset);
    procedure TempcheqAfterPost(DataSet: TDataset);
    procedure TempcheqAfterCancel(DataSet: TDataset);
    procedure DataSumaDataChange(Sender: TObject; Field: TField);
    Procedure Cartera;
    Procedure Modisql;
    Procedure GrabaCheques;
    procedure AgrefacClick(Sender: TObject);
    procedure QuitafacClick(Sender: TObject);
    procedure ordenesEfectivoValidate(Sender: TField);
    Procedure GrabaListaFac;
    procedure BotoncancelarClick(Sender: TObject);
    procedure BotonaceptarClick(Sender: TObject);
    procedure PropioClick(Sender: TObject);
    Procedure Pendientes(Sender:TObject);
    Procedure Botones(SN:Boolean);
    Procedure Iniciar;
    Procedure Restaurar;
    procedure GrillaListaDblClick(Sender: TObject);
    procedure ListaProvChange(Sender: TObject);
    procedure ListaProvExit(Sender: TObject);
    procedure DBfactaExit(Sender: TObject);
    procedure DBfactaChange(Sender: TObject);
    Procedure calcupagado;
    procedure canceladorExit(Sender: TObject);
    procedure TemplistCancelarChange(Sender: TField);
    procedure ordenesBeforeDelete(DataSet: TDataset);
    procedure AgrefacMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListaProvKeyPress(Sender: TObject; var Key: Char);
    procedure ListaProvEnter(Sender: TObject);
    procedure DataListaDataChange(Sender: TObject; Field: TField);
    procedure modificar;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrden: TFOrden;
  NProv, final : Extended;
  NFacta : string;
  TotalCancel: double;
  nlista: double;

implementation

{$R *.DFM}

procedure TFOrden.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if libro.Pageindex = 0 then Ordenes.cancel;
     Sumador.close;

end;

procedure TFOrden.RadioClick(Sender: TObject);
begin
     if Radio.Itemindex = 0 then
        Ordenes.IndexFieldNames := 'codigo'
     else
        Ordenes.IndexFieldNames := 'Proveedor';
     Busca1.clear;
end;

procedure TFOrden.busca1Change(Sender: TObject);
begin
     Ordenes.FindNearest([Busca1.text]);
end;

procedure TFOrden.busca1KeyPress(Sender: TObject; var Key: Char);
begin
     if (key > '9') then key := #0;
end;

procedure TFOrden.GrillaChequesDblClick(Sender: TObject);
begin
     if agrega.tag = 1 then
        begin
             TempCheq.edit;
             TempCheqent_car.value := 'E';
             TempCheqDestino.value := OrdenesCodigo.value;
             TempCheqT_destino.value := 'O';
             Tempcheq.tag := 1;
             TempCheq.post;
             Tempcheq.tag := 0;
        end;
end;

procedure TFOrden.AgregaClick(Sender: TObject);
begin
     if agrega.tag = 0 then
        begin
             agrega.tag := 1;
             quita.enabled := False;
             Propio.enabled := False;
             TempCheq.SetRange([''], ['']);
        end
     Else
        begin
             agrega.tag := 0;
             quita.enabled := True;
             Propio.enabled := True;
             TempCheq.SetRange(['O'], ['O']);
             CalcuPagado;
              
        end;
end;

procedure TFOrden.QuitaClick(Sender: TObject);
begin
with tempcheq do
     if not eof then
     begin
          edit;
          TempCheqent_car.value := '';
          TempCheqDestino.clear;
          TempCheqT_destino.clear;
          tag := 1;
          post;
          tag := 0;
          Calcupagado;
     end;
      
end;

procedure TFOrden.AceptaClick(Sender: TObject);
begin
     {ahora se ejecuta la grabación dentro de un bloque de protección}
     Try
        Tempcheq.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe este cheque');
           on EdatabaseError do
              Raise exception.create('datos incompletos');
     end;

end;

procedure TFOrden.CancelaClick(Sender: TObject);
begin
     Tempcheq.cancel;
end;

procedure TFOrden.ordenesNewRecord(DataSet: TDataset);
begin
     OrdenesCodigo.value := final + 1;
     OrdenesO.value := 'O';
end;

procedure TFOrden.ordenesBeforePost(DataSet: TDataset);
begin

     if (OrdenesFac_cta.value = 'F') and (abs(OrdenesPagado.value - OrdenesNeto.value) > 0.006) then
        Raise Exception.create('En el caso de pagar facturas completas, hay que asegurarse que coincidan los totales');
     if (OrdenesPagado.value - OrdenesNeto.value > 0.006) then
        Raise Exception.create('El pago es superior al valor de las facturas');
     if
totalcancel - OrdenesPagado.value * (OrdenesSuma.value / OrdenesNeto.value) > 0.006  then
        Raise Exception.create('La suma no alcanza para cancelar facturas');
     if not (OrdenesNeto.value > 0) then
        raise exception.create('el neto debe ser positivo');
     Sumador.close;


end;

procedure TFOrden.ordenesBeforeInsert(DataSet: TDataset);
begin
      iniciar;
      Radio.Itemindex := 0;
       {este procedimiento calcula el código siguiente de orden,
        esto luego es utilizado para relacionar las demás tablas}
      Ordenes.Last;
      final := OrdenesCodigo.value;
      Solapas.PageIndex := 1;
      dbfecha.SetFocus ;
end;

procedure TFOrden.ordenesBeforeEdit(DataSet: TDataset);
begin
      Iniciar;
      Ordenes.tag := 1;
      NProv := OrdenesProveedor.value;
      Nfacta := OrdenesFac_cta.value;
      Pendientes(nil);
      TempCheq.BatchMove(Cheques, batAppend);
      Solapas.PageIndex := 1;
      dbfecha.SetFocus ;
end;

procedure TFOrden.ordenesAfterPost(DataSet: TDataset);
begin
     botones(false);
     Tempcheq.disableControls;
     GrabaListafac;
     grabaCheques;
     Radio.visible := True;
     libro.pageindex := 1;
     PanelDatos.enabled := False;
     modisql;
     Tempcheq.EnableControls;
     Solapas.PageIndex := 0;
end;

procedure TFOrden.ordenesAfterCancel(DataSet: TDataset);
begin
     restaurar;
        solapas.PageIndex := 0;     
end;

procedure TFOrden.TempcheqNewRecord(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     TempCheqEnt_car.value := 'E';
     TempCheqT_destino.value := 'O';
     TempcheqDestino.value := OrdenesCodigo.value;

end;

procedure TFOrden.TempcheqBeforePost(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     {ahora se busca el nuevo cheque en la base Cheques}
        with cheques do begin
                masterfields := '';
                Mastersource := nil;
                IndexFieldNames := 'banco;numero';
                if FindKey([TempcheqBanco.value, TempcheqNumero.value]) then
                        Raise exception.Create('ya existe este cheque');
                IndexFieldNames := 'T_destino;Destino';
                Mastersource := Dataordenes;
                masterfields := 'O;Codigo';
        end;


end;

procedure TFOrden.TempcheqBeforeInsert(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     DBEefectivo.enabled := false;
     Gcheques.visible := False;
     Panelnuevo.visible := true;
     DBLbancos.enabled := true;

end;

procedure TFOrden.TempcheqAfterPost(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     DBEefectivo.enabled := true;
     Gcheques.visible := true;
     DBLbancos.enabled := false;
     PanelNuevo.visible := False;
     Calcupagado;
end;

procedure TFOrden.TempcheqAfterCancel(DataSet: TDataset);
begin
     Gcheques.visible := TRUE;
     DBEefectivo.enabled := true;
     PanelNuevo.visible := False;
     DBLbancos.enabled := false;

end;

procedure TFOrden.DataSumaDataChange(Sender: TObject; Field: TField);
begin
     if (Dataordenes.state =dsedit) or (Dataordenes.state =dsinsert) then  
     OrdenesPagado.value := SumadorCampo.value + OrdenesEfectivo.value;
end;

Procedure TFOrden.Cartera;
{se encarga de agregar a tempcheques los cheques que estén en cartera}
begin
      Cheques.DisableControls;
      DataCheque.enabled := False;
      Cheques.MasterSource := nil;
      Cheques.first;
      TempCheq.tag := 1;
      while not Cheques.eof do
      begin
           if ChequesEnt_car.value = 'C' then
                TempCheq.InsertRecord(
                [Chequesnumero.value,ChequesFecheque.value,
                 ChequesImporcheq.value, ChequesCodifactu.Value,
                 ChequesBanco.value, ChequesEnt_car.value,
                 ChequesT_destino.value, ChequesDestino.value]);
           Cheques.next;
      end;
      TempCheq.tag := 0;
      Cheques.MasterSource := DataOrdenes;
      DataCheque.enabled := true;
      Cheques.enableControls;
End;

Procedure TFOrden.Modisql;
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
            SQL.Add('WHERE (T_destino = "O")');
         End
      else
         Begin
            tag := 0;
            DataSource := DataOrdenes;
            SQL.Add('SELECT sum(imporcheq)');
            SQL.Add('FROM "Cheques.DB"');
            SQL.Add('WHERE (T_destino = "O") and destino = :Codigo');
         End;
      Open;
     end;

End;

Procedure TFOrden.Grabacheques;
Begin
     tempcheq.cancelRange;
     Tempcheq.first;
      with Cheques do
      begin
           close;
           readonly := false;
           open;
           masterfields := '';
           Mastersource := nil;
           IndexFieldNames := 'banco;numero';
           while not Tempcheq.eof do
           begin
                if findKey([TempcheqBanco.value,TempCheqNumero.value]) then
                   begin
                   if ChequesDestino.value <> TempcheqDestino.value then
                      begin
                        edit;
                        ChequesEnt_car.value := TempcheqEnt_car.value;
                        ChequesT_destino.value := TempcheqT_destino.value;
                        ChequesDestino.value := TempcheqDestino.value;
                        post;
                      end;
                   end
                else
                    InsertRecord(
                    [Tempcheqnumero.value,TempcheqFecheque.value,
                    TempcheqImporcheq.value,TempcheqCodifactu.Value,
                    TempcheqBanco.value,TempcheqEnt_car.value,
                    TempcheqT_destino.value,TempcheqDestino.value]);
                Tempcheq.next;
           end;

           IndexFieldNames := 'T_destino;Destino';
           MasterSource := DataOrdenes;
           masterfields := 'O;Codigo';

           close;
           readonly := true;
           open;
      end;
      TempCheq.first;
      while not TempCheq.eof do tempcheq.delete;
      DataCheque.Dataset := Cheques;
End;

procedure TFOrden.AgrefacClick(Sender: TObject);
begin
     if agrefac.tag = 0 then
        begin
             agrefac.tag := 1;
             quitafac.enabled := False;
             TempList.SetRange([0],[0]);
             grillalista.Font.Name := 'Terminal';
             PanelDatos.enabled := False;
             cancelador.enabled := false;
        end
     Else
        begin
             quitafac.enabled := True;
             TempList.SetRange([OrdenesCodigo.Value],[OrdenesCodigo.Value]);
             grillalista.Font.Name := 'Times New Roman';
             PanelDatos.enabled := True;
             cancelador.enabled:= true;
             Calcupagado;
             agrefac.tag := 0;
        end;

end;

procedure TFOrden.QuitafacClick(Sender: TObject);
begin
with tempList do
     if not eof then
     begin
          if (ComprasTipo.value = 'NC A') then
              OrdenesDescuento.value := Ordenesdescuento.Value - ComprasTotal.value
          else
              OrdenesSuma.value := OrdenesSuma.Value - ComprasTotal.value
                               + ComprasTPagado.value;

          OrdenesNeto.value := OrdenesSuma.value - OrdenesDescuento.value;

          edit;
          if (TempListCancelar.value = true) and not (ComprasTipo.value = 'NC A') then
             begin
                  TempListCancelar.value := False;
                  TotalCancel := TotalCancel - ComprasTotal.value -
                  ComprasTPagado.value;
             end;
          TempListOrden.value := 0;
          post;
          CalcuPagado;
     end;
      
end;

procedure TFOrden.ordenesEfectivoValidate(Sender: TField);
begin
     OrdenesPagado.value := SumadorCampo.value + OrdenesEfectivo.value;
     Calcupagado;
end;

Procedure TFOrden.GrabaListaFac;
begin
      {ahora se realiza la actualización de las compras}
      with TempList do
      begin
           GrillaLista.datasource := nil;
           compras.disableControls;
           first;
           {el siguiente if permite manejar las modificaciones}
           if (NProv = ProveedorCodiprov.value)
              and (Nfacta = OrdenesFac_cta.value) then modificar
           else
               while not eof do
               begin
                compras.edit;
                if not (ComprasTipo.value = 'NC A') then
                   ComprasTPagado.value := ComprasTPagado.value + TempListPagado.Value;

                if (TempListCancelar.value = true) or (OrdenesFac_cta.value = 'F') then
                   ComprasCancelado.value := True;
                Compras.post;
                next;
               end;
           GrillaLista.dataSource := datalista;
           compras.enableControls;
      end;

      {ahora se continua copiando la lista de facturas}
      with ListaFac do
      begin
            close;
            readOnly := false;
            open;
            first;
            while not eof do delete;
            IndexFieldNames := 'Numero';
            with copiador do
            begin
                 destination := ListaFac;
                 source := TempList;
                 execute;
                 destination := TempList;
                 Source := Listafac;
            end;
            IndexFieldNames := 'Orden';
            close;
            Readonly := true;
            open;
      end;
      Datalista.Dataset:= Listafac;
      TempList.first;
      while not TempList.eof do tempList.delete;

end;

procedure TFOrden.BotoncancelarClick(Sender: TObject);
begin
      Ordenes.Cancel;
end;

procedure TFOrden.BotonaceptarClick(Sender: TObject);
begin
     try
          Ordenes.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe esta Orden. Revise los datos');
           on EdatabaseError do
              Raise exception.create('datos incompletos de Orden');
     end;

end;

procedure TFOrden.PropioClick(Sender: TObject);
begin
      TempCheq.insert;
end;

Procedure TFOrden.Pendientes;
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
     if (NProv = ProveedorCodiprov.value) and (Nfacta = OrdenesFac_cta.value) then
        Copiador.execute
     else
     begin
          OrdenesSuma.clear;
          OrdenesDescuento.clear;
          OrdenesNeto.clear;
     end;
     open;
     CancelRange;

   end;

   with Compras do
   begin
        disablecontrols;
        mastersource := nil;
        first;
        while not eof do
        begin
             if (ComprasCodigoprov.value = OrdenesProveedor.value)
                and (ComprasCancelado.value = false) and
                  ((OrdenesFac_cta.value = 'C') or ((OrdenesFac_cta.value = 'F')
                  and (ComprasTPagado.value = 0)))then
                  try
                     if (ComprasTipo.value = 'NC A') then
                        siNC := true
                     else
                         siNC := false;
          	      Templist.AppendRecord([0,ComprasCodigo.value,0,siNC]);
                  except
                        On EdbEngineError do cancel;
                  end;
             next;
        end;
        mastersource:= DataLista;
        enablecontrols;
   end;
   TempList.SetRange([OrdenesCodigo.Value],[OrdenesCodigo.Value]);
   Templist.enableControls;
   agrefac.tag := 0;
End;

Procedure TFOrden.Botones(SN:Boolean);
Begin
     if SN = True then
     Begin
        agrefac.enabled := true;
        QuitaFac.enabled := true;
        Propio.enabled := true;
        agrega.enabled := True;
        Quita.enabled := True;
        if OrdenesFac_cta.value = 'C' then
        begin
             cancelador.visible := true;
             cancelador.datafield := 'Cancelar';
        end;
     end
     else
     Begin
          if tempcheq.State = dsInsert then Tempcheq.cancel;
          if agrega.tag = 1 then
          begin
               agrega.click;
               agrega.down := false;
          end;
          if agrefac.tag = 1 then
          begin
               agrefac.click;
               agrefac.down := false;
          end;
        agrefac.enabled := False;
        QuitaFac.enabled := False;
        Propio.enabled := False;
        agrega.enabled := False;
        Quita.enabled := False;
        cancelador.visible := false;
        cancelador.datafield := '';
     end;
End;

Procedure TFOrden.Iniciar;
Begin
    Radio.visible := False;
    libro.pageindex := 0;
    PanelDatos.enabled := true;
    TempCheq.first;
    while not TempCheq.eof do tempcheq.delete;
    cartera;
    TempCheq.SetRange(['O'], ['O']);
    DataLista.Dataset:= TempList;
    DataCheque.Dataset := TempCheq;
    modisql;
    Botones(true);
    TotalCancel := 0;

End;

Procedure TFOrden.Restaurar;
Begin
      Ordenes.disableControls;
      Botones(False);
      Radio.visible := True;
      libro.pageindex := 1;
      TempList.first;
      while not TempList.eof do tempList.delete;
      tempcheq.CancelRange ;
      TempCheq.first;
      while not TempCheq.eof do tempcheq.delete;
      DataLista.Dataset:= Listafac;
      DataCheque.Dataset := Cheques;
      PanelDatos.enabled := false;
      Modisql;
      Ordenes.enableControls;
End;

procedure TFOrden.GrillaListaDblClick(Sender: TObject);
begin
     if (agrefac.tag = 1) and not (TempList.eof) then
     with TempList do
     begin
          if not (ComprasTipo.value = 'NC A') then
             OrdenesSuma.value := OrdenesSuma.Value + ComprasTotal.value
                               - ComprasTPagado.value
          else
              OrdenesDescuento.value := Ordenesdescuento.Value + ComprasTotal.value;

          OrdenesNeto.value := OrdenesSuma.value - OrdenesDescuento.value;
          edit;
          TempListOrden.value := OrdenesCodigo.value;
          post;
     end;
end;

procedure TFOrden.ListaProvChange(Sender: TObject);
begin
     ListaProv.tag := 1;
end;

procedure TFOrden.ListaProvExit(Sender: TObject);
begin
     Proveedor.IndexFieldNames := 'codiprov';

  if (ListaProv.tag = 1) and (OrdenesFac_Cta.value <> '') then Pendientes(nil);
  ListaProv.tag := 0;
end;

procedure TFOrden.DBfactaExit(Sender: TObject);
begin
  if (dbFacta.tag = 1) and (OrdenesProveedor.value <> 0 ) then Pendientes(nil);
  dbFacta.tag := 0;
  if OrdenesFac_cta.value = 'C' then
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

procedure TFOrden.DBfactaChange(Sender: TObject);
begin
     Dbfacta.tag := 1;
end;

Procedure TFOrden.Calcupagado;
var
   pendiente: Double;
begin
with TempList do
     Begin
          GrillaLista.Datasource := nil;
          first;
          try
             while not eof do
             Begin
                  if comprasTipo.value = 'NC A' then
                  begin
                       next;
                       continue;
                  end;
                  pendiente := ComprasTotal.value - ComprasTPagado.value;
                  edit;
                  if OrdenesFac_cta.value = 'C' then
                     begin
                          if TemplistCancelar.value = false then
                             TempListPagado.value :=
(OrdenesPagado.value *(OrdenesSuma.value / Ordenesneto.value)-TotalCancel) * pendiente / (OrdenesSuma.value - totalCancel)
                          else
                              TempListPagado.value := pendiente;
                          end
                     else
                         TempListPagado.value := ComprasTotal.value;
                  Post;
                  Next;
             end;
          finally
                 first;
                 Compras.enableControls;
                 GrillaLista.DataSource := DataLista;
          end;
     end;
end;

procedure TFOrden.canceladorExit(Sender: TObject);
var
   pendiente:double;
begin
     if (TempListCancelar.tag = 0) or (ComprasTipo.value = 'NC A') then exit;
     pendiente := ComprasTotal.value - ComprasTPagado.value;
     if TempListcancelar.value = true then
        TotalCancel := TotalCancel + pendiente
     else
         TotalCancel := TotalCancel - pendiente;
     TempListCancelar.tag := 0;
     TemPList.post;
     CalcuPagado;
end;

procedure TFOrden.TemplistCancelarChange(Sender: TField);
begin
     TempListCancelar.tag := 1;
end;

procedure TFOrden.ordenesBeforeDelete(DataSet: TDataset);
begin
     with ListaFac do
     begin
          first;
          Compras.disableControls;
          while not eof do
          begin
               with compras do
               begin
                    edit;
                    ComprasTPagado.value := ComprasTPagado.value - ListaFacPagado.value;
                    ComprasCancelado.value := False;
                    post;
               end;
               next;
          End;
          first;
          while not eof do delete;
          Compras.enableControls;
     end;

     with cheques do
     begin
          disableControls;
          first;
          while not eof do
          begin
               if Chequescodifactu.value > 0 then
                  begin
                       edit;
                       ChequesT_destino.value := '';
                       Chequesent_car.value := 'C';
                       ChequesDestino.value := 0;
                       post;
                  end
               else
                   delete;
               next;
          end;
          enablecontrols;
     end;
end;

procedure TFOrden.AgrefacMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if (datalista.state = dsinactive) then
        raise exception.create('Indique proveedor y forma de cancelación');
end;

procedure TFOrden.ListaProvKeyPress(Sender: TObject; var Key: Char);
begin
     proveedor.FindNearest([key]);
end;

procedure TFOrden.ListaProvEnter(Sender: TObject);
begin
     Proveedor.IndexFieldNames := 'Nomprov';
end;

procedure TFOrden.DataListaDataChange(Sender: TObject; Field: TField);
begin
     if (datalista.dataset = TempList) and (agrefac.tag = 0)
        and (OrdenesFac_cta.value = 'C')  then
        if (ComprasTipo.value = 'NC A') then
           cancelador.enabled := false
        else
            cancelador.enabled := true;

end;

Procedure TFOrden.Modificar;
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
                    compras.edit;
                    if not (ComprasTipo.value = 'NC A') then
                       if listafac.findKey([TempListFactura.value])then
                          ComprasTPagado.value := ComprasTPagado.value +
                                 (TempListPagado.value - ListaFacPagado.value)
                       else
                           ComprasTPagado.value := ComprasTPagado.value +
                                                TempListPagado.value;

                    if (TempListCancelar.value = true) or (OrdenesFac_cta.value = 'F') then
                      ComprasCancelado.value := True;
                    Compras.post;
                    next;
               end;
          end;
          indexFieldNames := 'orden';
          Masterfields := 'codigo';
          Mastersource := dataordenes;

     end;
end;

end.
