unit Venta;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, ExtCtrls, Mask, TabNotBk, DBTables, Grids,
  DBGrids, DBLookup, Buttons, Dialogs, Menus,ComCtrls;


type
  TFormVenta = class(TForm)
    solapas: TTabbedNotebook;
    Grilla: TDBGrid;
    invisible: TPanel;
    TVenta: TTable;
    DataVenta: TDataSource;
    Tablarti: TTable;
    Tablarticodiart: TStringField;
    Tablartidescripart: TStringField;
    Datarti: TDataSource;
    TLinea: TTable;
    TLineaCodigofac: TIntegerField;
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
    Bancos: TTable;
    DataBancos: TDataSource;
    Dataclie: TDataSource;
    Clientes: TTable;
    TablaCheque: TTable;
    TablaChequenumero: TStringField;
    TablaChequefecheque: TDateField;
    TablaChequeimporcheq: TFloatField;
    TablaChequeent_car: TStringField;
    TablaChequeT_destino: TStringField;
    tempCheq: TTable;
    tempCheqnumero: TStringField;
    tempCheqfecheque: TDateField;
    tempCheqimporcheq: TFloatField;
    tempCheqent_car: TStringField;
    tempCheqT_destino: TStringField;
    DataCheque: TDataSource;
    GCheques: TPanel;
    GrillaCheques: TDBGrid;
    Tablartistockact: TFloatField;
    ClientesNombre: TStringField;
    TVentaTipo: TStringField;
    TVentafactunum: TStringField;
    TVentafechafactu: TDateField;
    TVentaContado: TBooleanField;
    TVentaCancelado: TBooleanField;
    TVentasubto: TCurrencyField;
    TVentabonifica: TCurrencyField;
    TVentaivafact: TCurrencyField;
    TVentatotal: TCurrencyField;
    TVentaEfectivo: TCurrencyField;
    Tablartipventa: TFloatField;
    ClientesIva: TStringField;
    tempCheqVoR: TStringField;
    TablaChequeVoR: TStringField;
    TVentaV: TStringField;
    PanelPagos: TPanel;
    EtiquetaTotal: TLabel;
    DBPAGADO: TDBText;
    EtiqEfectivo: TLabel;
    LbCheques: TLabel;
    DBEefectivo: TDBEdit;
    TVentaTPagado: TCurrencyField;
    ClientesCuit: TStringField;
    TVentaCodigo: TFloatField;
    ClientesCodigo: TFloatField;
    Tablartiprovedor: TFloatField;
    TablaChequeDestino: TFloatField;
    TemplineaCodigofac: TFloatField;
    tempCheqDestino: TFloatField;
    TVentaCodcli: TFloatField;
    TablaChequebanco: TFloatField;
    TablaChequecodifactu: TFloatField;
    tempCheqcodifactu: TFloatField;
    libro: TNotebook;
    Botonaceptar: TButton;
    Botoncancelar: TButton;
    PanelProve: TPanel;
    DBcodigo: TDBText;
    Bevel1: TBevel;
    Tipos: TDBComboBox;
    Listaclie: TDBLookupCombo;
    Editfactunum: TDBEdit;
    DBFecha: TDBEdit;
    DBNavegador: TDBNavigator;
    indice: TComboBox;
    Buscodigo: TEdit;
    buscafac: TComboBox;
    buscanum: TMaskEdit;
    tempCheqbanco: TFloatField;
    TVentaNcliente: TStringField;
    TLineaNarti: TStringField;
    TemplineaNarti: TStringField;
    DBEdit5: TDBEdit;
    TVentaCheques: TCurrencyField;
    tempCheqnbanco: TStringField;
    TablaChequenbanco: TStringField;
    Panelgrilla: TPanel;
    GLinea: TDBGrid;
    PanelTotales: TPanel;
    EtiqSubto: TLabel;
    EtiqBoni: TLabel;
    EtiqIva: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panelarti: TPanel;
    Listarti: TDBLookupCombo;
    RadioPago: TDBRadioGroup;
    TLineaNlinea: TAutoIncField;
    Splitter1: TSplitter;
    procedure TLineaCalcFields(DataSet: TDataset);
    procedure ListartiExit(Sender: TObject);
    procedure ListartiKeyPress(Sender: TObject; var Key: Char);
    procedure TVentaNewRecord(DataSet: TDataset);
    procedure TVentaBeforeInsert(DataSet: TDataset);
    procedure RadioPagoClick(Sender: TObject);
    procedure BotonaceptarClick(Sender: TObject);
    procedure TVentaBeforeEdit(DataSet: TDataset);
    procedure BotoncancelarClick(Sender: TObject);
    procedure TemplineaCalcFields(DataSet: TDataset);
    procedure TemplineaNewRecord(DataSet: TDataset);
    procedure tempCheqNewRecord(DataSet: TDataset);
    procedure tempCheqAfterPost(DataSet: TDataset);
    procedure TVentaBeforePost(DataSet: TDataset);
    procedure TVentaAfterPost(DataSet: TDataset);
    procedure VentaEfectivoValidate(Sender: TField);
    procedure TVentaAfterCancel(DataSet: TDataset);
    procedure TemplineaAfterPost(DataSet: TDataset);
    Procedure Grabalinea;
    Procedure GrabaCheques;
    Procedure ModiArti;
    procedure ListaclieExit(Sender: TObject);
    Procedure Proximo;
    procedure TiposExit(Sender: TObject);
    procedure TVentaBeforeDelete(DataSet: TDataset);
    procedure ListaclieEnter(Sender: TObject);
    procedure ListaclieKeyPress(Sender: TObject; var Key: Char);
    procedure indiceChange(Sender: TObject);
    procedure BuscodigoChange(Sender: TObject);
    procedure BuscodigoKeyPress(Sender: TObject; var Key: Char);
    procedure TVentaEfectivoValidate(Sender: TField);
    procedure buscafacChange(Sender: TObject);
    procedure tempCheqBeforePost(DataSet: TDataSet);

  private
    { private declarations }

  public
    { public declarations }
  end;

