object FEquipos: TFEquipos
  Left = 71
  Top = 116
  Width = 617
  Height = 485
  HorzScrollBar.ButtonSize = 2
  VertScrollBar.ButtonSize = 2
  ActiveControl = GrillaUsu
  Caption = 'Administrador de Equipos Vigía'
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 225
    Top = 27
    Width = 8
    Height = 431
    Cursor = crHSplit
    Beveled = True
    ResizeStyle = rsUpdate
  end
  object Paginas: TPageControl
    Left = 0
    Top = 27
    Width = 225
    Height = 431
    ActivePage = Usuarios
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PaginasChange
    object Usuarios: TTabSheet
      Caption = '&Usuarios'
      object Splitter2: TSplitter
        Left = 0
        Top = 313
        Width = 217
        Height = 8
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
      end
      object arbol: TTreeView
        Left = 0
        Top = 321
        Width = 217
        Height = 82
        Align = alClient
        BorderWidth = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        Indent = 19
        ParentFont = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        OnChange = arbolChange
        OnEnter = arbolEnter
      end
      object GrillaUsu: TDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 217
        Height = 313
        Align = alTop
        DataSource = Datos.DataUsu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = PaginasChange
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre'
            Width = 170
            Visible = True
          end>
      end
    end
    object Articulos: TTabSheet
      Caption = '&Artículos'
      ImageIndex = 1
      object Grillarti: TDBGrid
        Left = 0
        Top = 0
        Width = 217
        Height = 403
        Align = alClient
        DataSource = Datos.Datarti
        Options = [dgTitles, dgColumnResize, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codiart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descripart'
            Visible = True
          end>
      end
    end
    object Localidades: TTabSheet
      Caption = '&Localidades'
      ImageIndex = 2
      object GrillaLoca: TDBGrid
        Left = 0
        Top = 0
        Width = 217
        Height = 403
        Align = alClient
        DataSource = Datos.Dataloca
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodigoPostal'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Localidad'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'provincia'
            Visible = True
          end>
      end
    end
    object informe: TTabSheet
      Caption = 'informe'
      ImageIndex = 3
      object Label45: TLabel
        Left = 16
        Top = 24
        Width = 75
        Height = 13
        Caption = 'Seleccione mes'
      end
      object Label46: TLabel
        Left = 16
        Top = 256
        Width = 190
        Height = 13
        Caption = 'Para refrescar los datos, pulse actualizar'
      end
      object meses: TListBox
        Left = 16
        Top = 40
        Width = 89
        Height = 169
        ExtendedSelect = False
        ItemHeight = 13
        Items.Strings = (
          'ENERO'
          'FEBRERO'
          'MARZO'
          'ABRIL'
          'MAYO'
          'JUNIO'
          'JULIO'
          'AGOSTO'
          'SEPTIEMBRE'
          'OCTUBRE'
          'NOVIEMBRE'
          'DICIEMBRE')
        TabOrder = 0
        OnClick = mesesClick
      end
      object actualizar: TButton
        Left = 16
        Top = 280
        Width = 75
        Height = 25
        Caption = 'Actualizar'
        TabOrder = 1
        OnClick = actualizarClick
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 609
    Height = 27
    ButtonWidth = 97
    Caption = 'ToolBar1'
    EdgeBorders = [ebBottom]
    EdgeOuter = esNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotImages = ImageList1
    Images = ImageList1
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object ToolButton2: TToolButton
      Left = 0
      Top = 2
      Width = 5
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Ordenar: TComboBox
      Left = 5
      Top = 2
      Width = 153
      Height = 21
      Hint = 'Ordenado por...'
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'Código Usuario'
      OnChange = OrdenarChange
      Items.Strings = (
        'Código Usuario'
        'Nombre')
    end
    object Buscador: TDBEdit
      Left = 158
      Top = 2
      Width = 114
      Height = 22
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Datos.Databus
      MaxLength = 6
      TabOrder = 2
      OnChange = BuscadorChange
    end
    object ToolButton1: TToolButton
      Left = 272
      Top = 2
      Width = 14
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object nav: TDBNavigator
      Left = 286
      Top = 2
      Width = 72
      Height = 22
      DataSource = Datos.DataUsu
      VisibleButtons = [nbInsert, nbDelete, nbEdit]
      Align = alLeft
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insertar'
        'Borrar'
        'Editar'
        'Grabar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = navBeforeAction
      OnClick = navClick
    end
    object ToolButton4: TToolButton
      Left = 358
      Top = 2
      Width = 11
      Caption = 'ToolButton4'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BImprime: TToolButton
      Left = 369
      Top = 2
      Caption = 'Usuario y árbol'
      DropdownMenu = MenUsu
      ImageIndex = 14
      MenuItem = Usuarioyarbol1
      Style = tbsDropDown
      OnClick = BImprimeClick
    end
  end
  object Panelventanas: TPanel
    Left = 233
    Top = 27
    Width = 376
    Height = 431
    Align = alClient
    BevelOuter = bvSpace
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 2
    object mostrador: TNotebook
      Left = 1
      Top = 29
      Width = 370
      Height = 397
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      PageIndex = 3
      ParentFont = False
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Usuario'
        object Label1: TLabel
          Left = 13
          Top = 13
          Width = 94
          Height = 16
          Caption = 'Código Usuario'
        end
        object Label2: TLabel
          Left = 13
          Top = 56
          Width = 49
          Height = 16
          Caption = 'Nombre'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 13
          Top = 111
          Width = 85
          Height = 16
          Caption = 'Código Postal'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 13
          Top = 140
          Width = 60
          Height = 16
          Caption = 'Localidad'
          FocusControl = DBLookupComboBox1
        end
        object Label6: TLabel
          Left = 13
          Top = 174
          Width = 54
          Height = 16
          Caption = 'Teléfono'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 13
          Top = 196
          Width = 22
          Height = 16
          Caption = 'Cuit'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 13
          Top = 230
          Width = 18
          Height = 16
          Caption = 'Iva'
        end
        object Label9: TLabel
          Left = 13
          Top = 286
          Width = 36
          Height = 16
          Caption = 'Notas'
          FocusControl = DBMemo1
        end
        object Label3: TLabel
          Left = 13
          Top = 84
          Width = 57
          Height = 16
          Caption = 'Dirección'
          FocusControl = DBEdit3
        end
        object Label10: TLabel
          Left = 13
          Top = 265
          Width = 93
          Height = 16
          Caption = 'Forma de pago'
        end
        object DBText1: TDBText
          Left = 111
          Top = 13
          Width = 56
          Height = 28
          Alignment = taCenter
          DataField = 'Codigo'
          DataSource = Datos.DataUsu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 111
          Top = 56
          Width = 225
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Nombre'
          DataSource = Datos.DataUsu
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 111
          Top = 84
          Width = 182
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Direccion'
          DataSource = Datos.DataUsu
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 111
          Top = 111
          Width = 56
          Height = 24
          DataField = 'CodigoPostal'
          DataSource = Datos.DataUsu
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 111
          Top = 140
          Width = 182
          Height = 24
          DataField = 'Nloca'
          DataSource = Datos.DataUsu
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 111
          Top = 167
          Width = 98
          Height = 24
          DataField = 'Telefono'
          DataSource = Datos.DataUsu
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 111
          Top = 196
          Width = 98
          Height = 24
          DataField = 'Cuit'
          DataSource = Datos.DataUsu
          MaxLength = 13
          TabOrder = 5
        end
        object DBCheckBox1: TDBCheckBox
          Left = 111
          Top = 265
          Width = 111
          Height = 13
          Hint = 'Marcar para pago contado, desmarcar para cuenta corriente'
          Caption = 'Pago Contado'
          DataField = 'Condicionpago'
          DataSource = Datos.DataUsu
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBMemo1: TDBMemo
          Left = 13
          Top = 307
          Width = 323
          Height = 42
          DataField = 'Notas'
          DataSource = Datos.DataUsu
          TabOrder = 8
        end
        object DBComboBox1: TDBComboBox
          Left = 111
          Top = 230
          Width = 56
          Height = 24
          DataField = 'Iva'
          DataSource = Datos.DataUsu
          ItemHeight = 16
          Items.Strings = (
            'RI'
            'RNI'
            'EX'
            'CF')
          TabOrder = 6
        end
        object BRegistro: TBitBtn
          Left = 14
          Top = 357
          Width = 109
          Height = 44
          Caption = '1er Registro'
          TabOrder = 9
          OnClick = BRegistroClick
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000FFFFFFFFFFFF
            FFFFF000000000000000FFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFF000000FF
            FFFFFF0BBB0F000000000FF07777700FFFFFFF0BBB0FFFFFFFFF0F077777770F
            FFFFFF00000000000000F07777777700FFFFFF09999999999999F07777777700
            FFFFFFF0999999999999F0007777777000FFFFF0999999999999000007777777
            700FFFF0999999999999000007777777700FFFF0999999999999000077777777
            770FFFFF09999999999900007777777777000FFF099999999999000077777777
            77770FF00000000000000000007777777777000F000000000000000000777777
            7770F0FF00FFFFFFFFFF000000077770070FF00000FFFFFFFFFF000000007700
            000FFFFFF00FFFFFFFFF000000000777770FFFFFF00FFFFFFFFF000000000000
            770FFFFFF00FFFFFFFFF00000000000000FFFFFFF0F0FFFFFFFF000000000000
            00FFFFFFFF00FFFFFFFF000000000000FFFFFFFFFF0000000000FF000000000F
            FFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Articulo'
        object Label11: TLabel
          Left = 28
          Top = 28
          Width = 91
          Height = 16
          Caption = 'Código Artículo'
          FocusControl = MART
        end
        object Label12: TLabel
          Left = 167
          Top = 28
          Width = 72
          Height = 16
          Caption = 'Descripción'
          FocusControl = DBEdit8
        end
        object Label13: TLabel
          Left = 28
          Top = 84
          Width = 88
          Height = 16
          Caption = 'Precio Unitario'
          FocusControl = DBEdit9
        end
        object Label14: TLabel
          Left = 125
          Top = 84
          Width = 96
          Height = 16
          Caption = 'Bonificación (%)'
          FocusControl = DBEdit10
        end
        object Label15: TLabel
          Left = 230
          Top = 84
          Width = 35
          Height = 16
          Caption = 'Costo'
          FocusControl = DBEdit11
        end
        object Label16: TLabel
          Left = 28
          Top = 135
          Width = 81
          Height = 16
          Caption = 'Ganancia (%)'
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 125
          Top = 135
          Width = 77
          Height = 16
          Caption = 'Precio Venta'
          FocusControl = DBEdit13
        end
        object Label18: TLabel
          Left = 28
          Top = 177
          Width = 73
          Height = 16
          Caption = 'Stock actual'
          FocusControl = DBEdit14
        end
        object Label19: TLabel
          Left = 125
          Top = 177
          Width = 80
          Height = 16
          Caption = 'Stock Mínimo'
          FocusControl = DBEdit15
        end
        object Label20: TLabel
          Left = 222
          Top = 177
          Width = 84
          Height = 16
          Caption = 'Stock Máximo'
          FocusControl = DBEdit16
        end
        object VART: TDBText
          Left = 28
          Top = 56
          Width = 139
          Height = 25
          DataField = 'codiart'
          DataSource = Datos.Datarti
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MART: TDBEdit
          Left = 28
          Top = 56
          Width = 139
          Height = 24
          CharCase = ecUpperCase
          DataField = 'codiart'
          DataSource = Datos.Datarti
          TabOrder = 0
          Visible = False
        end
        object DBEdit8: TDBEdit
          Left = 167
          Top = 56
          Width = 218
          Height = 24
          CharCase = ecUpperCase
          DataField = 'descripart'
          DataSource = Datos.Datarti
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 28
          Top = 98
          Width = 83
          Height = 24
          DataField = 'punit'
          DataSource = Datos.Datarti
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 125
          Top = 98
          Width = 84
          Height = 24
          DataField = 'bonifica'
          DataSource = Datos.Datarti
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 230
          Top = 98
          Width = 85
          Height = 24
          DataField = 'costo'
          DataSource = Datos.Datarti
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 28
          Top = 149
          Width = 83
          Height = 24
          DataField = 'ganancia'
          DataSource = Datos.Datarti
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 125
          Top = 149
          Width = 84
          Height = 24
          DataField = 'pventa'
          DataSource = Datos.Datarti
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 28
          Top = 191
          Width = 56
          Height = 24
          DataField = 'stockact'
          DataSource = Datos.Datarti
          TabOrder = 7
        end
        object DBEdit15: TDBEdit
          Left = 125
          Top = 191
          Width = 71
          Height = 24
          DataField = 'stockmin'
          DataSource = Datos.Datarti
          TabOrder = 8
        end
        object DBEdit16: TDBEdit
          Left = 222
          Top = 191
          Width = 56
          Height = 24
          DataField = 'stockmax'
          DataSource = Datos.Datarti
          TabOrder = 9
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Garantia'
        object Label21: TLabel
          Left = 28
          Top = 28
          Width = 69
          Height = 16
          Caption = 'Nº Garantía'
          FocusControl = Gar
        end
        object Label22: TLabel
          Left = 167
          Top = 28
          Width = 38
          Height = 16
          Caption = 'Fecha'
          FocusControl = Fecha
        end
        object Gar: TDBEdit
          Left = 28
          Top = 56
          Width = 112
          Height = 24
          DataField = 'ngarantia'
          DataSource = Datos.DataGar
          TabOrder = 0
        end
        object Fecha: TDBEdit
          Left = 167
          Top = 56
          Width = 84
          Height = 24
          DataField = 'fecompra'
          DataSource = Datos.DataGar
          MaxLength = 8
          TabOrder = 1
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Control'
        object Label24: TLabel
          Left = 28
          Top = 70
          Width = 126
          Height = 16
          Caption = 'Sensor Temp. Aceite'
          FocusControl = DBEdit20
        end
        object Label25: TLabel
          Left = 28
          Top = 111
          Width = 127
          Height = 16
          Caption = 'Sensor temp. Cilindro'
          FocusControl = DBEdit21
        end
        object Label26: TLabel
          Left = 222
          Top = 70
          Width = 132
          Height = 16
          Caption = 'Sensor presión Aceite'
          FocusControl = DBEdit22
        end
        object Label28: TLabel
          Left = 28
          Top = 153
          Width = 55
          Height = 16
          Caption = 'Cilindro 1'
          FocusControl = DBEdit23
        end
        object Label29: TLabel
          Left = 196
          Top = 153
          Width = 55
          Height = 16
          Caption = 'Cilindro 2'
          FocusControl = DBEdit24
        end
        object Label30: TLabel
          Left = 28
          Top = 196
          Width = 55
          Height = 16
          Caption = 'Cilindro 3'
          FocusControl = DBEdit25
        end
        object Label31: TLabel
          Left = 196
          Top = 196
          Width = 55
          Height = 16
          Caption = 'Cilindro 4'
          FocusControl = DBEdit26
        end
        object Label32: TLabel
          Left = 28
          Top = 251
          Width = 55
          Height = 16
          Caption = 'Cilindro 5'
          FocusControl = DBEdit27
        end
        object Label33: TLabel
          Left = 196
          Top = 251
          Width = 55
          Height = 16
          Caption = 'Cilindro 6'
          FocusControl = DBEdit28
        end
        object Label34: TLabel
          Left = 28
          Top = 293
          Width = 115
          Height = 16
          Caption = 'Presión aire turbina'
          FocusControl = DBEdit29
        end
        object Label35: TLabel
          Left = 153
          Top = 293
          Width = 48
          Height = 16
          Caption = 'Tablero'
          FocusControl = DBEdit30
        end
        object Label36: TLabel
          Left = 28
          Top = 336
          Width = 103
          Height = 16
          Caption = 'Instalac. eléctrica'
          FocusControl = DBEdit31
        end
        object Label37: TLabel
          Left = 222
          Top = 336
          Width = 131
          Height = 16
          Caption = 'Regul. voltaje y altern.'
          FocusControl = DBEdit32
        end
        object Label38: TLabel
          Left = 28
          Top = 376
          Width = 95
          Height = 16
          Caption = 'Funcionamiento'
          FocusControl = DBEdit33
        end
        object Label39: TLabel
          Left = 265
          Top = 376
          Width = 92
          Height = 16
          Caption = 'Próximo control'
          FocusControl = DBEdit34
        end
        object Label40: TLabel
          Left = 28
          Top = 419
          Width = 92
          Height = 16
          Caption = 'Observaciones'
          FocusControl = DBEdit35
        end
        object Label41: TLabel
          Left = 28
          Top = 28
          Width = 38
          Height = 16
          Caption = 'Fecha'
          FocusControl = DBEdit17
        end
        object DBEdit17: TDBEdit
          Left = 28
          Top = 41
          Width = 56
          Height = 24
          DataField = 'Fecha'
          DataSource = Datos.DataControles
          MaxLength = 8
          TabOrder = 0
        end
        object DBEdit20: TDBEdit
          Left = 28
          Top = 84
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          DataField = 'stemaceite'
          DataSource = Datos.DataControles
          TabOrder = 1
        end
        object DBEdit21: TDBEdit
          Left = 28
          Top = 125
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          DataField = 'stemcilind'
          DataSource = Datos.DataControles
          TabOrder = 2
        end
        object DBEdit22: TDBEdit
          Left = 222
          Top = 84
          Width = 182
          Height = 24
          CharCase = ecUpperCase
          DataField = 'spreaceite'
          DataSource = Datos.DataControles
          TabOrder = 3
        end
        object DBEdit23: TDBEdit
          Left = 28
          Top = 167
          Width = 154
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil1'
          DataSource = Datos.DataControles
          TabOrder = 4
        end
        object DBEdit24: TDBEdit
          Left = 196
          Top = 167
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil2'
          DataSource = Datos.DataControles
          TabOrder = 5
        end
        object DBEdit25: TDBEdit
          Left = 28
          Top = 209
          Width = 154
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil3'
          DataSource = Datos.DataControles
          TabOrder = 6
        end
        object DBEdit26: TDBEdit
          Left = 196
          Top = 209
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil4'
          DataSource = Datos.DataControles
          TabOrder = 7
        end
        object DBEdit27: TDBEdit
          Left = 28
          Top = 251
          Width = 154
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil5'
          DataSource = Datos.DataControles
          TabOrder = 8
        end
        object DBEdit28: TDBEdit
          Left = 196
          Top = 251
          Width = 153
          Height = 24
          CharCase = ecUpperCase
          DataField = 'cil6'
          DataSource = Datos.DataControles
          TabOrder = 9
        end
        object DBEdit29: TDBEdit
          Left = 28
          Top = 307
          Width = 112
          Height = 24
          CharCase = ecUpperCase
          DataField = 'preairetur'
          DataSource = Datos.DataControles
          TabOrder = 10
        end
        object DBEdit30: TDBEdit
          Left = 153
          Top = 307
          Width = 236
          Height = 24
          CharCase = ecUpperCase
          DataField = 'tablero'
          DataSource = Datos.DataControles
          TabOrder = 11
        end
        object DBEdit31: TDBEdit
          Left = 28
          Top = 349
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          DataField = 'instelectr'
          DataSource = Datos.DataControles
          TabOrder = 12
        end
        object DBEdit32: TDBEdit
          Left = 222
          Top = 349
          Width = 182
          Height = 24
          CharCase = ecUpperCase
          DataField = 'regvolalte'
          DataSource = Datos.DataControles
          TabOrder = 13
        end
        object DBEdit33: TDBEdit
          Left = 28
          Top = 389
          Width = 223
          Height = 24
          CharCase = ecUpperCase
          DataField = 'funcionami'
          DataSource = Datos.DataControles
          TabOrder = 14
        end
        object DBEdit34: TDBEdit
          Left = 265
          Top = 389
          Width = 97
          Height = 24
          DataField = 'Proxctrl'
          DataSource = Datos.DataControles
          MaxLength = 8
          TabOrder = 15
        end
        object DBEdit35: TDBEdit
          Left = 28
          Top = 432
          Width = 419
          Height = 24
          DataField = 'observigia'
          DataSource = Datos.DataControles
          TabOrder = 16
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Registro'
        object Label27: TLabel
          Left = 28
          Top = 84
          Width = 52
          Height = 16
          Caption = 'Vehículo'
          FocusControl = DBEdit19
        end
        object Label23: TLabel
          Left = 28
          Top = 28
          Width = 43
          Height = 16
          Caption = 'Equipo'
          FocusControl = DBLookupComboBox2
        end
        object DBEdit19: TDBEdit
          Left = 28
          Top = 100
          Width = 181
          Height = 24
          CharCase = ecUpperCase
          DataField = 'vehiculo'
          DataSource = Datos.DataReg
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 28
          Top = 48
          Width = 181
          Height = 24
          DataField = 'Nequipo'
          DataSource = Datos.DataReg
          TabOrder = 0
        end
        object BGarantia: TBitBtn
          Left = 28
          Top = 140
          Width = 138
          Height = 37
          Caption = 'Crear Garantía'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BGarantiaClick
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF70008888FFFFFFFFFFFFFFFFFFFFFFF770770
            008888FFFFFFFFFFFFFFFFFFFF707777770008888FFFFFFFFFFFFFFFF7707777
            777770008888FFFFFFFFFFFFF7077777777777770008888FFFFFFFFF77077777
            777777777770008888FFFFFF707777007777777700777700088FFFF770777777
            0007777777007777700FFFF7077777777770077777770077770FFF7707770077
            777770007777770070FFFF7077777700077777770007777770FFF77077777777
            70007777777007770FFFF7077777777777770007777777770FFF770777000777
            7777777007777770FFFF7077770BB0777777777777777770FFFF7077770BB000
            777777777777770FFFFF077777700CCC077777777777770FFFFF000777770CCC
            C0777777777770FFFFFFFFF0000770CCCC077777777770FFFFFFFFFFFFF0000C
            0000777777770FFFFFFFFFFFFFFFFF000000077777770FFFFFFFFFFFFFFFFFF0
            0CCCC0000770FFFFFFFFFFFFFFFFFFF00CCCCC0FF000FFFFFFFFFFFFFFFFFFFF
            0CCCCCC0FFFFFFFFFFFFFFFFFFFFFFFFF0CCCCCC0FFFFFFFFFFFFFFFFFFFFFFF
            FF0CCCCC0FFFFFFFFFFFFFFFFFFFFFFFFFF0CCCCC0FFFFFFFFFFFFFFFFFFFFFF
            FFFF0CCCC0FFFFFFFFFFFFFFFFFFFFFFFFFFF0C000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BControl: TBitBtn
          Left = 172
          Top = 140
          Width = 129
          Height = 37
          Caption = '1er Control'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BControlClick
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            04000000000000020000120B0000120B00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88F88FFFFFFFFFFFFFF
            FFFFFFFFFFFF88F8FF8FFFFFFFFFFFFFFFFFFFFFFFF88F8F8F8FFF0000000000
            000000000088F8F8F800F0808080808080808080888F8F8F8080000000000000
            0000000088F8F8F800F0808080808080808080888F8F8F808080000000000999
            99900088F8F88800F0F00080808999999999988F8F8880808080080809999008
            080999F8F888FFF0F0F000809990808080808999888FFFF08080080099000000
            0000089888FFFFF0F0F0008998888888888800899FFFFFF08080080998888888
            8888080998080800F0F000998880000000880080999999908080089908800000
            00880808999FFF90F0F000998880000000880080999FFF908080089908800000
            00880808999FFF90F0000099888000000088008099999990800F089908800000
            008808089908080000FF000998888888888800899000000000FFFFF998888888
            888808099FFFFFFFFFFFFFFF9900000000000099FFFFFFFFFFFFFFFF99908080
            80808999FFFFFFFFFFFFFFFFF99998080809999FFFFFFFFFFFFFFFFFFFF99999
            99999FFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Localidades'
        object Label42: TLabel
          Left = 28
          Top = 28
          Width = 85
          Height = 16
          Caption = 'Código Postal'
          FocusControl = MCP
        end
        object Label43: TLabel
          Left = 28
          Top = 78
          Width = 60
          Height = 16
          Caption = 'Localidad'
          FocusControl = DBEdit36
        end
        object Label44: TLabel
          Left = 28
          Top = 119
          Width = 56
          Height = 16
          Caption = 'Provincia'
        end
        object VCP: TDBText
          Left = 28
          Top = 48
          Width = 83
          Height = 25
          Alignment = taRightJustify
          DataField = 'CodigoPostal'
          DataSource = Datos.Dataloca
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MCP: TDBEdit
          Left = 28
          Top = 48
          Width = 83
          Height = 24
          DataField = 'CodigoPostal'
          DataSource = Datos.Dataloca
          TabOrder = 0
          Visible = False
        end
        object DBEdit36: TDBEdit
          Left = 28
          Top = 92
          Width = 168
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Localidad'
          DataSource = Datos.Dataloca
          TabOrder = 1
        end
        object DBComboBox2: TDBComboBox
          Left = 28
          Top = 133
          Width = 168
          Height = 24
          DataField = 'provincia'
          DataSource = Datos.Dataloca
          ItemHeight = 16
          Items.Strings = (
            'BUENOS AIRES'
            'CAPITAL FEDERAL'
            'CATAMARCA'
            'CHACO'
            'CHUBUT'
            'CORDOBA'
            'CORRIENTES'
            'ENTRE RIOS'
            'FORMOSA'
            'JUJUY'
            'LA PAMPA'
            'LA RIOJA'
            'MENDOZA'
            'MISIONES'
            'NEUQUEN'
            'RIO NEGRO'
            'SALTA'
            'SAN JUAN'
            'SAN LUIS'
            'SANTA CRUZ'
            'SANTA FE'
            'SANTIAGO DEL ESTERO'
            'TIERRA DEL FUEGO'
            'TUCUMAN')
          Sorted = True
          TabOrder = 2
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Informe'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 461
          Height = 460
          Align = alClient
          DataSource = Datos.DataInfo
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Fecha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nombre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Codvigia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vehiculo'
              Visible = True
            end>
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 370
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 1
    end
  end
  object MenUsu: TPopupMenu
    Images = ImageList1
    Left = 512
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      ImageIndex = 13
      RadioItem = True
      OnClick = Usuario1Click
    end
    object Usuarioyarbol1: TMenuItem
      Caption = 'Usuario y árbol'
      ImageIndex = 14
      RadioItem = True
      OnClick = Usuarioyarbol1Click
    end
    object ListadodeUsuarios1: TMenuItem
      Caption = 'Listado de Usuarios x Ordenación'
      ImageIndex = 15
      RadioItem = True
      OnClick = ListadodeUsuarios1Click
    end
  end
  object ImageList1: TImageList
    Left = 480
    Bitmap = {
      494C010110001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001001000000000000028
      000000000000000000000000000000000000107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E107E107E107E0000107E107E107E
      107E107E107E107E107E0000107E107E107E107E107E107E107E107E0000EF01
      EF01EF01EF01EF01EF01EF01EF010000EF01EF01EF01EF01EF01EF01EF01EF01
      0000EF01EF01EF01EF01EF01EF01EF01EF010000107E107E107E107E107E107E
      107E107E0000107E107E107E107E107E107E0000000000000000000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DF75E00000000FF7FFF7FFF7F0000000000000000
      00000000000000000000007C007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF01EF01F75E0000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FF75E007C007C007CEF3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF01EF01EF01EF010000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FF75EF75E007CEF3DEF3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75EF75E00000000
      0000F75E0000EF3DEF3DEF01EF01F75EF75EFF7FFF7FFF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7FF75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F75EF75EF75E0000000000000000F75EF75EF75EF75E0000
      F75EF75E000000000000EF01EF0100000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7FF75E007CEF3D000000000000000000000000F75EF75E
      00000000000000000000000000000000000000000000000000000000F75EF75E
      0000000000000000F75EF75EF75EF75E0000000000000000F75EF75EF75E0000
      0000F75E000000000000EF01EF0100000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000000000000000F75E007CEF3D00000000000000000000F75EF75EF75E
      F75E000000000000000000000000000000000000000000000000F75EF75EF75E
      F75E000000000000F75EF75EF75EF75E0000000000000000F75EF75EF75EF75E
      0000F75EF75EF75E0000EF01EF0100000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75E0000000000000000000000000000000000000000000000000000F75EF75E
      F75E000000000000F75EEF3DF75EF75E0000000000000000F75EF75EF75EF75E
      F75E0000F75EF75E0000EF01EF0100000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75EF75E000000000000000000000000000000000000000000000000F75EF75E
      F75EF75E000000000000F75EF75E000000000000000000000000F75EF75EF75E
      F75EF75EF75EF75EF75EEF01EF0100000000FF7F0000FF7F0000000000000000
      FF7FFF7FFF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75EF75EF75E00000000000000000000000000000000000000000000F75EF75E
      F75EF75EF75E0000000000000000000000000000000000000000F75EF75E0000
      F75EF75E0000F75E0000EF01EF01000000000000000000000000000000000000
      FF7F0000000000000000F75E007CEF3D0000000000000000000000000000F75E
      F75EF75EF75EF75E00000000000000000000000000000000000000000000F75E
      F75EF75EF75EF75E0000000000000000000000000000000000000000F75EF75E
      F75EF75EF75EF75E0000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D0000000000000000000000000000F75E
      F75E0000F75E000000000000000000000000000000000000000000000000F75E
      F75E0000F75E0000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D00000000000000000000000000000000
      F75EF75EF75E0000000000000000000000000000000000000000000000000000
      F75EF75EF75E0000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      00000000000000000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      00000000000000000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F75E1F00000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000000000000000
      00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DF75E00000000000000000000000000000000
      EF3DEF3DEF3D0000F75E1F001F001F0000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7F00000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E0000EF3DF75E0000000000000000000000000000
      00000000EF3D00001F001F001F001F00F75EF75E000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7F00000000000000000000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000000000000000
      EF3D0000EF3D1F001F001F001F001F001F00F75E007C00000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7F0000000000000000F75EF75EF75EF75EF75EEF3DF75E
      EF3DF75E007CF75E1F001F00F75E00000000000000000000000000000000EF3D
      FF7FEF3D0000000000001F001F00F75E00000000007C007C007C007C007C007C
      007C00000000000000000000000000000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7F0000000000000000F75EE003F75EF75EF75EF75EF75E
      F75EF75EE003F75EF75EF75EF75E00000000000000000000FF7FFF7FEF3DFF7F
      FF7FFF7FEF3DFF7FEF3D1F001F00F75E0000007C007C0F3C007C007C007C007C
      007C000000000000FF03FF03000000000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F00000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E000000000000000000000000FF7FFF7FFF7F
      EF3DEF3DFF7F000000001F001F00F75E0000007C007C007C007C007C007C007C
      FF03FF0300000000FF03FF03FF0300000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7F00000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E00000000000000000000FF7F0000FF7F0000
      EF3DEF3DEF3DFF7FEF3D1F001F00F75E0000007C007C007C007C007C00000000
      FF03000000001F00FF03FF03FF03FF030000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F00000000
      FF7F00000000FF7FEF3D1F001F00F75E0000F75EF75EF75EF75E00000000F75E
      EF3D0000000000001F000000FF03FF030000FF7F0000FF7F0000000000000000
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EF75EEF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000F75EF75EF75E00000000FF7FFF7FFF7FEF3D00000000
      EF3D00000000FF7FEF3D1F001F00F75E0000F75EF75EF75E00000000EF3DF75E
      EF3D00000000EF3DEF3DEF3DFF03FF03FF030000000000000000000000000000
      FF7F0000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7F0000FF7FFF7F
      FF7F0000FF7FFF7FEF3D1F001F00F75E00000000000000000000000000000000
      000000001F000000E03DEF3D00001F00FF030000000000000000000000000000
      FF7FFF7FFF7F000000000000000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7FEF3DFF7F
      FF7FFF7FFF7FFF7F00001F001F00F75E0000000000000000000000000000E03D
      E03DFF7F0000FF7FFF7FF75EEF3D000000000000000000000000000000000000
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F0000
      00000000FF7FFF7FEF3D1F001F00F75E0000000000000000000000000000E07F
      E07FE03DFF7F0000F75EEF3D0000000000000000000000000000000000000000
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000EF3D000000000000FF7F
      FF7FFF7F0000000000001F001F00F75E0000000000000000000000000000E03D
      E07FE07FE03DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7F0000EF3D000000001F001F00F75E00000000000000000000000000000000
      0000E03DE03DE03D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EF3D000000001F001F00F75E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DF75E00000000000000000000000000000000
      EF3DEF3DEF3D0000000000000000000000000000000000000000000000000000
      000000000000000000000000EF3D00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E0000EF3DF75E0000000000000000000000000000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DEF3DFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000000000000000
      EF3D0000EF3D0000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF3DEF3DEF3D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF75EF75EF75EF75EF75EEF3DF75E
      EF3DF75E007CF75E1F001F00F75E00000000000000000000000000000000EF3D
      FF7FEF3D00000000000000000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3D00000000FF7F000000000000000000000000
      000000000000000000000000000000000000F75EE003F75EF75EF75EF75EF75E
      F75EF75EE003F75EF75EF75EF75E00000000000000000000FF7FFF7FEF3DFF7F
      FF7FFF7FEF3DFF7FEF3D00000000000000000000000000000000007C007C007C
      00000000EF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E000000000000000000000000FF7FFF7FFF7F
      EF3DEF3DFF7F000000000000000000000000EF3DEF3D007C007C0000EF3DEF3D
      007C007CEF3DEF3DEF3DFF7F0000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E00000000000000000000FF7F0000FF7F0000
      EF3DEF3DEF3DFF7FEF3D0000000000000000EF3D0000007C0000000000000000
      0000EF3DEF3DEF3DFF7FFF7F000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      E003E003EF3DFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F00000000
      FF7F00000000FF7FEF3DEF3DEF3D00000000EF3D007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007CEF3DEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      FF03FF03EF3DFF7FFF7FFF7F00000000000000000000F75EF75EEF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000F75EF75EF75E00000000FF7FFF7FFF7FEF3D00000000
      EF3D00000000FF7FEF3DEF3DEF3D00000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CFF7FFF7F000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7F0000FF7FFF7F
      FF7F0000FF7FFF7FEF3D0000000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CFF7FFF7F000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3DFF7FFF7F000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7FEF3DFF7F
      FF7FFF7FFF7FFF7F00000000000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3DFF7FFF7F0000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F0000
      00000000FF7FFF7FEF3D0000EF3D000000000000007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007C000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D00000000FF7F0000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000EF3D000000000000FF7F
      FF7FFF7F000000000000EF3D00000000000000000000007C0000000000000000
      0000007C007C000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7F0000EF3D000000000000000000000000000000000000007C007C007C007C
      007C00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DEF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DEF3D0000000000000000
      00000000000000000000EF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000000000000000F75EF75E
      000000000000F75E000000000000000000000000000000000000007C007C007C
      00000000EF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75E00000000000000000000F75E00000000000000000000F75EF75EF75E
      F75E0000F75EF75E00000000000000000000EF3DEF3D007C007C0000EF3DEF3D
      007C007CEF3DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75E00000000000000000000F75E000000000000000000000000F75EF75E
      F75E00000000F75E00000000000000000000EF3D0000007C0000000000000000
      0000EF3DEF3DEF3D00000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      E003E003EF3D0000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000000000000000F75EF75E
      F75EF75E0000F75EF75EF75E000000000000EF3D007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007CEF3DEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      FF03FF03EF3D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75EF75E
      F75EF75EF75E0000F75EF75E000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007C00000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75EF75EF75EF75EF75EF75EF75E00000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007C00000000000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3D000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75E0000F75EF75E0000F75E000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      F75EF75EF75EF75EF75EF75E0000000000000000007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007C000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000007C007C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C007C007C
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFBFFFFFEFFFFF30001FFFFFC7FFFE1
      0000FFFFFE3FFFE10000FFFFFF73C2400001FFFFFFC380330001F0FFF0C08033
      0001E07FE04000130011E03FE00000030011C03FC02100030011801F801F0003
      0011801F801F0013E011803F803F0013E011C03FC03F8013E011C03FC03FFC73
      E1F1E07FE07FFFF3E1F1FFFFFFFFFFF3FFFFFFFFFFFFFFF3FFFF0007C001FE21
      FFFF00078000FC201CFF00070000F40000FF00070000E00100FF00070000E001
      00E700070000E0010003001F000080010641001F0000800108C1001FC0008001
      18C0001FF803C001FF00E01FFC01E001FC03E01FFE01C001FC07E01FFF00C001
      FC0BE1FFFFFFFC31FF17E1FFFFFFFC31FFFFFFFFFFFF0000C001FE3FFFFB0000
      8004FC3FFFF10000FFFEF42F800000000003E007000000000003E00700000000
      0003E007000000000003800100000000FFFF800100000000C011800100000000
      F80BC00700000000FC05E00700010000FE03C003803F0000FF01C007C03F0000
      FFFFFC3FE0FF0000FFFFFC3FFFFF0000FFFFFFFFFFFF8003FFFFFFFBFFFF0000
      FFFFFFF3FFFF0000FFFF8000FFFF0000FFFF000080000000F097000000000000
      E00F000800000000E00F001800380000C007000000380000800300180000BFF7
      800300180018EFFB800300010018F7FDC007803F0001F7FDC007C03FFFFFF7FD
      E007E0FFFFFFDFFFFF1FFFFFFFFF800700000000000000000000000000000000
      000000000000}
  end
  object MenuArti: TPopupMenu
    Images = ImageList1
    Left = 512
    Top = 24
    object Artculo1: TMenuItem
      Caption = 'Artículo'
      ImageIndex = 5
      OnClick = Artculo1Click
    end
    object ListadodeArtculosxordenacin1: TMenuItem
      Caption = 'Listado de Artículos x ordenación'
      ImageIndex = 11
      OnClick = ListadodeArtculosxordenacin1Click
    end
  end
  object Menuinfo: TPopupMenu
    Images = ImageList1
    Left = 536
    Top = 24
    object ListadoInforme: TMenuItem
      Caption = 'Listado de controles x ordenación'
      Default = True
      ImageIndex = 6
      OnClick = ListadoInformeClick
    end
  end
  object MenuLoca: TPopupMenu
    Images = ImageList1
    Left = 536
    object ListadodeLocalidades1: TMenuItem
      Caption = 'Listado de Localidades'
      Default = True
      ImageIndex = 12
      OnClick = ListadoInformeClick
    end
  end
end
