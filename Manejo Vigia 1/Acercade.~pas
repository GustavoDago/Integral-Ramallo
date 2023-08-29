unit Acercade;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

procedure TAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        AboutBox.release;
end;

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
        AboutBox.close;
end;

end.