var
  FormVenta: TFormVenta;
  Final: Extended;
  NumProximo : array[0..5] of string;
  el_indice : string;

implementation

{$R *.DFM}


procedure TFormVenta.TLineaCalcFields(DataSet: TDataset);
begin
     TLineaValor.Value := TLineaCantidad.value * TlineaPunit.Value;
end;

procedure TFormVenta.ListartiExit(Sender: TObject);
begin
     if (Templinea.state = dsinsert) or (templinea.state = dsedit) then
     begin
          if Tablartistockact.value < TemplineaCantidad.value then
             raise exception.create('el stock actual es menor a la cantidad especificada');
          if (ClientesIva.value = 'RI') or (clientesIva.value = 'RNI') then
             TemplineaPunit.Value := TablartiPVenta.Value
          else
             TemplineaPunit.Value := TablartiPVenta.Value * 1.21;
          Glinea.setFocus;
     end;
end;

procedure TFormVenta.ListartiKeyPress(Sender: TObject; var Key: Char);
begin
         Tablarti.FindNearest([UpperCase(key)]);
         Listarti.Value := Tablarticodiart.Value ;
end;

procedure TFormVenta.TVentaNewRecord(DataSet: TDataset);
begin
     TVentaCodigo.value := final + 1;
     TVentaV.value := 'V';
     TVentaContado.Value := true;
end;

procedure TFormVenta.TVentaBeforeInsert(DataSet: TDataset);
begin
      Libro.ActivePage := 'Default';
      el_indice := TVenta.IndexFieldNames ;
      TVenta.IndexFieldNames := 'Codigo';
       {este procedimiento calcula el código siguiente de factura,
        esto luego es utilizado para relacionar las demás tablas}
      TVenta.Last;
      final := TVentaCodigo.value;
       {ahora se desactivan los botones de movimiento y se activan los de
        'aceptar' y 'cancelar', y se transpasa templinea y tempcheques
        el control }
      TVenta.IndexFieldNames := 'Tipo;factunum';
      Proximo;
      Tipos.Items.clear;
      templinea.First ;
      while not templinea.Eof do templinea.delete;
      tempcheq.first;
      while not tempcheq.eof do tempcheq.delete;
      Datalinea.Dataset:= TempLinea;
      DataCheque.Dataset := TempCheq;
      GLinea.readOnly := False;
      PanelProve.enabled := true;
      panelarti.Visible := true;
      Grilla.Enabled := false;
      Solapas.Pageindex := 1;
      dbfecha.SetFocus;
end;

procedure TFormVenta.RadioPagoClick(Sender: TObject);
begin
   if Radiopago.ItemIndex = 1 then
      begin
         Tablacheque.disableControls;
         Gcheques.Visible := False;
      End
    else
      Begin
         Tablacheque.enableControls;
         Gcheques.Visible := true;
      End;

end;

