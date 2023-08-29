unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls, Db, DBTables,
  Qrctrls, QuickRpt, Buttons;

type
  TFUsuarios = class(TForm)
    Mostrador: TPageControl;
    Listado: TTabSheet;
    Grilla: TDBGrid;
    Individual: TTabSheet;
    PanelBotones: TPanel;
    DBNavigator1: TDBNavigator;
    Ordenar: TComboBox;
    PanelBusquedas: TNotebook;
    Label23: TLabel;
    B_cod: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    B_nom: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Usuarios: TTable;
    UsuariosNombre: TStringField;
    UsuariosDireccion: TStringField;
    UsuariosCodigoPostal: TSmallintField;
    UsuariosnLocal: TStringField;
    UsuariosTelefono: TStringField;
    UsuariosCuit: TStringField;
    UsuariosIva: TStringField;
    UsuariosCondicionpago: TBooleanField;
    UsuariosNotas: TMemoField;
    Localidad: TTable;
    LocalidadCodigoPostal: TSmallintField;
    LocalidadLocalidad: TStringField;
    Busqueda: TTable;
    BusquedaCodigo: TFloatField;
    BusquedaNombre: TStringField;
    BusquedaCodigoPostal: TSmallintField;
    Databus: TDataSource;
    Datalocal: TDataSource;
    DataUsu: TDataSource;
    Bot_imprime: TBitBtn;
    Rep_Usu: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel11: TQRLabel;
    UsuariosCodigo: TFloatField;
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure B_codChange(Sender: TObject);
    procedure UsuariosAfterPost(DataSet: TDataSet);
    procedure UsuariosBeforeInsert(DataSet: TDataSet);
    procedure B_nomChange(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure OrdenarChange(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bot_imprimeClick(Sender: TObject);
    procedure Rep_UsuBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Rep_UsuAfterPrint(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure UsuariosBeforeEdit(DataSet: TDataSet);
    procedure UsuariosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;
  proxi : double;

implementation

{$R *.DFM}

procedure TFUsuarios.DBLookupComboBox1Enter(Sender: TObject);
begin
        Localidad.IndexFieldNames := 'Localidad';
end;

procedure TFUsuarios.DBLookupComboBox1Exit(Sender: TObject);
begin
        Localidad.IndexFieldNames := 'CodigoPostal';
end;

procedure TFUsuarios.B_codChange(Sender: TObject);
begin
        Usuarios.FindNearest([B_Cod.text]);
end;

procedure TFUsuarios.UsuariosAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Listado.TabVisible := true;
        Bot_imprime.visible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;
end;

procedure TFUsuarios.UsuariosBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;
      usuarios.indexfieldNames := 'Codigo';
      usuarios.last;
      proxi := UsuariosCodigo.value +1;
end;

procedure TFUsuarios.B_nomChange(Sender: TObject);
begin
        Usuarios.FindNearest([B_nom.text]);
end;

procedure TFUsuarios.DBLookupComboBox2Exit(Sender: TObject);
begin
        Localidad.indexfieldnames := 'CodigoPostal';
        Usuarios.FindNearest([LocalidadCodigoPostal.value]);
end;

procedure TFUsuarios.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                Usuarios.IndexFieldNames :=  'Codigo';
                Grilla.SelectedField := UsuariosCodigo ;
                Panelbusquedas.activepage := 'Codigo';
             end;
           1 :
             begin
                  Usuarios.IndexFieldNames :=  'Nombre';
                  Grilla.SelectedField := UsuariosNombre ;
                  Panelbusquedas.activepage := 'Usuario';
             end;
           2 :
             begin
                 Usuarios.IndexFieldNames :=  'CodigoPostal';
                 Grilla.SelectedField := UsuariosCodigoPostal ;
                 Panelbusquedas.activepage := 'Localidad';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TFUsuarios.DBLookupComboBox2Enter(Sender: TObject);
begin
        Localidad.indexfieldnames := 'localidad';
end;

procedure TFUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FUsuarios.Release ;
end;

procedure TFUsuarios.Bot_imprimeClick(Sender: TObject);
begin
        Rep_usu.print;
end;

procedure TFUsuarios.Rep_UsuBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        Datausu.enabled := false;
end;

procedure TFUsuarios.Rep_UsuAfterPrint(Sender: TObject);
begin
        Datausu.enabled := true;
end;

procedure TFUsuarios.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
        Localidad.FindNearest([key]);
end;

procedure TFUsuarios.UsuariosBeforeEdit(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;
end;

procedure TFUsuarios.UsuariosNewRecord(DataSet: TDataSet);
begin
        UsuariosCodigo.value := proxi;
end;

end.
