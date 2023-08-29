unit Pdatos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList, ExtCtrls;

type
  TDatos = class(TDataModule)
    Usuarios: TTable;
    Registro: TTable;
    Garantias: TTable;
    Controles: TTable;
    Articulos: TTable;
    Localidades: TTable;
    DataUsu: TDataSource;
    DataReg: TDataSource;
    DataGar: TDataSource;
    DataControles: TDataSource;
    Datarti: TDataSource;
    Dataloca: TDataSource;
    Articuloscodiart: TStringField;
    Articulosdescripart: TStringField;
    Articulosprovedor: TFloatField;
    Articulospunit: TFloatField;
    Articuloscosto: TFloatField;
    Articulosganancia: TFloatField;
    Articulospventa: TFloatField;
    Articulosstockact: TFloatField;
    Articulosstockmin: TFloatField;
    Articulosstockmax: TFloatField;
    Articulosbonifica: TFloatField;
    LocalidadesCodigoPostal: TSmallintField;
    LocalidadesLocalidad: TStringField;
    Localidadesprovincia: TStringField;
    UsuariosCodigo: TFloatField;
    UsuariosNombre: TStringField;
    UsuariosCodigoPostal: TSmallintField;
    UsuariosDireccion: TStringField;
    UsuariosTelefono: TStringField;
    UsuariosCuit: TStringField;
    UsuariosIva: TStringField;
    UsuariosCondicionpago: TBooleanField;
    UsuariosNotas: TMemoField;
    RegistroCodigo: TFloatField;
    RegistroCodvigia: TStringField;
    Registrovehiculo: TStringField;
    GarantiasCodigo: TFloatField;
    Garantiasngarantia: TFloatField;
    Garantiasfecompra: TDateField;
    ControlesOrden: TAutoIncField;
    ControlesCodigo: TFloatField;
    ControlesFecha: TDateField;
    Controlesstemaceite: TStringField;
    Controlesspreaceite: TStringField;
    Controlesstemcilind: TStringField;
    Controlescil1: TStringField;
    Controlescil2: TStringField;
    Controlescil3: TStringField;
    Controlescil4: TStringField;
    Controlescil5: TStringField;
    Controlescil6: TStringField;
    Controlespreairetur: TStringField;
    Controlestablero: TStringField;
    Controlesinstelectr: TStringField;
    Controlesregvolalte: TStringField;
    Controlesfuncionami: TStringField;
    Controlesobservigia: TStringField;
    ControlesProxctrl: TDateField;
    Timer1: TTimer;
    Databus: TDataSource;
    Busquedas: TTable;
    BusquedasCodigo: TFloatField;
    BusquedasNombre: TStringField;
    BusquedasCodigoPostal: TSmallintField;
    BusquedasLocalidad: TStringField;
    BusquedasCodiart: TStringField;
    BusquedasDescripart: TStringField;
    RegistroNequipo: TStringField;
    UsuariosnLoca: TStringField;
    RegistroComprador: TFloatField;
    Informe: TTable;
    DataInfo: TDataSource;
    InformeOrden: TAutoIncField;
    InformeFecha: TDateField;
    InformeNombre: TStringField;
    InformeCodvigia: TStringField;
    InformeVehiculo: TStringField;
    InformeMes: TFloatField;
    BusquedasFecha: TDateField;
    procedure UsuariosAfterScroll(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure ArticulospunitValidate(Sender: TField);
    procedure ArticuloscostoValidate(Sender: TField);
    procedure ControlesNewRecord(DataSet: TDataSet);
    procedure UsuariosBeforeInsert(DataSet: TDataSet);
    procedure UsuariosNewRecord(DataSet: TDataSet);
    procedure RegistroBeforeInsert(DataSet: TDataSet);
    procedure RegistroNewRecord(DataSet: TDataSet);
    procedure RegistroAfterPost(DataSet: TDataSet);
    procedure LocalidadesBeforeInsert(DataSet: TDataSet);
    procedure LocalidadesAfterPost(DataSet: TDataSet);
    procedure ArticulosBeforeInsert(DataSet: TDataSet);
    procedure ArticulosAfterCancel(DataSet: TDataSet);
    procedure RegistroAfterCancel(DataSet: TDataSet);
    procedure GarantiasNewRecord(DataSet: TDataSet);
    procedure GarantiasAfterPost(DataSet: TDataSet);
    procedure GarantiasAfterCancel(DataSet: TDataSet);
    procedure ControlesAfterPost(DataSet: TDataSet);
    procedure ControlesAfterCancel(DataSet: TDataSet);
    procedure actualiza;
    procedure InformeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datos: TDatos;
  proxi: double;
  Nombreindice : string;
  elmes, elanio, eldia, hoymes, hoydia, hoyanio : word;

implementation

uses Ventana;

{$R *.DFM}

procedure TDatos.UsuariosAfterScroll(DataSet: TDataSet);
begin
        if usuarios.Tag = 2 then exit;
       FEquipos.arbol.Items.Clear ;
       if datos.tag = 1 then
       begin
        Timer1.Enabled := False;
        Timer1.Enabled := True;
       end;
end;

procedure TDatos.Timer1Timer(Sender: TObject);
begin
     fequipos.Hacearbol;
     
end;

procedure TDatos.ArticulospunitValidate(Sender: TField);
begin
     Articuloscosto.Value := Articulospunit.value *
        (1 - Articulosbonifica.value /100);
end;

procedure TDatos.ArticuloscostoValidate(Sender: TField);
begin
     Articulospventa.Value := Articuloscosto.Value *
        (1 + Articulosganancia.value /100);
end;

procedure TDatos.ControlesNewRecord(DataSet: TDataSet);
begin
        ControlesCodigo.Value :=  RegistroCodigo.Value;
end;

procedure TDatos.UsuariosBeforeInsert(DataSet: TDataSet);
begin
with Usuarios do begin
      Nombreindice := indexFieldnames;
      indexFieldNames := 'Codigo';
      last;
      proxi := UsuariosCodigo.value +1;
      IndexFieldnames := Nombreindice;
end;
end;

procedure TDatos.UsuariosNewRecord(DataSet: TDataSet);
begin
        UsuariosCodigo.value := proxi;
end;

procedure TDatos.RegistroBeforeInsert(DataSet: TDataSet);
begin
with Registro do begin
      indexFieldNames := 'Codigo';
      last;
      proxi := RegistroCodigo.value +1;
      IndexFieldnames := 'Comprador';
end;
end;

procedure TDatos.RegistroNewRecord(DataSet: TDataSet);
begin
        RegistroCodigo.value := proxi;
        RegistroComprador.value := UsuariosCodigo.value;
end;

procedure TDatos.RegistroAfterPost(DataSet: TDataSet);
begin
with fequipos do begin
     arbol.Items.Clear ;
     Hacearbol;
     if Bregistro.tag = 1 then Bregistro.tag := 0;
     arbol.OnEnter(self);
end;
end;

procedure TDatos.LocalidadesBeforeInsert(DataSet: TDataSet);
begin
        fequipos.VCP.visible := false;
        fequipos.MCP.VISIBLE := TRUE;
end;

procedure TDatos.LocalidadesAfterPost(DataSet: TDataSet);
begin
        fequipos.VCP.visible := true;
        fequipos.MCP.VISIBLE := false;
end;

procedure TDatos.ArticulosBeforeInsert(DataSet: TDataSet);
begin
        fequipos.VART.visible := FALSE;
        fequipos.MART.VISIBLE := TRUE;

end;

procedure TDatos.ArticulosAfterCancel(DataSet: TDataSet);
begin
        fequipos.VART.visible := TRUE;
        fequipos.MART.VISIBLE := FALSE;

end;

procedure TDatos.RegistroAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if BRegistro.tag = 1 then begin
                Bregistro.tag := 0;
                mostrador.ActivePage := 'Usuario';
        end;
end;

end;

procedure TDatos.GarantiasNewRecord(DataSet: TDataSet);
begin
        GarantiasCodigo.Value := RegistroCodigo.Value ;
end;

procedure TDatos.GarantiasAfterPost(DataSet: TDataSet);
begin
with fequipos do begin
     arbol.Items.Clear ;
     Hacearbol;
     if BGarantia.tag = 1 then BGarantia.tag := 0;
     arbol.OnEnter(self);
end;
end;

procedure TDatos.GarantiasAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if Bgarantia.tag = 1 then begin
                BGarantia.tag := 0;
                arbol.OnEnter(self);
        end;
end;
end;

procedure TDatos.ControlesAfterPost(DataSet: TDataSet);
begin
with fequipos do begin
     arbol.Items.Clear ;
     Hacearbol;
     if Bcontrol.tag = 1 then Bcontrol.tag := 0;
     arbol.OnEnter(self);
end
end;

procedure TDatos.ControlesAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if Bcontrol.tag = 1 then begin
                Bcontrol.tag := 0;
                arbol.OnEnter(self);
        end;
end;
end;

procedure TDatos.actualiza; {Recrea la base con los controles mensuales}
var lafecha :TDateTime;
begin
        with informe do begin
                close;
                readonly := false;
                Filtered := false;
                disablecontrols;
                open;
                first;
                while not eof do delete;
        end;

        with usuarios do begin
                tag := 2;
                nombreindice := IndexFieldNames;
                IndexfieldNames := 'Codigo';
                first;
        end;

        with registro do begin
                IndexfieldNames := 'codigo';
                first;
        end;

        decodedate(now,hoyanio,hoymes,hoydia);

        with garantias do begin   {este bloque rellena con las garantías}
                tag := 1;
                disablecontrols;
                first;
                while not eof do begin
                        lafecha := Garantiasfecompra.Value;
                        decodedate(lafecha, elanio, elmes, eldia);
                        if not (Garantiasfecompra.value = 0) and
                          (hoyanio = elanio + 3) then begin
                                Registro.FindKey([GarantiasCodigo.value]);
                                Usuarios.FindKey([RegistroComprador.value]); 
                                informe.insert;
                                informe.post;
                        end;
                        next;
                end;
                tag := 0;
                enablecontrols;
        end;

        with controles do begin    {este bloque rellena con los controles}
                disablecontrols;
                first;
                while not eof do begin
                        lafecha := ControlesProxctrl.Value;
                        decodedate(lafecha, elanio, elmes, eldia);
                        if not (ControlesProxctrl.value = 0) and
                          (hoyanio = elanio + 2) then begin
                                Registro.FindKey([ControlesCodigo.value]);
                                Usuarios.FindKey([RegistroComprador.value]);
                                informe.insert;
                                informe.post;
                        end;
                        next;
                end;
                enablecontrols;
        end;

        with usuarios do begin
                tag := 1;
                IndexFieldNames := nombreindice ;
        end;

        registro.IndexfieldNames := 'Comprador';

        with informe do begin
                close;
                readonly := true;
                Filtered := true;
                enablecontrols;
                open;
        end;
end;


procedure TDatos.InformeNewRecord(DataSet: TDataSet);
begin
        InformeMes.Value := elmes;
        InformeNombre.Value := UsuariosNombre.Value ;
        InformeCodvigia.Value := RegistroCodvigia.Value ;
        InformeVehiculo.Value := Registrovehiculo.Value ;
        if garantias.Tag = 1 then
                InformeFecha.Value := Garantiasfecompra.Value
        else
                InformeFecha.Value := ControlesProxctrl.Value;
end;

end.
