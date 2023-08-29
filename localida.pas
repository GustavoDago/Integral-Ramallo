unit Localida;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, ExtCtrls, Grids, DBGrids, Mask, TabNotBk,
  DBTables, ComCtrls;

type
  TFormulocal = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    Table1: TTable;
    TabbedNotebook1: TTabbedNotebook;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditCodigoPostal: TDBEdit;
    EditLocalidad: TDBEdit;
    Editprovincia: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBNavigator: TDBNavigator;
    RadioGroup1: TRadioGroup;
    Table1CodigoPostal: TSmallintField;
    Table1Localidad: TStringField;
    Table1provincia: TStringField;
    Buscador: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BuscadorChange(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Formulocal: TFormulocal;

implementation

{$R *.DFM}

procedure TFormulocal.FormCreate(Sender: TObject);
begin
  Table1.Open;
end;

procedure TFormulocal.RadioGroup1Click(Sender: TObject);
begin
     if RadioGroup1.ItemIndex = 0 then
        begin
             Table1.IndexFieldNames := 'CodigoPostal';
             Buscador.maxlength := 5;
        end
     Else
        begin
             Table1.IndexFieldNames := 'Localidad';
             buscador.maxlength := 10;
        end;
        buscador.text := #0;
end;

procedure TFormulocal.BuscadorChange(Sender: TObject);
begin
     Table1.FindNearest([Buscador.text]);
end;

procedure TFormulocal.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (RadioGroup1.Itemindex = 0) then
        if key > '9' then key := #0;
end;

end.