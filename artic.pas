unit Artic;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBLookup, DBCtrls,
  Grids, DBGrids, Mask, TabNotBk, ComCtrls;

type
  TFormuarti = class(TForm)
    Solapa: TTabbedNotebook;
    Grilla: TDBGrid;
    Panel1: TPanel;
    PanelBotones: TPanel;
    DBLookupCombo1: TDBLookupCombo;
    RadioGroup1: TRadioGroup;
    Tablarti: TTable;
    DBNavigator1: TDBNavigator;
    Datarti: TDataSource;
    TablaProve: TTable;
    DataProve: TDataSource;
    Buscador: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Editcodiart: TDBEdit;
    Editdescripart: TDBEdit;
    Editcosto: TDBEdit;
    Editganancia: TDBEdit;
    Editpventa: TDBEdit;
    Editstockact: TDBEdit;
    Editstockmin: TDBEdit;
    Editstockmax: TDBEdit;
    Editbonifica: TDBEdit;
    Label4: TLabel;
    Label12: TLabel;
    Editpunit: TDBEdit;
    DBText1: TDBText;
    Tablarticodiart: TStringField;
    Tablartidescripart: TStringField;
    Tablartipunit: TFloatField;
    Tablarticosto: TFloatField;
    Tablartiganancia: TFloatField;
    Tablartipventa: TFloatField;
    Tablartistockact: TFloatField;
    Tablartistockmin: TFloatField;
    Tablartistockmax: TFloatField;
    Tablartibonifica: TFloatField;
    TablaProvenomprov: TStringField;
    TablaProveempreprov: TStringField;
    Tablartiprovedor: TFloatField;
    TablaProvecodiprov: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure TablartiAfterCancel(DataSet: TDataset);
    procedure TablartiAfterPost(DataSet: TDataset);
    procedure TablartiBeforeInsert(DataSet: TDataset);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SolapaChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure BuscadorChange(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure TablartipunitValidate(Sender: TField);
    procedure TablartibonificaValidate(Sender: TField);
    procedure TablartigananciaValidate(Sender: TField);
    procedure TablarticostoValidate(Sender: TField);
    procedure DBLookupCombo1Enter(Sender: TObject);
    procedure DBLookupCombo1Exit(Sender: TObject);
    procedure DBLookupCombo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formuarti: TFormuarti;
  CambiaSolapa: Boolean;
implementation

{$R *.DFM}

procedure TFormuarti.FormCreate(Sender: TObject);
begin
     CambiaSolapa := true;
end;

procedure TFormuarti.TablartiAfterCancel(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuarti.TablartiAfterPost(DataSet: TDataset);
begin
   CambiaSolapa := True;
end;

procedure TFormuarti.TablartiBeforeInsert(DataSet: TDataset);
begin
   Solapa.Pageindex := 0;
   CambiaSolapa := False;
end;

procedure TFormuarti.RadioGroup1Click(Sender: TObject);
begin
     case Radiogroup1.ItemIndex of
           0 :
             begin
                Tablarti.IndexFieldNames :=  'codiart';
                Tablarticodiart.Index := 0;
                Buscador.maxlength := 5;
             end;
           1 :
             begin
                  Tablarti.IndexFieldNames :=  'Descripart';
                  Tablartidescripart.Index := 0;
                  Buscador.maxlength := 10;
             end;
           2 :
             begin
                 Tablarti.IndexFieldNames :=  'provedor';
                 Tablartiprovedor.Index := 0;
                 Buscador.maxlength := 5;
             end;
     end;
     Buscador.text := #0;
end;

procedure TFormuarti.SolapaChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
     Allowchange := Cambiasolapa;
end;

procedure TFormuarti.BuscadorChange(Sender: TObject);
begin
     Tablarti.FindNearest([Buscador.text]);
end;

procedure TFormuarti.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (RadioGroup1.Itemindex = 2) then
        if key > '9' then key := #0;
end;

procedure TFormuarti.TablartipunitValidate(Sender: TField);
begin
     TablartiCosto.Value := TablartiPunit.value *
        (1 - TablartiBonifica.value /100);

end;

procedure TFormuarti.TablartibonificaValidate(Sender: TField);
begin
     TablartiCosto.Value := TablartiPunit.value *
        (1 - TablartiBonifica.value /100);

end;

procedure TFormuarti.TablartigananciaValidate(Sender: TField);
begin
     TablartiPventa.Value := TablartiCosto.Value *
        (1 + TablartiGanancia.value /100);
end;

procedure TFormuarti.TablarticostoValidate(Sender: TField);
begin
     TablartiPventa.Value := TablartiCosto.Value *
        (1 + TablartiGanancia.value /100);

end;

procedure TFormuarti.DBLookupCombo1Enter(Sender: TObject);
begin
     if (tablarti.state = dsedit) or (tablarti.state = dsinsert) then
     TablaProve.IndexFieldNames := 'Nomprov';
end;

procedure TFormuarti.DBLookupCombo1Exit(Sender: TObject);
begin
     Tablaprove.IndexfieldNames := 'codiprov';
end;

procedure TFormuarti.DBLookupCombo1KeyPress(Sender: TObject;
  var Key: Char);
begin
     Tablaprove.FindNearest([key]);
end;

end.
