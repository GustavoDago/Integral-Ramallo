unit Dat_usu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDatos = class(TDataModule)
    Usuarios: TTable;
    DataUsu: TDataSource;
    Localidad: TTable;
    Datalocal: TDataSource;
    Busqueda: TTable;
    Databus: TDataSource;
    UsuariosCodigo: TFloatField;
    UsuariosNombre: TStringField;
    UsuariosCodigoPostal: TSmallintField;
    UsuariosDireccion: TStringField;
    UsuariosTelefono: TStringField;
    UsuariosCuit: TStringField;
    UsuariosIva: TStringField;
    UsuariosCondicionpago: TBooleanField;
    UsuariosNotas: TMemoField;
    LocalidadCodigoPostal: TSmallintField;
    LocalidadLocalidad: TStringField;
    BusquedaCodigo: TFloatField;
    BusquedaNombre: TStringField;
    BusquedaCodigoPostal: TSmallintField;
    UsuariosnLocal: TStringField;
    procedure UsuariosAfterPost(DataSet: TDataSet);
    procedure UsuariosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datos: TDatos;

implementation

{$R *.DFM}

procedure TDatos.UsuariosAfterPost(DataSet: TDataSet);
begin
        dbnavigator1.Visiblebuttons := [nbFirst, nbPrior, nbnext, nblast, nbinsert,
                                     nbdelete, nbedit];
        ordenar.visible := true;
        Panelbusquedas.Visible :=True;
        Listado.TabVisible := true;
        Mostrador.ActivePageIndex := Mostrador.tag;
end;

procedure TDatos.UsuariosBeforeInsert(DataSet: TDataSet);
begin
      dbnavigator1.Visiblebuttons := [nbpost,nbcancel];
      Mostrador.tag := Mostrador.ActivePageIndex;
      Listado.TabVisible := false;
      Panelbusquedas.Visible :=False;
      ordenar.visible := false;
end;

end.