procedure TFormVenta.BotonaceptarClick(Sender: TObject);
Begin
     try
          TVenta.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe esta Venta. Revise los datos');
           on EdatabaseError do
              Raise exception.create('datos incompletos de Venta');
     end;
end;

procedure TFormVenta.TVentaBeforeEdit(DataSet: TDataset);
begin
{se activan los botones 'aceptar' y 'cancelar', y se transpasan
    los datos desde línea a templinea y desde cheques a tempcheques,
    pasando luego el control a éstos. Luego se desactiva el atributo
    de sólo lectura de grilla linea y se modifica la consulta sumador }
      TVenta.tag := 1;
      templinea.First ;
      while not templinea.Eof do templinea.delete;
      tempcheq.first;
      while not tempcheq.eof do tempcheq.delete;

      Templinea.BatchMove(Tlinea, batAppend);
      TempCheq.BatchMove(TablaCheque, batAppend);
      Datalinea.Dataset:= TempLinea;
      DataCheque.Dataset := TempCheq;
      GLinea.Readonly := False;
      PanelProve.enabled := true;
      libro.pageindex := 0;
      panelarti.Visible := true;
      el_indice := TVenta.IndexFieldNames ;
      Solapas.Pageindex := 1;
      dbfecha.SetFocus;
end;

procedure TFormVenta.BotoncancelarClick(Sender: TObject);
begin
      TVenta.Cancel;
end;

procedure TFormVenta.TemplineaCalcFields(DataSet: TDataset);
begin
     TempLineaValor.Value := TempLineaCantidad.value * TemplineaPunit.Value;
end;

procedure TFormVenta.TemplineaNewRecord(DataSet: TDataset);
begin
     TempLineaCodigoFac.value := TVentaCodigo.value;
end;

procedure TFormVenta.tempCheqNewRecord(DataSet: TDataset);
begin
     TempCheqEnt_car.value := 'C';
     TempCheqVoR.value := 'V';
     TempcheqCodifactu.value := TVentaCodigo.value;
end;

procedure TFormVenta.tempCheqAfterPost(DataSet: TDataset);
begin
        with tempcheq do begin
                first;
                TVentaCheques.Value := 0;
                while not eof do begin
                        TVentaCheques.Value := TVentaCheques.value
                                +tempCheqimporcheq.Value ;
                        next;
                end;
                
        end;
        TventaTPagado.Value := TVentaCheques.Value + TVentaEfectivo.Value ;
end;

procedure TFormVenta.TVentaBeforePost(DataSet: TDataset);
begin
     if ((TVentaTipo.Value = 'NC A') or (TVentaTipo.value = 'NC B')) and
        (TVentaContado.value = False) then
        raise Exception.Create('Las Notas de crédito son siempre de pago contado');

     if TVentaFactunum.Value = '0000-00000000'  then
        raise Exception.Create('Ingrese un nº correcto de factura');

     if (TVentaContado.value = true) and (TVentaTPagado.value - TVentaTotal.value >= 0.02) then
        Raise Exception.create('Cuando el pago se realiza al contado, hay que asegurarse que coincidan los totales');


     if (TVentaContado.value = false) then TVentaEfectivo.value := 0;

     If (TventaContado.value = true) AND not ((TVentaTipo.Value = 'NC A')
      or (TVentaTipo.value = 'NC B')) then
        TVentaCancelado.value := True
     else
         TventaCancelado.value := False;
end;

procedure TFormVenta.TVentaAfterPost(DataSet: TDataset);
begin
     Tempcheq.disableControls;
     TempLinea.disablecontrols;
     ModiArti;
     Grabalinea;
     GrabaCheques;
     indice.visible := True;
     libro.pageindex := 1;
     PanelProve.enabled := False;
     panelarti.Visible := false;
     Grilla.Enabled := true;
     tempcheq.EnableControls ;
     TempLinea.enableControls;
     TVenta.IndexFieldNames := el_indice;
     Solapas.PageIndex := 0;             
end;

procedure TFormVenta.VentaEfectivoValidate(Sender: TField);
begin
     Tempcheq.refresh;
end;

procedure TFormVenta.TVentaAfterCancel(DataSet: TDataset);
begin
      TVenta.disableControls;
      if tempcheq.State = dsInsert then Tempcheq.cancel;
      indice.visible := True;
      libro.pageindex := 1;
      Datalinea.Dataset:= TLinea;
      DataCheque.Dataset := TablaCheque;
      GLinea.Readonly := True;
      PanelProve.enabled := false;
      Panelarti.Visible := false;
      TVenta.enableControls;
      TVenta.IndexFieldNames := el_indice;
      Grilla.Enabled := true;

