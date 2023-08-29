unit Programa;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, DB, DBTables, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, ExtCtrls, DBLookup, ComCtrls;

type
  TFormuclie = class(TForm)
    TablaClie: TTable;
    Dataclie: TDataSource;
    Tablalocal: TTable;
    Datalocal: TDataSource;
    Panel1: TPanel;
    PanelBotones: TPanel;
    DBNavigator1: TDBNavigator;
    TablaClieNombre: TStringField;
    TablaClieCodigopostal: TSmallintField;
    TablaClieDireccion: TStringField;
    TablaClieTelefono: TStringField;
    TablaClieCuit: TStringField;
    TablaClieNotas: TMemoField;
    TablaClieCondicionpago: TBooleanField;
    TablaClieIva: TStringField;
    TablaClieCodigo: TFloatField;
    TablaClienLocalidad: TStringField;
    Mostrador: TPageControl;
    Listado: TTabSheet;
    Grilla: TDBGrid;
    Individual: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    EditNombre: TDBEdit;
    EditDireccion: TDBEdit;
    EditTelefono: TDBEdit;
    EditCuit: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    VerLocal: TDBLookupComboBox;
    PanelBusquedas: TNotebook;
    Label23: TLabel;
    B_CodUsu: TDBEdit;
    Label24: TLabel;
    B_NomUsu: TDBEdit;
    Label26: TLabel;
    Ordenar: TComboBox;
    Busqueda: TTable;
    D_Busquedas: TDataSource;
    BusquedaCodigo: TFloatField;
    BusquedaNombre: TStringField;
    BusquedaCodigoPostal: TSmallintField;
    procedure OrdenarChange(Sender: TObject);
    procedure DBLookupCombo1Enter(Sender: TObject);
    procedure DBLookupCombo1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure B_CodUsuChange(Sender: TObject);
    procedure B_VerLocalExit(Sender: TObject);
    procedure B_NomUsuChange(Sender: TObject);
    procedure TablaClieBeforeInsert(DataSet: TDataSet);
    procedure TablaClieAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formuclie: TFormuclie;
  CambiaSolapa : Boolean;

implementation

{$R *.DFM}

procedure TFormuclie.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                Tablaclie.IndexFieldNames :=  'codigo';
                Grilla.SelectedField := TablaClieCodigo ;
                Panelbusquedas.activepage := 'Codigo';
             end;
           1 :
             begin
                  Tablaclie.IndexFieldNames :=  'nombre';
                  Grilla.SelectedField := TablaClieNombre ;
                  Panelbusquedas.activepage := 'Usuario';
             end;
           2 :
             begin
                  Tablaclie.IndexFieldNames :=  'CodigoPostal';
                  Grilla.SelectedField := TablaClienLocalidad ;
                  Panelbusquedas.activepage := 'Localidad';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TFormuclie.DBLookupCombo1Enter(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'Localidad';
end;

procedure TFormuclie.DBLookupCombo1Exit(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'CodigoPostal';
end;

procedure TFormuclie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Formuclie.release;
end;

procedure TFormuclie.B_CodUsuChange(Sender: TObject);
begin
        Tablaclie.FindNearest([B_CodUsu.text]);
end;

procedure TFormuclie.B_VerLocalExit(Sender: TObject);
begin
        Tablalocal.indexfieldNames := 'CodigoPostal';
        {Tablaclie.FindNearest([BusquedaCodigoPostal.value]);}
end;

procedure TFormuclie.B_NomUsuChange(Sender: TObject);
begin
        Tablaclie.FindNearest([B_NomUsu.text]);
end;

procedure TFormuclie.TablaClieBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
end;

procedure TFormuclie.TablaClieAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Listado.TabVisible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;
end;

end.
