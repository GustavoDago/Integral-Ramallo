unit Prove;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBLookup, DBCtrls,
  Grids, DBGrids, Mask, TabNotBk, ComCtrls;

type
  TFormuprove = class(TForm)
    Solapa: TTabbedNotebook;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    DBCodigoPostal: TDBText;
    EditNombre: TDBEdit;
    EditDireccion: TDBEdit;
    EditTelefono: TDBEdit;
    EditCuit: TDBEdit;
    EditEmpreprov: TDBEdit;
    DBMemo1: TDBMemo;
    Grilla: TDBGrid;
    Panel1: TPanel;
    PanelBotones: TPanel;
    DBLookupCombo1: TDBLookupCombo;
    RadioGroup1: TRadioGroup;
    TablaProve: TTable;
    DBNavigator1: TDBNavigator;
    DataProve: TDataSource;
    Tablalocal: TTable;
    Datalocal: TDataSource;
    TablaProvenomprov: TStringField;
    TablaProveempreprov: TStringField;
    TablaProvedirecprov: TStringField;
    TablaProveteleprov: TStringField;
    TablaProvecuitprov: TStringField;
    TablaProveCodigoPostal: TSmallintField;
    TablaProvenotaprov: TMemoField;
    Buscador: TEdit;
    TablalocalCodigoPostal: TSmallintField;
    TablalocalLocalidad: TStringField;
    Tablalocalprovincia: TStringField;
    TablaProvecodiprov: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure TablaProveAfterCancel(DataSet: TDataset);
    procedure TablaProveAfterPost(DataSet: TDataset);
    procedure TablaProveBeforeInsert(DataSet: TDataset);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SolapaChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure BuscadorChange(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupCombo1Enter(Sender: TObject);
    procedure DBLookupCombo1Exit(Sender: TObject);
    procedure DBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure TablaProveNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formuprove: TFormuprove;
  CambiaSolapa: Boolean;
  proximo: double;
implementation

{$R *.DFM}

procedure TFormuprove.FormCreate(Sender: TObject);
begin
     CambiaSolapa := true;
end;

procedure TFormuprove.TablaProveAfterCancel(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuprove.TablaProveAfterPost(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuprove.TablaProveBeforeInsert(DataSet: TDataset);
begin
   Solapa.Pageindex := 0;
   CambiaSolapa := False;
   WITH tablaprove do begin
        indexfieldnames:= 'codiprov';
        RadioGroup1.ItemIndex := 0;
        last;
        proximo := TablaProvecodiprov.Value ;
   end
end;

procedure TFormuprove.RadioGroup1Click(Sender: TObject);
begin
     case Radiogroup1.ItemIndex of
           0 :
             begin
                TablaProve.IndexFieldNames :=  'codiprov';
                TablaProvecodiprov.Index := 0;
                Buscador.maxlength := 5;
             end;
           1 :
             begin
                  TablaProve.IndexFieldNames :=  'nomprov';
                  TablaProvenomprov.Index := 0;
                  Buscador.maxlength := 10;
             end;
           2 :
             begin
                 TablaProve.IndexFieldNames :=  'CodigoPostal';
                 TablaProveCodigoPostal.Index := 0;
                 Buscador.maxlength := 5;
             end;
     end;
     Buscador.text := #0;
end;

procedure TFormuprove.SolapaChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     Allowchange := Cambiasolapa;
end;

procedure TFormuprove.BuscadorChange(Sender: TObject);
begin
     TablaProve.FindNearest([Buscador.text]);
end;

procedure TFormuprove.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (RadioGroup1.Itemindex = 0) or (RadioGroup1.Itemindex = 2) then
        if key > '9' then key := #0;
end;

procedure TFormuprove.DBLookupCombo1Enter(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'Localidad';
end;

procedure TFormuprove.DBLookupCombo1Exit(Sender: TObject);
begin
     Tablalocal.indexfieldNames := 'CodigoPostal';
end;

procedure TFormuprove.DBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
     Tablalocal.FindNearest([key]);
end;

procedure TFormuprove.TablaProveNewRecord(DataSet: TDataSet);
begin
        TablaProvecodiprov.Value := proximo + 1;
end;

end.
