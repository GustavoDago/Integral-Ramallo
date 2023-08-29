unit Articulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  Qrctrls, QuickRpt, Buttons;

type
  TFarti = class(TForm)
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
    Articulos: TTable;
    Datarti: TDataSource;
    Busqueda: TTable;
    Databus: TDataSource;
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
    Busquedacodiart: TStringField;
    Busquedadescripart: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Bot_imprime: TBitBtn;
    Rep_arti: TQuickRep;
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
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
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
    QRExpr11: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel11: TQRLabel;
    procedure ArticulosNewRecord(DataSet: TDataSet);
    procedure ArticulospunitValidate(Sender: TField);
    procedure ArticuloscostoValidate(Sender: TField);
    procedure ArticulosAfterPost(DataSet: TDataSet);
    procedure ArticulosBeforeInsert(DataSet: TDataSet);
    procedure OrdenarChange(Sender: TObject);
    procedure B_codChange(Sender: TObject);
    procedure B_nomChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bot_imprimeClick(Sender: TObject);
    procedure Rep_artiBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Rep_artiAfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Farti: TFarti;

implementation

{$R *.DFM}

procedure TFarti.ArticulosNewRecord(DataSet: TDataSet);
begin
        Articulosprovedor.value := 1
end;

procedure TFarti.ArticulospunitValidate(Sender: TField);
begin
     Articuloscosto.Value := Articulospunit.value *
        (1 - Articulosbonifica.value /100);
end;

procedure TFarti.ArticuloscostoValidate(Sender: TField);
begin
     Articulospventa.Value := Articuloscosto.Value *
        (1 + Articulosganancia.value /100);
end;

procedure TFarti.ArticulosAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Bot_imprime.visible := true;
        Listado.TabVisible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;
end;

procedure TFarti.ArticulosBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
      Bot_imprime.visible := false;
end;

procedure TFarti.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                Articulos.IndexFieldNames :=  'codiart';
                Grilla.SelectedField := Articuloscodiart ;
                Panelbusquedas.activepage := 'Codigo';
             end;
           1 :
             begin
                  Articulos.IndexFieldNames :=  'descripart';
                  Grilla.SelectedField := Articulosdescripart ;
                  Panelbusquedas.activepage := 'Descripcion';
             end;
     end;
     Grilla.Columns[grilla.SelectedIndex].index := 0;
     Grilla.SelectedIndex := 0;
end;

procedure TFarti.B_codChange(Sender: TObject);
begin
        Articulos.FindNearest([B_cod.text]);
end;

procedure TFarti.B_nomChange(Sender: TObject);
begin
        Articulos.FindNearest([B_nom.text]);
end;

procedure TFarti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Farti.Release ;
end;

procedure TFarti.Bot_imprimeClick(Sender: TObject);
begin
        Rep_arti.print;
end;

procedure TFarti.Rep_artiBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
        Datarti.enabled := false;
end;

procedure TFarti.Rep_artiAfterPrint(Sender: TObject);
begin
        datarti.enabled := true;
end;

end.
