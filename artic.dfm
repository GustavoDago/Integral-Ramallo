object Formuarti: TFormuarti
  Left = 285
  Top = 199
  Width = 432
  Height = 325
  Caption = 'Administración de Artículos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFF888888FFFFFFFFFFFFFFFFFFFFFFFFF2000008FFFFFFFFFFFFFFFF
    FFFFFFFFF0000008FFFFFFFFFFFFFFFFFFFFFFFFF0888008FFF2FFFFFFFFFFFF
    FFFF808FF08880088F808FFFFFFFFFFFFF88000800888000020008FFFFFFFFFF
    FF808000088F88000080008FFFFFFFFFFF08F808888888880888000FFFFFFFFF
    FF8F8F888FFFFF088F88800FFFFFFFFFFF08F8F8F8F8F8FF08F8008FFFFFFFFF
    FF808F0F8F88888FF080008FFFFFFFF88808F8F8F8000888FF88008888FFFFF0
    000FF08F008888088F08000000FFFF0000FF08F80800088888F8800000FFFF0F
    8F8F0F80F08F80808FF8888800FFFF08F8FF08F0F080F08088F8F88800FFFF0F
    8F8F0880F08880808FF8888800FFFF0000FF08F8FF000808F8F8800000FFFFFF
    F00FF08F0FFFF00F8F88008FFFFFFFFFFF00F088F80008F8F888008FFFFFFFFF
    FFF08F088F8F8F8F0F80008FFFFFFFFFF208FFF00888F808F8F8000FFFFFFFFF
    F08F8F8FF00000FF8F888008FFFFFFFFF808F808FFFFFFF808F80082FFFFFFFF
    888080000F8F8F000080088FFFFFFFFFF2880082F0F8F008F20082FFFFFFFFFF
    FFFFFFFFF08F8008FFFFFFFFFFFFFFFFFFFFFFFFF0F8F008FFFFFFFFFFFFFFFF
    FFFFFFFFF0000008FFFFFFFFFFFFFFFFFFFFFFFFF8888888FFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFC0FFFFFF80FFFFFF80FFFFFF80EFFFF18047FFC00003FFC00
    001FFC00001FFC00001FFC00001FFC00001FE0000003E0000003C0000003C000
    0003C0000003C0000003C0000003F800001FFC00001FFE00001FF800001FF800
    000FF800000FF000001FF808083FFFF80FFFFFF80FFFFFF80FFFFFF80FFF}
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label4: TLabel
    Left = 385
    Top = 86
    Width = 28
    Height = 15
    Caption = 'punit'
  end
  object Solapa: TTabbedNotebook
    Left = 0
    Top = 0
    Width = 424
    Height = 207
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 1
    OnChange = SolapaChange
    object TTabPage
      Left = 4
      Top = 27
      Caption = '&Registro'
      object Label1: TLabel
        Left = 6
        Top = 14
        Width = 40
        Height = 16
        Caption = 'Código'
        FocusControl = Editcodiart
      end
      object Label2: TLabel
        Left = 159
        Top = 14
        Width = 68
        Height = 16
        Caption = 'Descripción'
        FocusControl = Editdescripart
      end
      object Label3: TLabel
        Left = 338
        Top = 110
        Width = 57
        Height = 16
        Caption = 'Proveedor'
      end
      object Label5: TLabel
        Left = 170
        Top = 62
        Width = 34
        Height = 16
        Caption = 'Costo'
        FocusControl = Editcosto
      end
      object Label6: TLabel
        Left = 246
        Top = 62
        Width = 55
        Height = 16
        Caption = 'Ganancia'
        FocusControl = Editganancia
      end
      object Label7: TLabel
        Left = 334
        Top = 62
        Width = 47
        Height = 16
        Caption = 'P. venta'
        FocusControl = Editpventa
      end
      object Label8: TLabel
        Left = 6
        Top = 110
        Width = 34
        Height = 16
        Caption = 'Stock'
        FocusControl = Editstockact
      end
      object Label9: TLabel
        Left = 110
        Top = 110
        Width = 42
        Height = 16
        Caption = 'Mínimo'
        FocusControl = Editstockmin
      end
      object Label10: TLabel
        Left = 222
        Top = 110
        Width = 46
        Height = 16
        Caption = 'Máximo'
        FocusControl = Editstockmax
      end
      object Label11: TLabel
        Left = 86
        Top = 62
        Width = 70
        Height = 16
        Caption = 'Bonificación'
        FocusControl = Editbonifica
      end
      object Label12: TLabel
        Left = 6
        Top = 62
        Width = 61
        Height = 16
        Caption = 'P. Unitario'
        FocusControl = Editpunit
      end
      object DBText1: TDBText
        Left = 336
        Top = 128
        Width = 57
        Height = 17
        Alignment = taCenter
        DataField = 'provedor'
        DataSource = Datarti
      end
      object Editcodiart: TDBEdit
        Left = 6
        Top = 37
        Width = 115
        Height = 24
        CharCase = ecUpperCase
        DataField = 'codiart'
        DataSource = Datarti
        MaxLength = 15
        TabOrder = 0
      end
      object Editdescripart: TDBEdit
        Left = 159
        Top = 37
        Width = 226
        Height = 24
        CharCase = ecUpperCase
        DataField = 'descripart'
        DataSource = Datarti
        MaxLength = 25
        TabOrder = 1
      end
      object Editcosto: TDBEdit
        Left = 170
        Top = 85
        Width = 50
        Height = 24
        DataField = 'costo'
        DataSource = Datarti
        TabOrder = 4
      end
      object Editganancia: TDBEdit
        Left = 244
        Top = 85
        Width = 50
        Height = 24
        DataField = 'ganancia'
        DataSource = Datarti
        TabOrder = 5
      end
      object Editpventa: TDBEdit
        Left = 335
        Top = 85
        Width = 50
        Height = 24
        DataField = 'pventa'
        DataSource = Datarti
        TabOrder = 6
      end
      object Editstockact: TDBEdit
        Left = 6
        Top = 129
        Width = 50
        Height = 24
        DataField = 'stockact'
        DataSource = Datarti
        TabOrder = 7
      end
      object Editstockmin: TDBEdit
        Left = 117
        Top = 129
        Width = 50
        Height = 24
        DataField = 'stockmin'
        DataSource = Datarti
        TabOrder = 8
      end
      object Editstockmax: TDBEdit
        Left = 227
        Top = 129
        Width = 50
        Height = 24
        DataField = 'stockmax'
        DataSource = Datarti
        TabOrder = 9
      end
      object Editbonifica: TDBEdit
        Left = 89
        Top = 85
        Width = 50
        Height = 24
        DataField = 'bonifica'
        DataSource = Datarti
        TabOrder = 3
      end
      object Editpunit: TDBEdit
        Left = 6
        Top = 85
        Width = 50
        Height = 24
        DataField = 'punit'
        DataSource = Datarti
        TabOrder = 2
      end
    end
    object TTabPage
      Left = 4
      Top = 27
      Caption = '&Grilla'
      object Grilla: TDBGrid
        Left = 0
        Top = 0
        Width = 416
        Height = 176
        Align = alClient
        DataSource = Datarti
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codiart'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'descripart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'punit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bonifica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'costo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ganancia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pventa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stockact'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stockmin'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stockmax'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'provedor'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 207
    Width = 424
    Height = 89
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object PanelBotones: TPanel
      Left = 215
      Top = 1
      Width = 208
      Height = 87
      Align = alRight
      Caption = ' '
      TabOrder = 0
      object DBLookupCombo1: TDBLookupCombo
        Left = 10
        Top = 8
        Width = 190
        Height = 26
        Hint = 'Proveedor'
        DataField = 'provedor'
        DataSource = Datarti
        LookupSource = DataProve
        LookupDisplay = 'nomprov'
        LookupField = 'codiprov'
        Options = [loColLines, loTitles]
        AutoSelect = False
        DropDownCount = 15
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = DBLookupCombo1Enter
        OnExit = DBLookupCombo1Exit
        OnKeyPress = DBLookupCombo1KeyPress
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 64
        Width = 206
        Height = 22
        DataSource = Datarti
        Align = alBottom
        TabOrder = 1
      end
      object Buscador: TEdit
        Left = 8
        Top = 40
        Width = 129
        Height = 23
        Hint = 'Búsquedas por Ordenación'
        CharCase = ecUpperCase
        MaxLength = 10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = BuscadorChange
        OnKeyPress = BuscadorKeyPress
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 214
      Height = 87
      Align = alClient
      Caption = 'Ordenar Por...'
      ItemIndex = 0
      Items.Strings = (
        '&Código '
        '&Descripción'
        'Código &Proveedor')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object Tablarti: TTable
    Active = True
    BeforeInsert = TablartiBeforeInsert
    AfterPost = TablartiAfterPost
    AfterCancel = TablartiAfterCancel
    DatabaseName = 'Agro'
    IndexFieldNames = 'codiart'
    TableName = 'ARTICULO.DB'
    Left = 111
    Top = 4
    object Tablarticodiart: TStringField
      DisplayLabel = 'Código'
      FieldName = 'codiart'
      Required = True
      EditMask = '>ccccccccccccccc;1;_'
      Size = 15
    end
    object Tablartidescripart: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'descripart'
      Required = True
      EditMask = '>ccccccccccccccccccccccccc;1;_'
      Size = 25
    end
    object Tablartipunit: TFloatField
      DisplayLabel = 'Precio Unitario'
      FieldName = 'punit'
      OnValidate = TablartipunitValidate
      currency = True
    end
    object Tablartibonifica: TFloatField
      DisplayLabel = 'Bonificación'
      FieldName = 'bonifica'
      OnValidate = TablartibonificaValidate
    end
    object Tablarticosto: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'costo'
      OnValidate = TablarticostoValidate
      currency = True
    end
    object Tablartiganancia: TFloatField
      DisplayLabel = 'Ganancia'
      FieldName = 'ganancia'
      OnValidate = TablartigananciaValidate
    end
    object Tablartipventa: TFloatField
      DisplayLabel = 'Precio Venta'
      FieldName = 'pventa'
      currency = True
    end
    object Tablartistockact: TFloatField
      DisplayLabel = 'Stock'
      FieldName = 'stockact'
    end
    object Tablartistockmin: TFloatField
      DisplayLabel = 'Mínimo'
      FieldName = 'stockmin'
    end
    object Tablartistockmax: TFloatField
      DisplayLabel = 'Máximo'
      FieldName = 'stockmax'
    end
    object Tablartiprovedor: TFloatField
      FieldName = 'provedor'
      Required = True
    end
  end
  object Datarti: TDataSource
    DataSet = Tablarti
    Left = 75
  end
  object TablaProve: TTable
    Active = True
    DatabaseName = 'Agro'
    IndexFieldNames = 'codiprov'
    TableName = 'PROVEDOR.DB'
    Left = 35
    object TablaProvenomprov: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'nomprov'
      Size = 30
    end
    object TablaProveempreprov: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'empreprov'
      Size = 25
    end
    object TablaProvecodiprov: TFloatField
      FieldName = 'codiprov'
    end
  end
  object DataProve: TDataSource
    DataSet = TablaProve
    Left = 6
    Top = 2
  end
end