end;

procedure TFormVenta.TemplineaAfterPost(DataSet: TDataset);
var
  Temp, TempTotal, TempBoni: Extended;
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
    TVentaSubto.Value := TempTotal;
    TVentaBonifica.Value := TempBoni;
    if ClientesIva.value = 'RI' then
       begin
            TVentaivafact.Value := (TempTotal - TempBoni) * 0.21;
            TempTotal := ((Temptotal - TempBoni) * (1.21));
       end;
    if ClientesIva.value = 'RNI' then
       begin
            TVentaivafact.Value := (TempTotal - TempBoni) * 0.35;
            TempTotal := ((Temptotal - TempBoni) * (1.35));
       end;
    if (ClientesIva.value <> 'RI') and  (clientesIva.value <> 'RNI') then
       begin
            TVentaivafact.Clear;
            TempTotal := Temptotal - TempBoni;
       end;

    str(Temptotal:8:2,Valstr);
    Val(Valstr, temp,code);
    TVentaTotal.Value := Temp;
  finally
     TempLinea.EnableControls;
     if PrevRecord <> nil then
     with Templinea do
     begin
          GoToBookmark(PrevRecord);
          FreeBookmark(PrevRecord);
     end;
  end;

end;

Procedure TFormVenta.GrabaLinea;
begin {borra los registros originales, y agrega los nuevos}
      with TLinea do
      begin
            close;
            readOnly := false;
            open;
            first;
            while not eof do delete;
            IndexFieldNames := 'Nlinea';
            Batchmove(Templinea, BatAppend);
            IndexFieldNames := 'CodigoFac';
            close;
            Readonly := true;
            open;
      end;
      Datalinea.Dataset:= TLinea;
end;

Procedure TFormVenta.Grabacheques;
Begin {borra los cheques originales, y agrega los nuevos}
      with tablacheque do
      begin
           close;
           ReadOnly := false;
           open;
           first;
           while not eof do delete;

           if TVentaContado.value = true then begin; {en caso de que la forma de
           pago sea contado, graba los cheques}

                BatchMove(TempCheq, BatAppend);
                close;
                readonly := true;
                open;
           end;
      end;
      DataCheque.Dataset := TablaCheque;
End;

Procedure TFormVenta.Modiarti;
Begin
     {esta parte actúa cuando estamos modificando, lo que hace es restarle a
           los artículos que se modifican la cantidad original}
     if TVenta.tag = 1 then
     begin
          TLinea.first;
          while not TLinea.eof do
          Begin
               tablarti.findKey([TLineaCodiart.value]);
               Tablarti.edit;
               If (TVentaTipo.Value = 'NC A') or (TVentaTipo.value = 'NC B')then
                    TablartiStockAct.value := TablartiStockAct.value -
                     TLineaCantidad.value
                else
                    TablartiStockAct.value := TablartiStockAct.value +
                     TLineaCantidad.value;
               TLinea.next;
          End;
          TVenta.tag := 0;
     end;

     {ahora se agregan las nuevas cantidades a los articulos que se modifican}
     TempLinea.first;
     while not TempLinea.eof do
     Begin
          Tablarti.FindKey([TempLineaCodiart.value]);
          Tablarti.edit;
          If (TVentaTipo.Value = 'NC A') or (TVentaTipo.value = 'NC B') then
                  TablartiStockAct.value := TablartiStockAct.value +
                                         TempLineaCantidad.value
          else
             TablartiStockAct.value := TablartiStockAct.value -
              TempLineaCantidad.value;

            {en caso de haberse modificado el precio de venta, se lo actualiza}
          if TablartiPventa.value <> TempLineaPunit.value  then
              TablartiPventa.value := TempLineaPunit.value;

          TempLinea.next;
     End;
End;

procedure TFormVenta.ListaclieExit(Sender: TObject);
begin
     clientes.indexfieldNames := 'codigo';
     with tipos do
     begin
          Items.Clear;
          if (ClientesIva.value = 'RI') or (clientesIva.value = 'RNI') then
          BEGIN
               Items.Add('FA A');
               Items.Add('ND A');
               Items.Add('NC A');
          END
          ELSE
          BEGIN
               Items.Add('FA B');
               Items.Add('ND B');
               Items.Add('NC B');
          END;
     end;
     Tipos.ItemIndex := 0;
     TVentaTipo.Value := Tipos.Items[Tipos.Itemindex];
     TiposExit(tipos);

