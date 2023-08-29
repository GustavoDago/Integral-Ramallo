unit Caja;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBLookup, DBCtrls,
  Grids, DBGrids, Mask, TabNotBk;

type
  TFormucaja = class(TForm)
    TablaCaja: TTable;
    Datacaja: TDataSource;
    PanelDatos: TPanel;
    grilla: TDBGrid;
    TablaCajafecha: TDateField;
    TablaCajaent_sal: TBooleanField;
    TablaCajaDescripcion: TStringField;
    TablaCajaentradas: TFloatField;
    TablaCajasalidas: TFloatField;
    DBfecha: TDBEdit;
    DBentsal: TDBComboBox;
    TablaCajatipo: TStringField;
    TablaCajaN: TIntegerField;
    DBtipo: TDBComboBox;
    DBnumero: TDBText;
    DBdescripcion: TDBEdit;
    DBEntrada: TDBEdit;
    DBSalida: TDBEdit;
    Bevel1: TBevel;
    rotador: TNotebook;
    DBNavigator1: TDBNavigator;
    PanelBusqueda: TPanel;
    buscador: TMaskEdit;
    Radio: TRadioGroup;
    Botoncancelar: TButton;
    Botonaceptar: TButton;
    procedure RadioClick(Sender: TObject);
    procedure BuscadorChange(Sender: TObject);
    Procedure Iniciar;
    procedure TablaCajaBeforeInsert(DataSet: TDataset);
    procedure TablaCajaBeforeEdit(DataSet: TDataset);
    procedure CalcuNum;
    procedure DBtipoExit(Sender: TObject);
    Procedure restaurar;
    procedure BotoncancelarClick(Sender: TObject);
    procedure TablaCajaAfterCancel(DataSet: TDataset);
    procedure TablaCajaAfterPost(DataSet: TDataset);
    procedure BotonaceptarClick(Sender: TObject);
    procedure TablaCajaBeforePost(DataSet: TDataset);
    procedure Buscador1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBentsalExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formucaja: TFormucaja;
  proximo : array[0..3] of integer;
implementation

{$R *.DFM}

procedure TFormucaja.RadioClick(Sender: TObject);
begin
     case Radio.ItemIndex of
           0 :
             begin
                  Tablacaja.IndexFieldNames := 'tipo;Nº';
                  Buscador.editMask := '>cccccccccc;1;_';
                  Buscador.text := '';
             end;
           1 :
             begin
                  tablacaja.IndexFieldNames := 'fecha';
                  with buscador do
                  begin
                       tag :=1;
                       Editmask := '!99/99/00;1;_';
                       tag := 0;
                       text := '01/01/99';
                  end;

             end;
     end;
end;

procedure TFormucaja.BuscadorChange(Sender: TObject);
begin
     if Radio.ItemIndex = 0 then
        TablaCaja.FindNearest([Buscador.text])
     else
         if buscador.tag = 0 then TablaCaja.FindNearest([strtodate(Buscador.text)]);
end;

Procedure Tformucaja.Iniciar;
Begin
     TablaCaja.IndexFieldNames := 'tipo;nº';
     Rotador.activePage := 'datos';
     PanelDatos.enabled := true;
     grilla.enabled :=false;
     calcunum;
End;

procedure TFormucaja.TablaCajaBeforeInsert(DataSet: TDataset);
begin
     iniciar;

end;

procedure TFormucaja.TablaCajaBeforeEdit(DataSet: TDataset);
begin
     Tablacaja.tag := 1;
     iniciar;
end;

Procedure TFormucaja.calcunum;
var
   n,num: integer;
   ubica:TBookmark;
   tipobus : string;
begin
     Tablacaja.disableControls;
     if Tablacaja.tag =1 then
     begin
          ubica := TablaCaja.getBookMark;
          tipobus := TablaCajaTipo.value;
          num := TablacajaN.value;
     end;

     for n := 0 to 3 do
     begin
          if dbtipo.Items[n] = tipobus then Proximo[n] := num
          else
          begin
              tablacaja.setRange([dbtipo.items[n]],[dbtipo.Items[n]]);
              Tablacaja.last;
              proximo[n] := TablaCajaN.value + 1;
          end;
     end;
     Tablacaja.cancelrange;
     if Tablacaja.tag = 1 then
     begin
          Tablacaja.gotoBookMark(ubica);
          Tablacaja.freeBookmark(ubica);
     end;
     Tablacaja.enableControls;
end;

procedure TFormucaja.DBtipoExit(Sender: TObject);
begin
     if dbTipo.ItemIndex > -1 then
        if TablacajaEnt_sal.value = true then TablaCajaN.value := Proximo[0]
        else TablaCajaN.value := Proximo[dbtipo.ItemIndex + 1];
end;

procedure TFormucaja.Restaurar;
Begin
     Rotador.activePage := 'normal';
     PanelDatos.enabled := false;
     Grilla.enabled := true;
     with dbtipo do
     begin
          clear;
          Items.add('Aporte');
          Items.add('Retiro');
          Items.add('Depósito');
          Items.add('Gasto');
     end;
End;

procedure TFormucaja.BotoncancelarClick(Sender: TObject);
begin
     TablaCaja.cancel;
end;

procedure TFormucaja.TablaCajaAfterCancel(DataSet: TDataset);
begin
     Restaurar;
end;

procedure TFormucaja.TablaCajaAfterPost(DataSet: TDataset);
begin
     Restaurar;
end;

procedure TFormucaja.BotonaceptarClick(Sender: TObject);
begin
     try
        TablaCaja.post;
     except
           On EdbEngineError do
              Raise exception.create('Revise los datos');
           on EdatabaseError do
              Raise exception.create('Faltan datos');
     end;
end;

procedure TFormucaja.TablaCajaBeforePost(DataSet: TDataset);
begin
     if ((TablacajaEnt_sal.value = true) and (TablacajaEntradas.value = 0)) or
        ((TablacajaEnt_sal.value = false) and (TablacajaSalidas.value = 0)) then
        raise exception.create('Especifique la cantidad');

end;

procedure TFormucaja.Buscador1Change(Sender: TObject);
begin
     if Radio.ItemIndex = 0 then
        TablaCaja.FindNearest([Buscador.text]);

end;

procedure TFormucaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if rotador.Pageindex = 0 then TablaCaja.cancel;

end;

procedure TFormucaja.DBentsalExit(Sender: TObject);
begin
     with dbtipo do
     begin
          clear;
          if TablaCajaEnt_sal.value = false then
             begin
                  Items.add('Retiro');
                  Items.add('Depósito');
                  Items.add('Gasto');
                  DBentrada.enabled := false;
                  DBsalida.enabled := true;
                  TablaCajaEntradas.clear;
             end
          else
             begin
                  Items.add('Aporte');
                  DBentrada.enabled := true;
                  DBsalida.enabled := False;
                  TablaCajaSalidas.clear;
             end;
          end;
end;

end.
