unit Prueba;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, ExtCtrls;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    AdministradordeGarantas1: TMenuItem;
    AdministradordeControles1: TMenuItem;
    InformeMensualViga1: TMenuItem;
    Salir1: TMenuItem;
    Clientes1: TMenuItem;
    Datos1: TMenuItem;
    Localidades1: TMenuItem;
    Artculos1: TMenuItem;
    Acercade1: TMenuItem;
    procedure AdministradordeGarantas1Click(Sender: TObject);
    procedure AdministradordeControles1Click(Sender: TObject);
    procedure InformeMensualViga1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Localidades1Click(Sender: TObject);
    procedure Artculos1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

uses Unigar, Ctrl, Consulta, Programa, Usuarios, Localida, Articulo,
  Acercade;

{$R *.DFM}

procedure TPrincipal.AdministradordeGarantas1Click(Sender: TObject);
begin
       if AdministradordeGarantas1.tag = 0 then
       begin
        FormuG := TFormuG.Create(Application);
        AdministradordeGarantas1.tag := 1;
       end;
       FormuG.Show;
       FormuG.Update;
end;

procedure TPrincipal.AdministradordeControles1Click(Sender: TObject);
begin
       if AdministradordeControles1.tag = 0 then begin
               ControlForm := TControlForm.Create(Application);
               AdministradordeControles1.tag := 1;
       end;
       Controlform.show;
       Controlform.update;
end;

procedure TPrincipal.InformeMensualViga1Click(Sender: TObject);
begin
       if InformeMensualViga1.tag = 0 then begin
               Fconsu := TFConsu.Create(Application);
               InformeMensualViga1.tag := 1;
       end;
       Fconsu.show;
       FConsu.Update;
end;

procedure TPrincipal.Salir1Click(Sender: TObject);
begin
        application.Terminate;
end;

procedure TPrincipal.Clientes1Click(Sender: TObject);
begin
        if Clientes1.tag = 0 then begin
                FUsuarios := TFUsuarios.create(Application);
                Clientes1.tag := 1;
        end;
        FUsuarios.show;
        FUsuarios.Update;
end;

procedure TPrincipal.Localidades1Click(Sender: TObject);
begin
        if Localidades1.tag = 0 then begin
                FLocali := TFLocali.create(Application);
                Localidades1.tag := 1;
        end;
        FLocali.show;
        FLocali.Update;
end;

procedure TPrincipal.Artculos1Click(Sender: TObject);
begin
        if Artculos1.tag = 0 then begin
                Farti := TFarti.create(Application);
                Artculos1.tag := 1;
        end;
        Farti.show;
        Farti.Update;
end;

procedure TPrincipal.Acercade1Click(Sender: TObject);
begin
        if Acercade1.tag = 0 then begin
                AboutBox := TAboutBox.create(Application);
                Acercade1.tag := 1;
        end;
        AboutBox.show;
        AboutBox.Update;
end;

end.
