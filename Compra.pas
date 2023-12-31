unit Compra;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, ExtCtrls, Mask, TabNotBk, DBTables, Grids,
  DBGrids, DBLookup, Buttons, Dialogs, ComCtrls;


type
  TFormCompra = class(TForm)
    PanelB: TPanel;
    DataCompra: TDataSource;
    Tablarti: TTable;
    Tablarticodiart: TStringField;
    Tablartidescripart: TStringField;
    Tablartipunit: TFloatField;
    Tablartibonifica: TFloatField;
    Datarti: TDataSource;
    TLinea: TTable;
    TLineacantidad: TFloatField;
    TLineaCodiart: TStringField;
    TLineapunit: TFloatField;
    TLineaBonifica: TFloatField;
    TLineaValor: TCurrencyField;
    Templinea: TTable;
    Templineacantidad: TFloatField;
    TemplineaCodiart: TStringField;
    Templineapunit: TFloatField;
    TemplineaBonifica: TFloatField;
    TemplineaValor: TCurrencyField;
    DataLinea: TDataSource;
    DataSuma: TDataSource;
    Bancos: TTable;
    DataBancos: TDataSource;
    DataProve: TDataSource;
    TablaProve: TTable;
    TablaCheque: TTable;
    DataCheque: TDataSource;
    Tablartistockact: TFloatField;
    TablaProvenomprov: TStringField;
    TablaProveempreprov: TStringField;
    TablaProvecuitprov: TStringField;
    TablaProvecodiprov: TFloatField;
    Tablartiprovedor: TFloatField;
    TemplineaCodigofac: TFloatField;
    TLineaCodigofac: TFloatField;
    TablaChequebanco: TFloatField;
    TablaChequenumero: TStringField;
    TablaChequefecheque: TDateField;
    TablaChequeimporcheq: TFloatField;
    TablaChequeent_car: TStringField;
    TablaChequeT_destino: TStringField;
    TablaChequeDestino: TFloatField;
    TLineaNlinea: TAutoIncField;
    TablaChequecodifactu: TFloatField;
    TLineaArti: TStringField;
    TablaChequeNBanco: TStringField;
    Tempcheq: TTable;
    TempcheqNBanco: TStringField;
    Tempcheqbanco: TFloatField;
    Tempcheqnumero: TStringField;
    Tempcheqcodifactu: TFloatField;
    Tempcheqfecheque: TDateField;
    Tempcheqimporcheq: TFloatField;
    Tempcheqent_car: TStringField;
    TempcheqT_destino: TStringField;
    TempcheqDestino: TFloatField;
    libro: TNotebook;
    Botonaceptar: TButton;
    Botoncancelar: TButton;
    DBNavegador: TDBNavigator;
    Sumador: TQuery;
    SumadorCampo: TFloatField;
    TCompra: TTable;
    TCompracodigoprov: TFloatField;
    TCompraTipo: TStringField;
    TComprafactunum: TStringField;
    TCompraCodigo: TFloatField;
    TComprafechafactu: TDateField;
    TCompraContado: TBooleanField;
    TCompraCancelado: TBooleanField;
    TComprasubto: TCurrencyField;
    TComprabonifica: TCurrencyField;
    TCompraivafact: TCurrencyField;
    TCompratotal: TCurrencyField;
    TCompraimpuesto: TCurrencyField;
    TCompraEfectivo: TCurrencyField;
    TCompraTPagado: TCurrencyField;
    TCompraCc: TStringField;
    TCompraNprove: TStringField;
    Indice: TComboBox;
    solapas: TTabbedNotebook;
    Grilla: TDBGrid;
    RadioPago: TDBRadioGroup;
    PanelPagos: TPanel;
    EtiquetaTotal: TLabel;
    DBPAGADO: TDBText;
    EtiqEfectivo: TLabel;
    LbCheques: TLabel;
    Sumacheques: TLabel;
    DBEefectivo: TDBEdit;
    GCheques: TPanel;
    Panelhace: TPanel;
    Propio: TSpeedButton;
    Agrega: TSpeedButton;
    Quita: TSpeedButton;
    GrillaCheques: TDBGrid;
    Panelnuevo: TPanel;
    Labelnum: TLabel;
    Labelfe: TLabel;
    Labelimpo: TLabel;
    chefecha: TDBEdit;
    chenumero: TDBEdit;
    cheimporte: TDBEdit;
    Acepta: TBitBtn;
    Cancela: TBitBtn;
    DBLbancos: TDBLookupCombo;
    DBcodigo: TDBText;
    DBFecha: TDBEdit;
    Tipos: TDBComboBox;
    Editfactunum: TDBEdit;
    ListaProv: TDBLookupCombo;
    Buscodigo: TEdit;
    Buscafac: TComboBox;
    Busca3: TMaskEdit;
    invisible: TPanel;
    Buscaprove: TComboBox;
    Paneltotales: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    editImpuesto: TDBEdit;
    Panelinea: TPanel;
    Panelarti: TPanel;
    Listarti: TDBLookupCombo;
    PanelGrilla: TPanel;
    GLinea: TDBGrid;
    TemplineaArti: TStringField;
    editSubto: TDBEdit;
    DBEdit3: TDBEdit;
    editIva: TDBEdit;
    Splitter1: TSplitter;
    DBText1: TDBText;
    editBoni: TDBEdit;
    procedure TLineaCalcFields(DataSet: TDataset);
    procedure ListartiExit(Sender: TObject);
    procedure ListartiKeyPress(Sender: TObject; var Key: Char);
    procedure TCompraNewRecord(DataSet: TDataset);
    procedure TCompraBeforeInsert(DataSet: TDataset);
    procedure AgregaClick(Sender: TObject);
    procedure GrillaChequesDblClick(Sender: TObject);
    procedure QuitaClick(Sender: TObject);
    procedure PropioClick(Sender: TObject);
    procedure AceptaClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure BotonaceptarClick(Sender: TObject);
    procedure TCompraBeforeEdit(DataSet: TDataset);
    procedure BotoncancelarClick(Sender: TObject);
    procedure TemplineaCalcFields(DataSet: TDataset);
    procedure TemplineaNewRecord(DataSet: TDataset);
    procedure tmpCheNewRecord(DataSet: TDataset);
    Procedure cartera;
    Procedure modisql;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmpCheAfterPost(DataSet: TDataset);
    procedure tmpCheBeforeInsert(DataSet: TDataset);
    procedure TCompraBeforePost(DataSet: TDataset);
    procedure TCompraAfterPost(DataSet: TDataset);
    procedure tmpCheAfterCancel(DataSet: TDataset);
    procedure TCompraEfectivoValidate(Sender: TField);
    procedure TCompraAfterCancel(DataSet: TDataset);
    procedure TCompraimpuestoValidate(Sender: TField);
    procedure TemplineaAfterPost(DataSet: TDataset);
    Procedure Grabalinea;
    Procedure GrabaCheques;
    Procedure ModiArti;
    procedure tmpCheBeforePost(DataSet: TDataset);
    procedure TCompraBeforeDelete(DataSet: TDataset);
    procedure ListaProvEnter(Sender: TObject);
    procedure ListaProvExit(Sender: TObject);
    procedure ListaProvKeyPress(Sender: TObject; var Key: Char);
    procedure DataSumaDataChange(Sender: TObject; Field: TField);
    procedure IndiceChange(Sender: TObject);
    procedure RadioPagoChange(Sender: TObject);
    procedure BuscodigoChange(Sender: TObject);
    procedure BuscaproveChange(Sender: TObject);
    procedure BuscodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure editIvaExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormCompra: TFormCompra;
  final : Extended;
  indice_pos : string;
