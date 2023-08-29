unit Localida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  Qrctrls, QuickRpt, Buttons;

type
  TFLocali = class(TForm)
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
    B_nom: TDBEdit;
    Localidad: TTable;
    DataLocal: TDataSource;
    LocalidadCodigoPostal: TSmallintField;
    LocalidadLocalidad: TStringField;
    Localidadprovincia: TStringField;
    Busqueda: TTable;
    DataBus: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    RepLocal: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    Bot_imprime: TBitBtn;
    procedure LocalidadAfterPost(DataSet: TDataSet);
    procedure LocalidadBeforeInsert(DataSet: TDataSet);
    procedure OrdenarChange(Sender: TObject);
    procedure B_nomChange(Sender: TObject);
    procedure B_codChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bot_imprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocali: TFLocali;

implementation

uses Prueba;

{$R *.DFM}

procedure TFLocali.LocalidadAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Bot_imprime.visible := true;
        Listado.TabVisible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;

end;

procedure TFLocali.LocalidadBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;      
end;

procedure TFLocali.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                Localidad.IndexFieldNames :=  'CodigoPostal';
                Grilla.SelectedField := LocalidadCodigoPostal ;
                Panelbusquedas.activepage := 'Codigo';
             end;
           1 :
             begin
                  Localidad.IndexFieldNames :=  'Localidad';
                  Grilla.SelectedField := LocalidadLocalidad ;
                  Panelbusquedas.activepage := 'Localidad';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TFLocali.B_nomChange(Sender: TObject);
begin
        Localidad.FindNearest([B_nom.text]);
end;

procedure TFLocali.B_codChange(Sender: TObject);
begin
        Localidad.FindNearest([B_Cod.text]);
end;

procedure TFLocali.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      principal.Localidades1.tag := 0;
      Flocali.Release ;
end;

procedure TFLocali.Bot_imprimeClick(Sender: TObject);
begin
        RepLocal.print;
end;

end.
