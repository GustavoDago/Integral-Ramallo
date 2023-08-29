unit Programa;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, DB, DBTables, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, ExtCtrls, DBLookup, ComCtrls;

type
  TFormuclie = class(TForm)
    Solapa: TTabbedNotebook;
    TablaClie: TTable;
    Dataclie: TDataSource;
    Tablalocal: TTable;
    Datalocal: TDataSource;
    Grilla: TDBGrid;
    Panel1: TPanel;
    PanelBotones: TPanel;
    RadioGroup1: TRadioGroup;
    DBNavigator1: TDBNavigator;
    DBLookupCombo1: TDBLookupCombo;
    TablaClieNombre: TStringField;
    TablaClieCodigopostal: TSmallintField;
    TablaClieDireccion: TStringField;
    TablaClieTelefono: TStringField;
    TablaClieCuit: TStringField;
    TablaClieNotas: TMemoField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditNombre: TDBEdit;
    EditDireccion: TDBEdit;
    EditTelefono: TDBEdit;
    EditCuit: TDBEdit;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBCodigoPostal: TDBText;
    TablaClieCondicionpago: TBooleanField;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    TablaClieIva: TStringField;
    Buscador: TEdit;
    TablaClieCodigo: TFloatField;
    procedure RadioGroup1Click(Sender: TObject);
    procedure SolapaChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure TablaClieBeforeInsert(DataSet: TDataset);
    procedure TablaClieAfterPost(DataSet: TDataset);
    procedure FormCreate(Sender: TObject);
    procedure TablaClieAfterCancel(DataSet: TDataset);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscadorChange(Sender: TObject);
    procedure DBLookupCombo1Enter(Sender: TObject);
    procedure DBLookupCombo1Exit(Sender: TObject);
    procedure DBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormuclie.RadioGroup1Click(Sender: TObject);
begin
     case Radiogroup1.ItemIndex of
           0 :
             begin
                Tablaclie.IndexFieldNames :=  'codigo';
                Tablacliecodigo.Index := 0;
                Buscador.maxlength := 5;
             end;
           1 :
             begin
                  Tablaclie.IndexFieldNames :=  'nombre';
                  Tablaclienombre.Index := 0;
                  Buscador.maxlength := 10;
             end;
           2 :
             begin
                 Tablaclie.IndexFieldNames :=  'CodigoPostal';
                 TablaclieCodigoPostal.Index := 0;
                 Buscador.maxlength := 5;
             end;
     end;
     Buscador.text := #0;
end;

procedure TFormuclie.SolapaChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     Allowchange := Cambiasolapa;
end;

procedure TFormuclie.TablaClieBeforeInsert(DataSet: TDataset);
begin
   Solapa.Pageindex := 0;
   CambiaSolapa := False;
end;

procedure TFormuclie.TablaClieAfterPost(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuclie.FormCreate(Sender: TObject);
begin
     CambiaSolapa := true;
end;

procedure TFormuclie.TablaClieAfterCancel(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuclie.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (radioGroup1.Itemindex = 0)or (radiogroup1.itemindex = 2) then
        if key > '9' then key := #0;
end;

procedure TFormuclie.BuscadorChange(Sender: TObject);
begin
     Tablaclie.FindNearest([Buscador.text]);
end;

procedure TFormuclie.DBLookupCombo1Enter(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'Localidad';
end;

procedure TFormuclie.DBLookupCombo1Exit(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'CodigoPostal';
end;

procedure TFormuclie.DBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
     Tablalocal.FindNearest([key]);
end;

end.
