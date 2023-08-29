unit Unigar;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBLookup, DBCtrls,
  Grids, DBGrids, Mask, TabNotBk, ComCtrls, Buttons, Qrctrls, QuickRpt;

type
  TFormuG = class(TForm)
    TablaG: TTable;
    DataG: TDataSource;
    TablaGComprador: TIntegerField;
    TablaGfecompra: TDateField;
    TablaGcodvigia: TStringField;
    TablaGvehiculo: TStringField;
    TablaClie: TTable;
    TablaClieNombre: TStringField;
    TablaClieCuit: TStringField;
    Dataclie: TDataSource;
    articulos: TTable;
    Datarti: TDataSource;
    PanelBotones: TPanel;
    DBNavigator1: TDBNavigator;
    TablaClieCodigo: TFloatField;
    Mostrador: TPageControl;
    Listado: TTabSheet;
    Individual: TTabSheet;
    Grilla: TDBGrid;
    Label1: TLabel;
    Gar: TDBEdit;
    Label2: TLabel;
    CUsu: TDBEdit;
    Label3: TLabel;
    Fecha: TDBEdit;
    Label5: TLabel;
    Vehi: TDBEdit;
    TablaGnComprador: TStringField;
    Label6: TLabel;
    Nusu: TDBLookupComboBox;
    TablaGNarti: TStringField;
    Label7: TLabel;
    Equipo: TDBLookupComboBox;
    articuloscodiart: TStringField;
    articulosdescripart: TStringField;
    articulosprovedor: TFloatField;
    Ordenar: TComboBox;
    Busqueda: TTable;
    D_busquedas: TDataSource;
    BusquedaComprador: TIntegerField;
    Busquedafecompra: TDateField;
    Busquedacodvigia: TStringField;
    BusquedanUsuario: TStringField;
    BusquedanArti: TStringField;
    PanelBusquedas: TNotebook;
    Label4: TLabel;
    B_gar: TDBEdit;
    B_CodUsu: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    B_Fecha: TDBEdit;
    Label11: TLabel;
    B_Equipo: TDBLookupComboBox;
    Label10: TLabel;
    Bot_imprime: TBitBtn;
    Rep_Gar: TQuickRep;
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr7: TQRExpr;
    TablaGngarantia: TStringField;
    Busquedangarantia: TStringField;
    procedure OrdenarChange(Sender: TObject);
    procedure TablaGBeforeInsert(DataSet: TDataSet);
    procedure TablaGAfterPost(DataSet: TDataSet);
    procedure B_garChange(Sender: TObject);
    procedure B_CodUsuChange(Sender: TObject);
    procedure B_EquipoClick(Sender: TObject);
    procedure B_FechaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bot_imprimeClick(Sender: TObject);
    procedure Rep_GarAfterPrint(Sender: TObject);
    procedure Rep_GarBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure NusuKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormuG: TFormuG;
implementation

uses Prueba;

{$R *.DFM}

procedure TFormuG.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                TablaG.IndexFieldNames :=  'ngarantia';
                Grilla.SelectedField := tablaGngarantia ;
                Panelbusquedas.activepage := 'Garantia';
             end;
           1 :
             begin
                  TablaG.IndexFieldNames :=  'Comprador';
                  Grilla.SelectedField := tablaGComprador ;
                  Panelbusquedas.activepage := 'Usuario';
             end;
           2 :
             begin
                 TablaG.IndexFieldNames :=  'CodVigia';
                 Grilla.SelectedField := tablaGCodVigia ;
                 Panelbusquedas.activepage := 'Equipo';
             end;
           3 :
             begin
                 TablaG.IndexFieldNames :=  'Fecompra';
                 Grilla.SelectedField := tablaGFecompra ;
                 Panelbusquedas.activepage := 'Fecha';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TFormuG.TablaGBeforeInsert(DataSet: TDataSet);
begin
     dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
     ordenar.visible := false;
     Panelbusquedas.Visible :=False;
     Mostrador.tag := Mostrador.ActivePageIndex;
     Listado.TabVisible := false;
     Bot_imprime.visible := false;
end;

procedure TFormuG.TablaGAfterPost(DataSet: TDataSet);
begin
     dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
     ordenar.visible := true;
     Panelbusquedas.Visible :=True;
     Listado.TabVisible := true;
     Mostrador.ActivePageIndex := Mostrador.tag;
     Bot_imprime.visible := true;
end;

procedure TFormuG.B_garChange(Sender: TObject);
begin
        TablaG.findNearest([B_gar.text]);
end;

procedure TFormuG.B_CodUsuChange(Sender: TObject);
begin
        TablaG.findNearest([B_CodUsu.text]);
end;

procedure TFormuG.B_EquipoClick(Sender: TObject);
begin
       TablaG.findNearest([B_Equipo.text]);
end;

procedure TFormuG.B_FechaExit(Sender: TObject);
begin
        TablaG.findNearest([B_Fecha.text]);
end;

procedure TFormuG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        principal.AdministradordeGarantas1.tag := 0;
        FormuG.Release ;
end;

procedure TFormuG.Bot_imprimeClick(Sender: TObject);
begin
        Rep_Gar.print;
end;

procedure TFormuG.Rep_GarAfterPrint(Sender: TObject);
begin
        DataG.enabled := true;
end;

procedure TFormuG.Rep_GarBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        DataG.enabled := False;
end;

procedure TFormuG.DBLookupComboBox3Enter(Sender: TObject);
begin
        Tablaclie.IndexFieldNames := 'Nombre';
end;

procedure TFormuG.DBLookupComboBox3Exit(Sender: TObject);
begin
        Tablaclie.IndexFieldNames := 'codigo';
end;

procedure TFormuG.NusuKeyPress(Sender: TObject; var Key: Char);
begin
     Tablaclie.FindNearest([key]);
end;

end.
