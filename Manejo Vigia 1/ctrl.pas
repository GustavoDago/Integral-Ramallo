unit Ctrl;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Grids, DBGrids, Mask, TabNotBk,
  ExtCtrls, DBLookup, ComCtrls, Buttons, Qrctrls, QuickRpt;

type
  TControlform = class(TForm)
    Data: TDataSource;
    Tabla: TTable;
    Tablafechactrl: TDateField;
    Tablacodusuctrl: TIntegerField;
    Tablatipoequipo: TStringField;
    Tablavehiculo: TStringField;
    Tablastemaceite: TStringField;
    Tablaspreaceite: TStringField;
    Tablastemcilind: TStringField;
    Tablacil1: TStringField;
    Tablacil2: TStringField;
    Tablacil3: TStringField;
    Tablacil4: TStringField;
    Tablacil5: TStringField;
    Tablacil6: TStringField;
    Tablapreairetur: TStringField;
    Tablatablero: TStringField;
    Tablainstelectr: TStringField;
    Tablaregvolalte: TStringField;
    Tablafuncionami: TStringField;
    Tablaobservigia: TStringField;
    Tablaclie: TTable;
    Dataclie: TDataSource;
    articulos: TTable;
    Datamanda: TDataSource;
    TablaCodigo: TFloatField;
    TablaProxctrl: TDateField;
    TablaNcliente: TStringField;
    Mostrador: TPageControl;
    Listado: TTabSheet;
    Grilla: TDBGrid;
    articuloscodiart: TStringField;
    TablanEquipo: TStringField;
    Individual: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    articulosprovedor: TFloatField;
    PanelBotones: TPanel;
    DBNavigator1: TDBNavigator;
    Ordenar: TComboBox;
    PanelBusquedas: TNotebook;
    Label23: TLabel;
    B_ctrl: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    B_CodUsu: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label26: TLabel;
    B_Fecha: TDBEdit;
    Busqueda: TTable;
    D_Busquedas: TDataSource;
    BusquedaCodigo: TFloatField;
    Busquedafechactrl: TDateField;
    Busquedacodusuctrl: TIntegerField;
    Busquedanusuario: TStringField;
    Rep_control: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr16: TQRExpr;
    QRLabel20: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel21: TQRLabel;
    QRExpr22: TQRExpr;
    QRLabel22: TQRLabel;
    QRExpr23: TQRExpr;
    QRLabel23: TQRLabel;
    Bot_imprime: TBitBtn;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TablaBeforeInsert(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
    procedure B_ctrlChange(Sender: TObject);
    procedure B_CodUsuChange(Sender: TObject);
    procedure B_FechaExit(Sender: TObject);
    procedure OrdenarChange(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Bot_imprimeClick(Sender: TObject);
    procedure Rep_controlBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Rep_controlAfterPrint(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure TablaBeforeEdit(DataSet: TDataSet);
    procedure TablaNewRecord(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Controlform: TControlform;
  proxi: double;

implementation

{$R *.DFM}


procedure TControlform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ControlForm.Release ;
end;

procedure TControlform.TablaBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;
      tabla.indexfieldNames := 'Codigo';
      tabla.last;
      proxi := TablaCodigo.value +1;
end;

procedure TControlform.TablaAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Listado.TabVisible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;
        Bot_imprime.visible := True;
end;

procedure TControlform.B_ctrlChange(Sender: TObject);
begin
        Tabla.findNearest([B_ctrl.text]);
end;

procedure TControlform.B_CodUsuChange(Sender: TObject);
begin
        Tabla.findNearest([B_CodUsu.text]);
end;

procedure TControlform.B_FechaExit(Sender: TObject);
begin
        Tabla.findNearest([B_Fecha.text]);
end;

procedure TControlform.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                Tabla.IndexFieldNames :=  'codigo';
                Grilla.SelectedField := tablacodigo ;
                Panelbusquedas.activepage := 'codigo';
             end;
           1 :
             begin
                Tabla.IndexFieldNames :=  'codusuctrl';
                Grilla.SelectedField := tablacodusuctrl;
                Panelbusquedas.activepage := 'usuario';
             end;
           2 :
             begin
                Tabla.IndexFieldNames :=  'fechactrl';
                Grilla.SelectedField := tablafechactrl ;
                Panelbusquedas.activepage := 'fecha';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TControlform.DBLookupComboBox1Enter(Sender: TObject);
begin
        Tablaclie.IndexFieldNames := 'Nombre';
end;

procedure TControlform.DBLookupComboBox1Exit(Sender: TObject);
begin
        Tablaclie.IndexFieldNames := 'codigo';
end;

procedure TControlform.Bot_imprimeClick(Sender: TObject);
begin
        Rep_control.print;
end;

procedure TControlform.Rep_controlBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        Data.enabled := false;
end;

procedure TControlform.Rep_controlAfterPrint(Sender: TObject);
begin
        data.enabled := true;
end;

procedure TControlform.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
     Tablaclie.FindNearest([key]);
end;

procedure TControlform.TablaBeforeEdit(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;
end;

procedure TControlform.TablaNewRecord(DataSet: TDataSet);
begin
        TablaCodigo.value := proxi;
end;

end.