implementation

{$R *.DFM}


procedure TFormCompra.TLineaCalcFields(DataSet: TDataset);
begin
     TLineaValor.Value := TLineaCantidad.value * TlineaPunit.Value;
end;

procedure TFormCompra.ListartiExit(Sender: TObject);
begin
     if (Templinea.state = dsinsert) or (templinea.state = dsedit) then
     begin
          TemplineaPunit.Value := TablartiPunit.Value;
          TemplineaBonifica.Value := TablartiBonifica.Value;
          Glinea.setFocus;
     end;
end;

procedure TFormCompra.ListartiKeyPress(Sender: TObject; var Key: Char);
begin
         Tablarti.FindNearest([UpperCase(Listarti.text)]);
end;

procedure TFormCompra.TCompraNewRecord(DataSet: TDataset);
begin
     TCompraCodigo.value := final + 1;
     TCompraCc.value := 'C';
     TCompraContado.Value := True;
end;

procedure TFormCompra.TCompraBeforeInsert(DataSet: TDataset);
begin
      indice_pos := TCompra.IndexName ; {almacena el indice antes de realizar los cambios}
      Tcompra.IndexName := 'codigo';
       {este procedimiento calcula el c�digo siguiente de factura,
        esto luego es utilizado para relacionar las dem�s tablas}
      TCompra.Last;
      final := TCompraCodigo.value;
       {ahora se desactivan los botones de movimiento y se activan los de
        'aceptar' y 'cancelar', y se transpasa templinea y tempcheques
        el control }
      libro.pageindex := 0;
      solapas.PageIndex := 1;
      templinea.First ;
      while not templinea.Eof do templinea.delete;
      tempcheq.first;
      while not tempcheq.eof do tempcheq.delete;
      Templinea.active := true;
      TempCheq.active := true;
      cartera;
      TempCheq.SetRange(['E'], ['E']);
      Datalinea.Dataset:= TempLinea;
      datalinea.AutoEdit := true;
      DataCheque.Dataset := TempCheq;
      datacheque.AutoEdit := true;
      GLinea.readOnly := False;
      Listarti.LookupDisplay := 'codiart;descripart;StockAct';
      Listarti.enabled := true;
      PanelHace.visible := True;
      Grilla.Enabled := False;
      Panelarti.Visible := true;
      modisql;
