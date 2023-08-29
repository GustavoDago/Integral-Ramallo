unit Reporte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, QRPrntr, StdCtrls, ToolWin,
  ComCtrls;

type
  TReporteV = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr7: TQRExpr;
    QRGroup1: TQRGroup;
    QRPreview1: TQRPreview;
    ToolBar1: TToolBar;
    Boton: TButton;
    procedure QuickRep1Preview(Sender: TObject);
    procedure BotonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteV: TReporteV;

implementation

uses Consulta;

{$R *.DFM}

procedure TReporteV.QuickRep1Preview(Sender: TObject);
begin
        QRPreview1.QRPrinter := TQRPrinter(Sender)
end;

procedure TReporteV.BotonClick(Sender: TObject);
begin
        if Boton.tag = 0 then
          begin
                boton.tag:= 1;
                Boton.caption := 'Imprimir';
                QuickRep1.preview;
          end
        else
                QuickRep1.print;
end;

end.
