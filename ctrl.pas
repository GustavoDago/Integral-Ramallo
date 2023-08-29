unit Ctrl;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Grids, DBGrids, Mask, TabNotBk,
  ExtCtrls, DBLookup, ComCtrls;

type
  TControlform = class(TForm)
    Panel1: TPanel;
    Data: TDataSource;
    Tabla: TTable;
    TabbedNotebook1: TTabbedNotebook;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Editvehiculo: TDBEdit;
    Editstemaceite: TDBEdit;
    Editspreaceite: TDBEdit;
    Editstemcilind: TDBEdit;
    Editcil: TDBEdit;
    Editcil2: TDBEdit;
    Editcil3: TDBEdit;
    Editcil4: TDBEdit;
    Editcil5: TDBEdit;
    Editcil6: TDBEdit;
    Editpreairetur: TDBEdit;
    Edittablero: TDBEdit;
    Editinstelectr: TDBEdit;
    Editregvolalte: TDBEdit;
    Editfuncionami: TDBEdit;
    DBtusuario: TDBText;
    DBTcodigo: TDBText;
    DBTequipo: TDBText;
    Label2: TLabel;
    Editfechactrl: TDBEdit;
    DBGrid1: TDBGrid;
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
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    DBNavigator: TDBNavigator;
    DBLookupCombo2: TDBLookupCombo;
    Tablaclie: TTable;
    Dataclie: TDataSource;
    Listarti: TDBLookupCombo;
    DBEdit1: TDBEdit;
    Buscador: TMaskEdit;
    Tablarti: TTable;
    Tablarticodiart: TStringField;
    Tablartidescripart: TStringField;
    Tablartiprovedor: TIntegerField;
    Datarti: TDataSource;
    articulos: TTable;
    Datamanda: TDataSource;
    TablaCodigo: TFloatField;
    TablaProxctrl: TDateField;
    Label21: TLabel;
    DBEdit2: TDBEdit;
    TablaNcliente: TStringField;
    procedure RadioGroup1Click(Sender: TObject);
    procedure BuscadorChange(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupCombo2Enter(Sender: TObject);
    procedure DBLookupCombo2Exit(Sender: TObject);
    procedure DBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
    procedure ListartiKeyPress(Sender: TObject; var Key: Char);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Controlform: TControlform;

implementation

{$R *.DFM}

procedure TControlform.RadioGroup1Click(Sender: TObject);
begin
     case Radiogroup1.ItemIndex of
           0 :
             begin
                Tabla.IndexFieldNames :=  'codigo';
                Tablacodigo.Index := 0;
                Buscador.maxlength := 5;
                Buscador.Editmask := '';
                Buscador.text := #0;
             end;
           1 :
             begin
                  Tabla.IndexName :=  'Codusuctrl';
                  Tablacodusuctrl.Index := 0;
                  Buscador.maxlength := 10;
                  Buscador.EditMask := '';
                  Buscador.text := #0;
             end;
           2 :
             begin
                 Tabla.IndexName :=  'fechactrl';
                 Tablafechactrl.Index := 0;
                 Buscador.maxlength := 8;
                 Buscador.tag :=1;
                 Buscador.Editmask := Tablafechactrl.Editmask;
                 Buscador.tag := 0;
                 Buscador.text := '01/01/99';
             end;
     end;
end;

procedure TControlform.BuscadorChange(Sender: TObject);
begin
     if buscador.tag = 0 then
          Tabla.findNearest([buscador.text]);
end;

procedure TControlform.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if key > '9' then key := #0;
end;

procedure TControlform.FormCreate(Sender: TObject);
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

procedure TControlform.DBLookupCombo2Enter(Sender: TObject);
begin
     Tablaclie.IndexFieldNames := 'nombre';
end;

procedure TControlform.DBLookupCombo2Exit(Sender: TObject);
begin
     Tablaclie.IndexFieldNames := 'codigo';
end;

procedure TControlform.DBLookupCombo2KeyPress(Sender: TObject; var Key: Char);
begin
     Tablaclie.FindNearest([key]);
end;

procedure TControlform.ListartiKeyPress(Sender: TObject; var Key: Char);
begin
     Tablarti.FindNearest([Listarti.text]);
end;

end.
