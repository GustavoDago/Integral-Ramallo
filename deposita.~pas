unit Deposita;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, Grids, DBGrids, DBCtrls, DBLookup, ExtCtrls,
  StdCtrls, Buttons;

type
  TFdepos = class(TForm)
    cheques: TTable;
    Datacheques: TDataSource;
    bancos: TTable;
    Databancos: TDataSource;
    grilla: TDBGrid;
    chequesnumero: TStringField;
    chequesVoR: TStringField;
    chequesfecheque: TDateField;
    chequesimporcheq: TFloatField;
    chequesent_car: TStringField;
    chequesT_destino: TStringField;
    Panel2: TPanel;
    bancosbanco: TStringField;
    Gribancos: TDBGrid;
    Panel1: TPanel;
    Agrefac: TSpeedButton;
    Quitafac: TSpeedButton;
    bancosB: TStringField;
    bancoscodigo: TFloatField;
    chequesbanco: TFloatField;
    chequesDestino: TFloatField;
    chequescodifactu: TFloatField;
    chequesCodigo: TAutoIncField;
    procedure AgrefacClick(Sender: TObject);
    procedure QuitafacClick(Sender: TObject);
    procedure bancosCalcFields(DataSet: TDataset);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdepos: TFdepos;

implementation

{$R *.DFM}

procedure TFdepos.AgrefacClick(Sender: TObject);
begin
     if agrefac.tag = 0 then
        begin
             agrefac.tag := 1;
             with cheques do
             begin
                  masterFields := '';
                  masterSource := nil;
                  setRange([''],['']);
             end;
             with quitafac do
             begin
                  tag := 1;
                  Glyph.loadfromfile('check.bmp');
                  Hint := 'Aceptar';
             end;
             grilla.Font.Name := 'System';
        end
     Else
        begin
             agrefac.tag := 0;
             with cheques do
             begin
                  CancelRange;
                  masterSource := Databancos;
                  masterFields := 'B;codigo';
                  first;
             end;
             with quitafac do
             begin
                  tag := 0;
                  Glyph.LoadFromFile('sacar.bmp');
                  Hint := 'Retorno a cartera';
             end;
             grilla.Font.Name := 'Courier New';
        end;

end;

procedure TFdepos.QuitafacClick(Sender: TObject);
begin
with cheques do
     if not eof then
     begin
        edit;
        if quitafac.tag = 0 then
           begin
                chequesent_car.value := 'C';
                chequesT_destino.clear;
                chequesDestino.clear ;
           end
        else
           begin
                chequesent_car.value := 'E';
                chequesT_destino.value := 'B';
                chequesDestino.value := bancosCodigo.value ;
           end;
        post;
     end;

end;

procedure TFdepos.bancosCalcFields(DataSet: TDataset);
begin
     BancosB.value := 'V';
end;

end.
