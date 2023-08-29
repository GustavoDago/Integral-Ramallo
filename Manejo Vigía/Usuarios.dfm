object FUsuarios: TFUsuarios
  Left = 273
  Top = 173
  Width = 431
  Height = 388
  Caption = 'Usuarios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFF000000FFFF00FFFF0FFFFFFFFF
    FF0FF07777700F00770FF0FFFFFFFFFFFF0F077777770007770F0FFFFFFFFFFF
    FFF07777777700777770FFFFFFFFFFFFFFF07777777700777770FFFFFFFFFFFF
    FFF000777777700077700FFFFFFFFFFFF000000777777770077770FFFFFFFFFF
    F0000007777777700777770FFFFFFFFF00000077777777770777770FFFFFFFF0
    0000007777777777000777000FFFFFF000000077777777777707777770FFFFF0
    0000000077777777770777770FFFFFF00000000077777777707777700FFFFFF0
    000000000777700707707700FFFFFFF000000000007700000770070FFFFFFFFF
    00000000000777770777770FFFFFFFFF00000000000000770777770FFFFFFFFF
    F0000000000000000000000FFFFFFFFFF0000000000000000000000FFFFFFFFF
    FF00000000000000000000FFFFFFFFFFFFFF00000000000000000FFFFFFFFFFF
    FFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFBC0F3DFFD8041BFFD00017FFE0000FFFE0000FFFE00007FF800003FF800
    001FF000001FE0000007E0000003E0000007E0000007E000000FE000001FF000
    001FF000001FF800001FF800001FFC00003FFF00007FFFFF81FFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Rep_Usu: TQuickRep
    Left = 19
    Top = 6
    Width = 168
    Height = 119
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = Rep_UsuAfterPrint
    BeforePrint = Rep_UsuBeforePrint
    DataSet = Usuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      100
      2970
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 15
    object PageFooterBand1: TQRBand
      Left = 6
      Top = 22
      Width = 157
      Height = 4
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        70.5555555555556
        2769.30555555556)
      BandType = rbPageFooter
      object QRExpr1: TQRExpr
        Left = 70
        Top = 0
        Width = 17
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1234.72222222222
          0
          299.861111111111)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39'Página '#39' + PageNumber'
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 6
      Top = 12
      Width = 157
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        88.1944444444444
        2769.30555555556)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          0
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Codigo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 12
        Top = 0
        Width = 32
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          211.666666666667
          0
          564.444444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nombre'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 45
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          793.75
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Codigo Postal'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 84
        Top = 0
        Width = 32
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1481.66666666667
          0
          564.444444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Direccion'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 117
        Top = 0
        Width = 13
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2063.75
          0
          229.305555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Telefono'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 131
        Top = 0
        Width = 14
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2310.69444444444
          0
          246.944444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cuit'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 147
        Top = 0
        Width = 3
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2592.91666666667
          0
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Iva'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 1
        Top = 2
        Width = 17
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          18.5208333333333
          42.3333333333333
          301.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Condicion de pago'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 59
        Top = 0
        Width = 7
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1040.69444444444
          0
          123.472222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Localidad'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 27
        Top = 2
        Width = 4
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          476.25
          35.2777777777778
          70.5555555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Notas'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 6
      Top = 17
      Width = 157
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        88.1944444444444
        2769.30555555556)
      BandType = rbDetail
      object QRExpr2: TQRExpr
        Left = 0
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          0
          0
          194.027777777778)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Codigo]'
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 12
        Top = 0
        Width = 32
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          211.666666666667
          0
          564.444444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Nombre]'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 45
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          793.75
          0
          194.027777777778)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[CodigoPostal]'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 84
        Top = 0
        Width = 32
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1481.66666666667
          0
          564.444444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Direccion]'
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 117
        Top = 0
        Width = 13
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2063.75
          0
          229.305555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Telefono]'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 131
        Top = 0
        Width = 14
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2310.69444444444
          0
          246.944444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Cuit]'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 147
        Top = 0
        Width = 3
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2592.91666666667
          0
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[Iva]'
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 1
        Top = 2
        Width = 13
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          18.5208333333333
          42.3333333333333
          230.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'IF(Usuarios.Condicionpago,'#39'Contado'#39','#39'Cuenta Corriente'#39')'
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 59
        Top = 0
        Width = 12
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1040.69444444444
          0
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Usuarios.nLocal'
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 27
        Top = 2
        Width = 4
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          476.25
          35.2777777777778
          70.5555555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Usuarios
        DataField = 'Notas'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object TitleBand1: TQRBand
      Left = 6
      Top = 6
      Width = 157
      Height = 6
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        2769.30555555556)
      BandType = rbTitle
      object QRLabel11: TQRLabel
        Left = 78
        Top = 2
        Width = 17
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1375.83333333333
          35.2777777777778
          299.861111111111)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Listado de Usuarios'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object Mostrador: TPageControl
    Left = 0
    Top = 0
    Width = 423
    Height = 282
    ActivePage = Listado
    Align = alClient
    TabOrder = 0
    object Listado: TTabSheet
      Caption = 'Listado'
      object Grilla: TDBGrid
        Left = 0
        Top = 0
        Width = 415
        Height = 254
        Align = alClient
        DataSource = DataUsu
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Direccion'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoPostal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nLocal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefono'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cuit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Iva'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Condicionpago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Notas'
            Visible = True
          end>
      end
    end
    object Individual: TTabSheet
      Caption = 'Individual'
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Código Usuario'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 0
        Top = 48
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 0
        Top = 88
        Width = 45
        Height = 13
        Caption = 'Dirección'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 0
        Top = 128
        Width = 65
        Height = 13
        Caption = 'Código Postal'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 0
        Top = 168
        Width = 46
        Height = 13
        Caption = 'Localidad'
        FocusControl = DBLookupComboBox1
      end
      object Label6: TLabel
        Left = 0
        Top = 208
        Width = 42
        Height = 13
        Caption = 'Teléfono'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 216
        Top = 8
        Width = 18
        Height = 13
        Caption = 'Cuit'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 216
        Top = 48
        Width = 15
        Height = 13
        Caption = 'Iva'
      end
      object Label9: TLabel
        Left = 216
        Top = 128
        Width = 28
        Height = 13
        Caption = 'Notas'
        FocusControl = DBMemo1
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 24
        Width = 64
        Height = 21
        DataField = 'Codigo'
        DataSource = DataUsu
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 0
        Top = 64
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nombre'
        DataSource = DataUsu
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 0
        Top = 104
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Direccion'
        DataSource = DataUsu
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 0
        Top = 144
        Width = 64
        Height = 21
        DataField = 'CodigoPostal'
        DataSource = DataUsu
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 0
        Top = 184
        Width = 134
        Height = 21
        DataField = 'nLocal'
        DataSource = DataUsu
        TabOrder = 4
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = DBLookupComboBox1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 0
        Top = 224
        Width = 76
        Height = 21
        DataField = 'Telefono'
        DataSource = DataUsu
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 216
        Top = 24
        Width = 82
        Height = 21
        DataField = 'Cuit'
        DataSource = DataUsu
        MaxLength = 13
        TabOrder = 6
      end
      object DBCheckBox1: TDBCheckBox
        Left = 216
        Top = 104
        Width = 129
        Height = 17
        Hint = 'Marcar para pago contado, desmarcar para cuenta corriente'
        Caption = 'Pago Contado'
        DataField = 'Condicionpago'
        DataSource = DataUsu
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBMemo1: TDBMemo
        Left = 216
        Top = 144
        Width = 185
        Height = 89
        DataField = 'Notas'
        DataSource = DataUsu
        TabOrder = 9
      end
      object DBComboBox1: TDBComboBox
        Left = 216
        Top = 64
        Width = 49
        Height = 21
        DataField = 'Iva'
        DataSource = DataUsu
        ItemHeight = 13
        Items.Strings = (
          'RI'
          'RNI'
          'EX'
          'CF')
        TabOrder = 7
      end
    end
  end
  object PanelBotones: TPanel
    Left = 0
    Top = 282
    Width = 423
    Height = 79
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 4
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 5
      Width = 203
      Height = 24
      DataSource = DataUsu
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
      Hints.Strings = (
        'Al primero'
        'Anterior'
        'Siguiente'
        'Al último'
        'Nuevo'
        'Borrar'
        'Editar'
        'Guardar'
        'Cancelar'
        'Refrescar datos')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Ordenar: TComboBox
      Left = 224
      Top = 4
      Width = 153
      Height = 24
      Hint = 'Ordene los usuarios por...'
      ItemHeight = 16
      TabOrder = 1
      Text = 'Código Usuario'
      OnChange = OrdenarChange
      Items.Strings = (
        'Código Usuario'
        'Nombre'
        'Localidad')
    end
    object PanelBusquedas: TNotebook
      Left = 4
      Top = 34
      Width = 415
      Height = 41
      Align = alBottom
      TabOrder = 2
      object TPage
        Left = 0
        Top = 0
        Caption = 'Codigo'
        object Label23: TLabel
          Left = 8
          Top = 8
          Width = 116
          Height = 16
          Caption = 'Buscar Cód Usuario'
          FocusControl = B_cod
        end
        object B_cod: TDBEdit
          Left = 136
          Top = 8
          Width = 109
          Height = 24
          DataField = 'Codigo'
          DataSource = Databus
          MaxLength = 6
          TabOrder = 0
          OnChange = B_codChange
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Usuario'
        object Label25: TLabel
          Left = 8
          Top = 9
          Width = 45
          Height = 16
          Caption = 'Nombre'
        end
        object B_nom: TDBEdit
          Left = 56
          Top = 8
          Width = 137
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Nombre'
          DataSource = Databus
          MaxLength = 6
          TabOrder = 0
          OnChange = B_nomChange
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Localidad'
        object Label26: TLabel
          Left = 8
          Top = 9
          Width = 55
          Height = 16
          Caption = 'Localidad'
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 72
          Top = 9
          Width = 134
          Height = 24
          DataField = 'CodigoPostal'
          DataSource = Databus
          KeyField = 'CodigoPostal'
          ListField = 'Localidad'
          ListSource = Datalocal
          TabOrder = 0
          OnEnter = DBLookupComboBox2Enter
          OnExit = DBLookupComboBox2Exit
        end
      end
    end
    object Bot_imprime: TBitBtn
      Left = 380
      Top = 5
      Width = 33
      Height = 25
      Hint = 'Imprimir Listado'
      TabOrder = 3
      OnClick = Bot_imprimeClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
        000000FF00000000000000000000000000000888888888888888888000000888
        0000000000088880000000000000000000000000000007777777777777777770
        0000077777777770000000700000077777777770999990700000077777777770
        000000700000077777777777777777700000000000000000000000000000FF0F
        FFFFFFFFFFF0FFFF0000FFF0FFFFFFFFFFFF0FFF0000FFFF0FFFFFFFFFFFF0FF
        0000FFFFF0FFFFFFFFFFFF0F0000FFFFF0FFFFFFFFFFFF0F0000FFFFF0FFFFFF
        FFFFFF0F0000FFFF0FFFFFFFFFFFF0FF0000FFF0FFFFFFFFFFFF0FFF0000FF00
        000000000000FFFF0000}
      Layout = blGlyphTop
    end
  end
  object Usuarios: TTable
    Active = True
    BeforeInsert = UsuariosBeforeInsert
    BeforeEdit = UsuariosBeforeEdit
    AfterPost = UsuariosAfterPost
    AfterCancel = UsuariosAfterPost
    OnNewRecord = UsuariosNewRecord
    DatabaseName = 'Evaluacion'
    SessionName = 'Default'
    IndexFieldNames = 'Codigo'
    TableName = 'CLIENTES.DB'
    Left = 260
    object UsuariosCodigo: TFloatField
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
      EditMask = '00-00000000-0;1;_'
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
    end
    object UsuariosNotas: TMemoField
      FieldName = 'Notas'
      BlobType = ftMemo
      Size = 10
    end
  end
  object Localidad: TTable
    Active = True
    DatabaseName = 'Evaluacion'
    SessionName = 'Default'
    IndexFieldNames = 'CodigoPostal'
    TableName = 'LOCALIDA.DB'
    Left = 312
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
  object Busqueda: TTable
    Active = True
    DatabaseName = 'Evaluacion'
    SessionName = 'Default'
    TableName = 'Bus_clie.db'
    Left = 363
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
    Left = 363
    Top = 24
  end
  object Datalocal: TDataSource
    DataSet = Localidad
    Left = 312
    Top = 24
  end
  object DataUsu: TDataSource
    AutoEdit = False
    DataSet = Usuarios
    Left = 264
    Top = 24
  end
end
