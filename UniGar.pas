unit Unigar;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBLookup, DBCtrls,
  Grids, DBGrids, Mask, TabNotBk;

type
  TFormuG = class(TForm)
    TablaG: TTable;
    DataG: TDataSource;
    TablaGngarantia: TStringField;
    TablaGComprador: TIntegerField;
    TablaGfecompra: TDateField;
    TablaGcodvigia: TStringField;
    TablaGvehiculo: TStringField;
    TablaClie: TTable;
    TablaClieNombre: TStringField;
    TablaClieCuit: TStringField;
    Dataclie: TDataSource;
    Tablarti: TTable;
    Datarti: TDataSource;
    Tablarticodiart: TStringField;
    Tablartidescripart: TStringField;
    Tablartiprovedor: TIntegerField;
    articulos: TTable;
    Datamanda: TDataSource;
    Panel2: TPanel;
    PanelBotones: TPanel;
    listarti: TDBLookupCombo;
    DBLookupCombo2: TDBLookupCombo;
    Panelbusca: TPanel;
    Buscador: TEdit;
    Grilla: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    TablaClieCodigo: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BuscadorChange(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure TablaGBeforeInsert(DataSet: TDataset);
    procedure TablaGAfterCancel(DataSet: TDataset);
    procedure listartiKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupCombo2Enter(Sender: TObject);
    procedure DBLookupCombo2Exit(Sender: TObject);
    procedure DBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormuG: TFormuG;
implementation

{$R *.DFM}

procedure TFormuG.FormCreate(Sender: TObject);
begin
     with articulos do
     begin
          open;
          setrange([28],[28]);
          with tablarti do
          begin
               emptytable;
               batchmove(articulos,batappend);
               open;
          end;
          close;
     end;
end;

procedure TFormuG.RadioGroup1Click(Sender: TObject);
begin
     case Radiogroup1.ItemIndex of
           0 :
             begin
                TablaG.IndexFieldNames :=  'ngarantia';
                TablaGngarantia.Index := 0;
                Buscador.maxlength := 6;
             end;
           1 :
             begin
                  TablaG.IndexFieldNames :=  'Comprador';
                  TablaGComprador.Index := 0;
                  Buscador.maxlength := 10;
             end;
           2 :
             begin
                 TablaG.IndexFieldNames :=  'CodVigia';
                 TablaGCodVigia.Index := 0;
                 Buscador.maxlength := 15;
             end;
     end;
     Buscador.text := #0;
end;

procedure TFormuG.BuscadorChange(Sender: TObject);
begin
     TablaG.FindNearest([Buscador.text]);
end;

procedure TFormuG.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (RadioGroup1.Itemindex = 0) or (RadioGroup1.Itemindex = 1) then
        if key > '9' then key := #0;
end;

procedure TFormuG.TablaGBeforeInsert(DataSet: TDataset);
begin
panel2.visible := false;
end;

procedure TFormuG.TablaGAfterCancel(DataSet: TDataset);
begin
Panel2.visible := true;
end;

procedure TFormuG.listartiKeyPress(Sender: TObject; var Key: Char);
begin
     Tablarti.FindNearest([Listarti.text]);
end;

procedure TFormuG.DBLookupCombo2Enter(Sender: TObject);
begin
     Tablaclie.IndexFieldNames := 'Nombre';
end;

procedure TFormuG.DBLookupCombo2Exit(Sender: TObject);
begin
     Tablaclie.IndexFieldNames := 'codigo';
end;

procedure TFormuG.DBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
begin
     Tablaclie.FindNearest([key]);
end;

end.
