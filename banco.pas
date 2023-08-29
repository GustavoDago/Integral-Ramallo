unit Banco;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, ExtCtrls, Mask, TabNotBk,
  DBTables, ComCtrls;

type
  TFormBancos = class(TForm)
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Table1: TTable;
    TabbedNotebook1: TTabbedNotebook;
    Label1: TLabel;
    Label2: TLabel;
    Editnombretarj: TDBEdit;
    Grilla: TDBGrid;
    Radio: TRadioGroup;
    Buscador: TEdit;
    DBText1: TDBText;
    Table1banco: TStringField;
    Table1B: TStringField;
    Table1codigo: TFloatField;
    procedure RadioClick(Sender: TObject);
    procedure BuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscadorChange(Sender: TObject);
    procedure Table1NewRecord(DataSet: TDataset);
    procedure Table1BeforeInsert(DataSet: TDataset);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormBancos: TFormBancos;
  siguiente: Extended;

implementation

{$R *.DFM}

procedure TFormBancos.RadioClick(Sender: TObject);
begin
     if Radio.Itemindex = 0 then
         Table1.IndexfieldNames := 'Codigo'
     else
         Table1.IndexName := 'Banco';
     buscador.text := #0;
end;

procedure TFormBancos.BuscadorKeyPress(Sender: TObject; var Key: Char);
begin
     if (radio.Itemindex = 0) and (key > '9') then
        key := #0;
end;

procedure TFormBancos.BuscadorChange(Sender: TObject);
begin
     Table1.FindNearest([Buscador.text]);
end;

procedure TFormBancos.Table1NewRecord(DataSet: TDataset);
begin
     Table1Codigo.value := siguiente;
     Table1b.value := 'B';
end;

procedure TFormBancos.Table1BeforeInsert(DataSet: TDataset);
begin
     with table1 do
     begin
          indexFieldNames:= 'codigo';
          last;
          siguiente := Table1Codigo.value + 1;
     end;
end;

end.