end;

procedure TFormCompra.AgregaClick(Sender: TObject);
          {conecta y desconecta el datasource datacheque con una consulta que
           contiene los cheques que est�n en cartera}
begin
     if agrega.tag = 0 then
        begin
             agrega.tag := 1;
             quita.enabled := False;
             Propio.enabled := False;
             TempCheq.SetRange(['C'], ['C']);
        end
     Else
        begin
             agrega.tag := 0;
             quita.enabled := True;
             Propio.enabled := True;
             TempCheq.SetRange(['E'], ['E']);
        end;

end;

procedure TFormCompra.GrillaChequesDblClick(Sender: TObject);
begin
     if agrega.tag = 1 then
        begin
             TempCheq.edit;
             TempCheqent_car.value := 'E';
             TempCheqDestino.value := TCompraCodigo.value;
             TempCheqT_destino.value := 'C';
             Tempcheq.tag := 1;
             TempCheq.post;
             Tempcheq.tag := 0;
        end;
end;

procedure TFormCompra.QuitaClick(Sender: TObject);
begin
with tempcheq do
     if not eof then
     begin
          edit;
          TempCheqent_car.value := 'C';
          TempCheqDestino.clear;
          TempCheqT_destino.clear;
          tag := 1;
          post;
          tag := 0;
     end;
end;

procedure TFormCompra.PropioClick(Sender: TObject);
begin
      TempCheq.insert;
end;

procedure TFormCompra.AceptaClick(Sender: TObject);
begin
     {ahora se ejecuta la grabaci�n dentro de un bloque de protecci�n}
     Try
        Tempcheq.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe este cheque');
           on EdatabaseError do
              Raise exception.create('datos incompletos');
     end;
end;

procedure TFormCompra.CancelaClick(Sender: TObject);
begin
     Tempcheq.cancel;
end;

procedure TFormCompra.BotonaceptarClick(Sender: TObject);
Begin
     try
          TCompra.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe esta Compra. Revise los datos');
           on EdatabaseError do
              Raise exception.create('datos incompletos de Compra');
     end;
end;

