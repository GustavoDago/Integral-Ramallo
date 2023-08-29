unit Consulta;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DB, DBTables, Mask, ExtCtrls, DBGrids,
  Buttons, TabNotBk, Grids, Spin, DBCtrls, ComCtrls, QuickRpt, Qrctrls;

type
  TFConsu = class(TForm)
    grilla: TDBGrid;
    infovigi: TTable;
    Dataconsu: TDataSource;
    vigia: TTable;
    garantia: TTable;
    clientes: TTable;
    clientesNombre: TStringField;
    clientesCuit: TStringField;
    clientesCodigo: TFloatField;
    Panel1: TPanel;
    labelmes: TLabel;
    numes: TSpinEdit;
    inicio: TBitBtn;
    Panelnoti: TPanel;
    Ordenar: TComboBox;
    codusu: TIntegerField;
    equipo: TStringField;
    vehiculo: TStringField;
    Proxctrl: TDateField;
    infovigiComprador: TIntegerField;
    infovigicodvigia: TStringField;
    infovigiVehiculo: TStringField;
    infovigiFecha: TDateField;
    garantiaComprador: TIntegerField;
    garantiafecompra: TDateField;
    garantiacodvigia: TStringField;
    garantiavehiculo: TStringField;
    boton: TButton;
    infovigiNusuario: TStringField;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    TitleBand1: TQRBand;
    titulo: TQRLabel;
    QRExpr7: TQRExpr;
    procedure inicioClick(Sender: TObject);
    procedure infovigia;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OrdenarChange(Sender: TObject);
    procedure botonClick(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { private declarations }
  public
    { public declarations }

  end;

var
  FConsu: TFConsu;
  totalcompras,totalventas: double;
  const Nombremeses: array[0..11] of string = ('Enero', 'Febrero', 'Marzo',
                        'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto',
                        'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');

implementation


{$R *.DFM}

procedure TFConsu.inicioClick(Sender: TObject);
begin
dataconsu.dataset := nil;
infovigia;
end;

procedure TFConsu.infovigia;
var
   LaFecha: TdateTime;
   anio, mes, dia, anio1, mes1, dia1 : word;
   proxi: boolean;
begin
     grilla.DataSource := nil;
     {calcula los valores que serán el rango de fechas}

     decodedate(date, anio, mes,dia);
     mes := numes.value;
     proxi := false;
     {borra y abre la tabla que se va a mostrar}
     with infovigi do
     begin
        close;
        emptytable;
        open;
     end;
     {copia todos los controles necesarios en infovigi}
     Dataconsu.DataSet :=vigia;
     clientes.MasterSource := Dataconsu;
     clientes.MasterFields := 'codusuctrl';
     with vigia do
     begin
          open;
          first;
          while not eof do
          begin
               lafecha := Proxctrl.Value ;
               decodedate(lafecha, anio1, mes1,dia1);
               if not (Proxctrl.value = 0) and ((mes1 = mes) and (anio1 = anio)) then
               try
                     infovigi.appendRecord([CodUsu.value, Equipo.value,
                                                Vehiculo.value, Proxctrl.value,
                                                ClientesNombre.value]);
               except
                     on EdbEngineError do
                     begin
                          next;
                          proxi := true;
                     end;
               end;
               if proxi = false then next else proxi := false;
          end;
          close;
     end;

        clientes.masterfields := '';
        Dataconsu.DataSet := Garantia;
        clientes.MasterFields := 'Comprador';
     with garantia do
     begin
          open;
          first;
          while not eof do
          begin
               lafecha := Garantiafecompra.value;
               decodedate(lafecha, anio1, mes1,dia1);
               if not (lafecha = 0) and ((mes1 = mes) and (anio - 1 = anio1 )) then
               try
                     infovigi.appendRecord([garantiacomprador.value,
                                            garantiacodvigia.value,
                                            garantiavehiculo.value,
                                            Garantiafecompra.value,
                                            ClientesNombre.value]);
               except
                     on EdbEngineError do
                     begin
                          next;
                          proxi := true;
                     end;
               end;
               if proxi = false then next
               else proxi := false;
          end;
          close;
     end;
     Dataconsu.DataSet :=infovigi;
     Grilla.DataSource := Dataconsu;
     PanelNoti.Caption := 'Controles: ' + inttostr(infovigi.RecordCount)+ ' ';
end;

procedure TFConsu.FormCreate(Sender: TObject);
var
  anioc,mescombo,diac: word;
begin
     decodedate(now,anioc,mescombo,diac);
     numes.value := mescombo;
     dataconsu.dataset := nil;
     with infovigi do
     begin
        Active := False;
        emptytable;
        Active := True;
     end;
end;

procedure TFConsu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Fconsu.Release ;
end;

procedure TFConsu.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                infovigi.IndexFieldNames :=  'comprador';
                Grilla.SelectedField := infovigicomprador ;
             end;
           1 :
             begin
                  infovigi.IndexFieldNames :=  'CodVigia';
                  Grilla.SelectedField := infovigiCodvigia ;
             end;
           2 :
             begin
                 infovigi.IndexFieldNames :=  'Fecha';
                 Grilla.SelectedField := infovigiFecha ;
             end;
   end;
end;

procedure TFConsu.botonClick(Sender: TObject);
begin
        QuickRep1.print;
end;

procedure TFConsu.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        titulo.caption := 'Listado de los controles a realizarse en el mes de '+
                                nombremeses[numes.value - 1];
end;

end.