end;

Procedure TFormVenta.Proximo;
var
   masuno,n,Code:integer;
   cadenaNum,Parte:string;
Begin
     with TVenta do
     begin
          DisableControls;
          for n := 0 to 5 do
          begin
               SetRange([Tipos.Items[n]],[Tipos.Items[n]]);

               if TVentatipo.value = '' then
               begin
                    Numproximo[n] := '0001-00000001';
                    continue;
                    end;

               last;
               CadenaNum := Copy(TVentaFactunum.value, 6, 8);
               Val(CadenaNum, masuno, Code);
               Inc(masuno);
               str(masuno:8,Parte);
               while Pos(' ', Parte) > 0 do Parte[Pos(' ', Parte)] := '0';
               NumProximo[n] := '0001-' + Parte;
          end;
          CancelRange;
          EnableControls;
     end;
End;

procedure TFormVenta.TiposExit(Sender: TObject);
var
   selecto:string;
   posicion: integer;
begin
if (Tventa.state = dsEdit) or (TVentaTipo.value = '') then exit;
     selecto:= TVentaTipo.value;
     if selecto = 'FA A' then
          posicion := 0;
     if selecto = 'ND A' then
          posicion := 1;
     if selecto = 'NC A' then
          posicion := 2;
     if selecto = 'FA B' then
          posicion := 3;
     if selecto = 'ND B' then
          posicion := 4;
     if selecto = 'NC B' then
          posicion := 5;
     TVentaFactunum.value := NumProximo[posicion];
end;

procedure TFormVenta.TVentaBeforeDelete(DataSet: TDataset);
begin
if MessageDlg('Borrando este venta se borran también sus cheques, y pueden generarse problemas ¿desea borrar?',
    mtInformation, mbOkCancel, 0) = MrCancel then raise exception.create('se evitó el borrado');

with Tablacheque do
begin
     active := false;
     readonly := false;
     active := true;
     first;
     while not eof do delete;
     active := false;
     readonly := true;
     active := true;

end;

with TLinea do
begin
     active := false;
     readonly := false;
     active := true;

     first;
     while not eof do
     Begin
          tablarti.findKey([TLineaCodiart.value]);
          Tablarti.edit;
          If (TVentaTipo.Value = 'NC A') or (TVentaTipo.value = 'NC B')then
             TablartiStockAct.value := TablartiStockAct.value - TLineaCantidad.value
          else
              TablartiStockAct.value := TablartiStockAct.value + TLineaCantidad.value;
          next;
     End;
     first;
     while not eof do delete;
     active := false;
     readonly := true;
     active := true;

End;

end;

procedure TFormVenta.ListaclieEnter(Sender: TObject);
begin
     Clientes.IndexFieldNames := 'nombre';
end;

procedure TFormVenta.ListaclieKeyPress(Sender: TObject; var Key: Char);
begin
     clientes.findNearest([key]);
     listaclie.DisplayValue := clientesnombre.Value ;
end;

procedure TFormVenta.indiceChange(Sender: TObject);
begin
     if indice.Itemindex = 0 then
        Begin
             TVenta.IndexFieldNames := 'Codigo';
             Buscodigo.enabled := true;
             Buscafac.enabled := false;
             Buscanum.enabled:= false;
        end
     else
        begin
             TVenta.IndexFieldNames := 'Tipo;factunum';
             Buscodigo.enabled := false;
             Buscafac.enabled := true;
             Buscanum.enabled:= true;
        end;
end;

procedure TFormVenta.BuscodigoChange(Sender: TObject);
begin
        TVenta.FindNearest([Buscodigo.text]);
end;

procedure TFormVenta.BuscodigoKeyPress(Sender: TObject; var Key: Char);
begin
     if (Indice.Itemindex = 0) and (key > '9') then key := #0;
end;

procedure TFormVenta.TVentaEfectivoValidate(Sender: TField);
begin
        TventaTPagado.Value := TVentaCheques.Value + TVentaEfectivo.Value ;

end;

procedure TFormVenta.buscafacChange(Sender: TObject);
begin
        Tventa.Findnearest([Buscafac.Text, Buscanum.text]);

end;

procedure TFormVenta.tempCheqBeforePost(DataSet: TDataSet);
begin
    { Try
        Tempcheq.post;
     except
           On EdbEngineError do
              Raise exception.create('ya existe este cheque');
           on EdatabaseError do
              Raise exception.create('datos incompletos');
     end;}

end;

end.
