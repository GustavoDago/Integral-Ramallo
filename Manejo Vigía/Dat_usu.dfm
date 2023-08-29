object Datos: TDatos
  OldCreateOrder = False
  Left = 324
  Top = 105
  Height = 314
  Width = 468
  object Usuarios: TTable
    Active = True
    BeforeInsert = UsuariosBeforeInsert
    AfterPost = UsuariosAfterPost
    DatabaseName = 'Evaluación'
    SessionName = 'Default'
    IndexFieldNames = 'Codigo'
    TableName = 'CLIENTES.DB'
    Left = 12
    Top = 8
    object UsuariosCodigo: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Código Usuario'
      FieldName = 'Codigo'
    end
    object UsuariosNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 30
    end
    object UsuariosDireccion: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'Direccion'
      Size = 30
    end
    object UsuariosCodigoPostal: TSmallintField
      DisplayLabel = 'Código Postal'
      FieldName = 'CodigoPostal'
      Required = True
    end
    object UsuariosnLocal: TStringField
      DisplayLabel = 'Localidad'
      FieldKind = fkLookup
      FieldName = 'nLocal'
      LookupDataSet = Localidad
      LookupKeyFields = 'CodigoPostal'
      LookupResultField = 'Localidad'
      KeyFields = 'CodigoPostal'
      Lookup = True
    end
    object UsuariosTelefono: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'Telefono'
      Size = 12
    end
    object UsuariosCuit: TStringField
      FieldName = 'Cuit'
      EditMask = '00-000000-00;1;_'
      Size = 13
    end
    object UsuariosIva: TStringField
      FieldName = 'Iva'
      Required = True
      Size = 3
    end
    object UsuariosCondicionpago: TBooleanField
      DisplayLabel = 'Condicion de pago'
      FieldName = 'Condicionpago'
      Required = True
    end
    object UsuariosNotas: TMemoField
      FieldName = 'Notas'
      BlobType = ftMemo
      Size = 10
    end
  end
  object DataUsu: TDataSource
    AutoEdit = False
    DataSet = Usuarios
    Left = 8
    Top = 56
  end
  object Localidad: TTable
    Active = True
    DatabaseName = 'Evaluación'
    SessionName = 'Default'
    IndexFieldNames = 'CodigoPostal'
    TableName = 'LOCALIDA.DB'
    Left = 64
    Top = 8
    object LocalidadCodigoPostal: TSmallintField
      DisplayLabel = 'Código Postal'
      FieldName = 'CodigoPostal'
      Required = True
    end
    object LocalidadLocalidad: TStringField
      FieldName = 'Localidad'
      Required = True
      Size = 25
    end
  end
  object Datalocal: TDataSource
    DataSet = Localidad
    Left = 64
    Top = 56
  end
  object Busqueda: TTable
    Active = True
    DatabaseName = 'Evaluación'
    SessionName = 'Default'
    TableName = 'Bus_clie.db'
    Left = 115
    Top = 8
    object BusquedaCodigo: TFloatField
      FieldName = 'Codigo'
    end
    object BusquedaNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object BusquedaCodigoPostal: TSmallintField
      FieldName = 'CodigoPostal'
    end
  end
  object Databus: TDataSource
    DataSet = Busqueda
    Left = 115
    Top = 56
  end
end