procedure TFormCompra.TCompraBeforeEdit(DataSet: TDataset);
begin
{se activan los botones 'aceptar' y 'cancelar', y se transpasan
    los datos desde l�nea a templinea y desde cheques a tempcheques,
    pasando luego el control a �stos. Luego se desactiva el atributo
    de s�lo lectura de grilla linea y se modifica la consulta sumador }
      indice_pos := TCompra.IndexName; {almacena el indice antes de realizar los cambios}
      TCompra.tag := 1;
      templinea.First ;
      while not templinea.Eof do templinea.delete;
      tempcheq.first;
      while not tempcheq.eof do tempcheq.delete;
      Templinea.BatchMove(Tlinea, batAppend);
      TempCheq.BatchMove(TablaCheque, batAppend);
      cartera;
      TempCheq.SetRange(['E'], ['E']);
      Datalinea.Dataset:= TempLinea;
      datalinea.AutoEdit := true;
      DataCheque.Dataset := TempCheq;
      datacheque.AutoEdit := true;
      GLinea.Readonly := False;
      PanelHace.visible := True;
      Listarti.LookupDisplay := 'codiart;descripart;StockAct';
      Listarti.enabled := True;
      Panelarti.Visible := true;
      Grilla.Enabled := False;
      solapas.PageIndex := 1;
      libro.pageindex := 0;
      Modisql;
end;

procedure TFormCompra.BotoncancelarClick(Sender: TObject);
begin
      TCompra.Cancel;
end;

procedure TFormCompra.TemplineaCalcFields(DataSet: TDataset);
begin
     TempLineaValor.Value := TempLineaCantidad.value * TemplineaPunit.Value;
end;

procedure TFormCompra.TemplineaNewRecord(DataSet: TDataset);
begin
     TempLineaCodigoFac.value := TCompraCodigo.value;
end;

procedure TFormCompra.tmpCheNewRecord(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     TempCheqEnt_car.value := 'E';
     TempCheqT_destino.value := 'C';
     TempcheqDestino.value := TCompraCodigo.value;
end;

Procedure TFormCompra.Cartera;
{se encarga de agregar a tempcheques los cheques que est�n en cartera}
begin
      Tablacheque.DisableControls;
      DataCheque.enabled := False;
      Tablacheque.MasterSource := nil;
      Tablacheque.first;
      TempCheq.tag := 1;
      while not tablacheque.eof do
      begin
           if TablaChequeEnt_car.value = 'C' then
                TempCheq.InsertRecord(
                [Tablachequenumero.value,TablachequeFecheque.value,
                 TablachequeImporcheq.value,TablachequeBanco.value,
                 TablachequeEnt_car.value,TablachequeT_destino.value,
                 TablachequeDestino.value]);
           Tablacheque.next;
      end;
      TempCheq.tag := 0;
      TablaCheque.MasterSource := DataCompra;
      DataCheque.enabled := true;
      Tablacheque.enableControls;
End;

Procedure TFormCompra.Modisql;
{este se encarga de modificar la consulta Sumador}
Begin
      Sumador.Close;
      Sumador.SQL.Clear;
      if sumador.tag = 0 then
         begin
            sumador.tag := 1;
            Sumador.DataSource := DataCheque;
            Sumador.SQL.Add('SELECT sum(imporcheq)');
            Sumador.SQL.Add('FROM "TmpCheq.DB"');
            Sumador.SQL.Add('WHERE (T_destino = "C")');
         End
      else
         Begin
            Sumador.tag := 0;
            Sumador.DataSource := DataCompra;
            Sumador.SQL.Add('SELECT sum(imporcheq)');
            Sumador.SQL.Add('FROM "Cheques.DB"');
            Sumador.SQL.Add('WHERE (T_destino = "C") and destino = :Codigo');
         End;
      Sumador.Open;

End;

procedure TFormCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if libro.Pageindex = 0 then TCompra.cancel;
     Sumador.close;
end;

procedure TFormCompra.tmpCheAfterPost(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     DBEefectivo.enabled := true;
     Gcheques.visible := true;
     PanelNuevo.enabled := False;
     PanelNuevo.visible := False;
end;

procedure TFormCompra.tmpCheBeforeInsert(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     DBEefectivo.enabled := false;
     Gcheques.visible := False;
     Panelnuevo.enabled := true;
     PanelNuevo.visible := True;
end;

procedure TFormCompra.TCompraBeforePost(DataSet: TDataset);
begin
     if (TCompraTipo.Value = 'NC A') and
        (TCompraContado.value = False) then
        raise Exception.Create('Las Notas de cr�dito son siempre de pago contado');

     if TCompraFactunum.Value = '0000-00000000'  then
        raise Exception.Create('Ingrese un n� correcto de factura');

     if (TCompraContado.value = true) and not (TCompraTPagado.value = TCompraTotal.value) then
        Raise Exception.create('Cuando el pago se realiza al contado, hay que asegurarse que coincidan los totales');

     if (TCompraContado.value = false) then TCompraEfectivo.value := 0;

     if (TcompraContado.value = true) and not (TCompraTipo.Value = 'NC A') then
        TCompraCancelado.value := true
     else
         TCompraCancelado.value := false;
     Sumador.close;
end;

procedure TFormCompra.TCompraAfterPost(DataSet: TDataset);
begin
     Tempcheq.disableControls;
     TempLinea.disablecontrols;
     ModiArti;
     Grabalinea;
     if  TCompraContado.value = false then
        begin
          Tempcheq.first;
          while not tempcheq.eof do
                QuitaClick(nil);
                Tempcheq.next;
        end
     else
     grabaCheques;
     libro.pageindex := 1;
     Solapas.PageIndex := 0;
     Listarti.enabled := False;
     PanelHace.visible := false;
     Listarti.LookupDisplay := 'descripart';
     modisql;
     tempcheq.CancelRange ;
     Tempcheq.EnableControls;
     Panelarti.Visible := false;
     Grilla.Enabled := True;
     TempLinea.enableControls;
     TCompra.IndexName := indice_pos;
end;

procedure TFormCompra.tmpCheAfterCancel(DataSet: TDataset);
begin
     Gcheques.visible := TRUE;
     DBEefectivo.enabled := true;
     PanelNuevo.enabled := False;
     PanelNuevo.visible := False;
end;

procedure TFormCompra.TCompraEfectivoValidate(Sender: TField);
begin
     TCompraTPagado.value := SumadorCampo.value + TCompraEfectivo.value;
end;

procedure TFormCompra.TCompraAfterCancel(DataSet: TDataset);
begin
      TCompra.disableControls;
      if tempcheq.State = dsInsert then Tempcheq.cancel;
      if agrega.tag = 1 then
         begin
              agrega.click;
              agrega.down := false;
         end;
      libro.pageindex := 1;
      Solapas.PageIndex := 0;
      TCompra.enableControls;
      Datalinea.Dataset:= TLinea;
      datalinea.AutoEdit := false;
      DataCheque.Dataset := TablaCheque;
      datacheque.AutoEdit := false;
      Listarti.LookupDisplay := 'descripart';
      Listarti.enabled := False;
      PanelHace.visible := false;
      Panelarti.Visible := false;
      Grilla.Enabled := True;
      Modisql;
      Tempcheq.CancelRange ;
      TCompra.IndexName := indice_pos;
end;

procedure TFormCompra.TCompraimpuestoValidate(Sender: TField);
var
  Temp, TempTotal: double;
  valStr: string;
  code: integer;
begin
    TempTotal := (TCompraSubto.value - TCompraBonifica.value) * 1.21
              + TCompraImpuesto.value;
    str(Temptotal:8:2,Valstr);
    Val(Valstr, temp,code);
    TCompraTotal.Value := Temp;
end;

procedure TFormCompra.TemplineaAfterPost(DataSet: TDataset);
var
  Temp, TempTotal, TempBoni: double;
  PrevRecord: TBookmark;
  valStr: string;
  code: integer;
begin
  PrevRecord := Templinea.GetBookmark;
  try
    TempLinea.DisableControls;
    TempLinea.First;
    TempTotal := 0;
    TempBoni := 0;
    while not TempLinea.EOF do
    begin
      TempTotal := TempTotal + TempLineavalor.Value;
      TempBoni := TempBoni + TempLineaValor.Value *
               TempLineaBonifica.Value / 100 ;
      TempLinea.Next;
    end;
    TCompraSubto.Value := TempTotal;
    TCompraBonifica.Value := TempBoni;
    TCompraivafact.Value := (TempTotal - TempBoni) * 0.21;
    TempTotal := ((Temptotal - TempBoni) * 1.21 + TCompraImpuesto.value);
    str(Temptotal:8:2,Valstr);
    Val(Valstr, temp,code);
    TCompraTotal.Value := Temp;
  finally
     TempLinea.EnableControls;
     if PrevRecord <> nil then
     begin
       TempLinea.GoToBookmark(PrevRecord);
       TempLinea.FreeBookmark(PrevRecord);
     end;
  end;

end;

Procedure TFormCompra.GrabaLinea;
begin
      with TLinea do
      begin
            close;
            open;
            first;
            while not eof do delete;
            IndexFieldNames := 'Nlinea';
            Batchmove(Templinea, BatAppend);
            IndexFieldNames := 'CodigoFac';
            close;
            open;
      end;
      templinea.First ;
      while not templinea.Eof do templinea.delete;
      Datalinea.Dataset:= TLinea;
      datalinea.AutoEdit := false;
end;

Procedure TFormCompra.Grabacheques;
Begin
     tempcheq.cancelRange;
     Tempcheq.first;
      with tablacheque do
      begin
           close;
           readonly := false;
           open;
           MasterSource := nil;
           IndexfieldNames := 'banco;numero';
           while not Tempcheq.eof do
           begin
                if findKey([TempcheqBanco.value,TempCheqNumero.value]) then
                   begin
                   if TablachequeDestino.value <> TempcheqDestino.value then
                      begin
                        edit;
                        TablachequeEnt_car.value := TempcheqEnt_car.value;
                        TablachequeT_destino.value := TempcheqT_destino.value;
                        TablachequeDestino.value := TempcheqDestino.value;
                        post;
                      end;
                   end
                else
                    InsertRecord(
                    [Tempcheqnumero.value,TempcheqFecheque.value,
                    TempcheqImporcheq.value,TempcheqBanco.value,
                    TempcheqEnt_car.value,TempcheqT_destino.value,
                    TempcheqDestino.value]);
                Tempcheq.next
           end;

           IndexfieldNames := 'T_destino;Destino';
           MasterSource := DataCompra;
           close;
           readonly := true;
           open;
      end;
      tempcheq.first;
      while not tempcheq.eof do tempcheq.delete;
      DataCheque.Dataset := TablaCheque;
      datacheque.AutoEdit := false;
End;

Procedure TFormCompra.Modiarti;
Begin
     if TCompra.tag = 1 then
     begin
          TLinea.first;
          while not TLinea.eof do
          Begin
               tablarti.findKey([TLineaCodiart.value]);
               Tablarti.edit;
               If (TCompraTipo.Value = 'FA A') or (TCompraTipo.value = 'ND A') then
                  TablartiStockAct.value := TablartiStockAct.value -
                     TLineaCantidad.value
               else
                   TablartiStockAct.value := TablartiStockAct.value +
                    TLineaCantidad.value;
               TLinea.next;
          End;
          TCompra.tag := 0;
     end;
     TempLinea.first;
     while not TempLinea.eof do
     Begin
          Tablarti.FindKey([TempLineaCodiart.value]);
          Tablarti.edit;
          If (TCompraTipo.Value = 'FA A') or (TCompraTipo.value = 'ND A') then
             TablartiStockAct.value := TablartiStockAct.value +
              TempLineaCantidad.value
          else
             TablartiStockAct.value := TablartiStockAct.value -
              TempLineaCantidad.value;
          TempLinea.next;
     End;
End;

procedure TFormCompra.tmpCheBeforePost(DataSet: TDataset);
begin
     if tempcheq.tag = 1 then exit;
     {ahora se busca el nuevo cheque en la base Cheques}
     Tablacheque.MasterSource := nil;
     TablaCheque.IndexFieldNames := 'banco;numero';
     if Tablacheque.FindKey([TempcheqBanco.value, TempcheqNumero.value]) then
        Raise exception.Create('ya existe este cheque');
     Tablacheque.IndexFieldNames := 'T_destino;Destino';
     TablaCheque.MasterSource := DataCompra;
end;

procedure TFormCompra.TCompraBeforeDelete(DataSet: TDataset);
begin
TablaCheque.first;
with Tablacheque do
     while not eof do
     begin
          if TablaChequeCodifactu.value > 0 then
             begin
                  edit;
                  TablaChequeEnt_car.value := 'C';
                  TablachequeT_destino.value := #0;
                  TablachequeDestino.value := 0;
                  post;
             end
          else
              delete;
          next;
     end;
with TLinea do
begin
     first;
     while not TLinea.eof do
     Begin
          tablarti.findKey([TLineaCodiart.value]);
          Tablarti.edit;
          If (TCompraTipo.Value = 'FA A') or (TCompraTipo.value = 'ND A') then
             TablartiStockAct.value := TablartiStockAct.value -
                               TLineaCantidad.value
          else
              TablartiStockAct.value := TablartiStockAct.value +
                                TLineaCantidad.value;
          Tablarti.post;
          next;
     End;
     first;
     while not eof do delete;
End;
end;

procedure TFormCompra.ListaProvEnter(Sender: TObject);
begin
     TablaProve.IndexfieldNames := 'Nomprov';
end;

procedure TFormCompra.ListaProvExit(Sender: TObject);
begin
     TablaProve.IndexfieldNames := 'Codiprov';
end;

procedure TFormCompra.ListaProvKeyPress(Sender: TObject; var Key: Char);
begin
     TablaProve.FindNearest([key]);
end;

procedure TFormCompra.DataSumaDataChange(Sender: TObject; Field: TField);
begin
     if (TCompra.state = dsedit) or (TCompra.state =dsinsert) then
     TCompraTPagado.value := SumadorCampo.value + TCompraEfectivo.value;
     Sumacheques.caption := '$ ' +  floattostr(SumadorCampo.value);
end;

procedure TFormCompra.IndiceChange(Sender: TObject);
begin
     if Indice.Itemindex = 0 then
        begin
             Tcompra.IndexFieldNames := 'Codigo';
             Buscodigo.enabled:= true;
             Buscaprove.enabled := False;
             Buscafac.enabled := False;
             Busca3.enabled := False;
        end
     else
        Begin
             Tcompra.IndexFieldNames := 'codigoprov;Tipo;factunum';
             Buscodigo.enabled:= False;
             Buscaprove.enabled := true;
             Buscafac.enabled := true;
             Busca3.enabled := true;
        end
end;

procedure TFormCompra.RadioPagoChange(Sender: TObject);
begin
   if Radiopago.ItemIndex = 1 then
      begin
         Tablacheque.disableControls;
         Panelpagos.Visible :=False;
         Gcheques.Visible := False;
         if (TCompra.state = dsedit) or (TCompra.state = dsinsert) then
         TCompraEfectivo.Clear;
      End
    else
      Begin
         Tablacheque.enableControls;
         Panelpagos.Visible :=True;
         Gcheques.Visible := true;
      End;

end;

procedure TFormCompra.BuscodigoChange(Sender: TObject);
begin
        TCompra.FindNearest([Buscodigo.text]);
end;

procedure TFormCompra.BuscaproveChange(Sender: TObject);
var s: string;
begin
        s:= copy(Buscaprove.text,34,3);
         TCompra.Findnearest([s, Buscafac.Text, Busca3.text]);
end;

procedure TFormCompra.BuscodigoKeyPress(Sender: TObject; var Key: Char);
begin
     if (Indice.Itemindex = 0) and (key > '9') then key := #0;
end;

procedure TFormCompra.FormCreate(Sender: TObject);
begin
        Indice.Itemindex:= 0;
        with tablaprove do
        begin
                first;
                while not eof do
                begin
                        buscaprove.Items.add(Format('%-30s',[tablaprovenomprov.value])
                         + ' ; ' + floattostr(tablaprovecodiprov.value));
                        next;
                end;
        end;
end;

procedure TFormCompra.editIvaExit(Sender: TObject);
begin
        TCompratotal.Value := ((TComprasubto.Value - TComprabonifica.Value)
            + TCompraivafact.Value  + TCompraImpuesto.value)
end;

end.
