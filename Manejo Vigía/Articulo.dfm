object Farti: TFarti
  Left = 281
  Top = 149
  Width = 378
  Height = 353
  Caption = 'Art�culos'
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
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Rep_arti: TQuickRep
    Left = 47
    Top = 12
    Width = 168
    Height = 119
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = Rep_artiAfterPrint
    BeforePrint = Rep_artiBeforePrint
    DataSet = Articulos
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
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 15
    object PageFooterBand1: TQRBand
      Left = 6
      Top = 20
      Width = 157
      Height = 4
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
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
        Expression = #39'P�gina '#39' + PageNumber'
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 6
      Top = 12
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
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 16
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          0
          0
          282.222222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C�digo Art�culo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 18
        Top = 0
        Width = 26
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          317.5
          0
          458.611111111111)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Descripci�n'
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
        Frame.DrawBottom = True
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
        Caption = 'Precio Unitario'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 71
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1252.36111111111
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'costo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 83
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1464.02777777778
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ganancia'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 95
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1675.69444444444
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Precio Venta'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 107
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1887.36111111111
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stock actual'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 119
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2099.02777777778
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stock m�nimo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 132
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          2328.33333333333
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stock m�ximo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 57
        Top = 0
        Width = 11
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1005.41666666667
          0
          194.027777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Bonificaci�n'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 6
      Top = 16
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
      BandType = rbDetail
      object QRExpr2: TQRExpr
        Left = 0
        Top = 0
        Width = 16
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
          282.222222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[codiart]'
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 18
        Top = 0
        Width = 26
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          317.5
          0
          458.611111111111)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = '[descripart]'
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
        Expression = '[punit]'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 71
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
          1252.36111111111
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
        Expression = '[costo]'
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 83
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
          1464.02777777778
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
        Expression = '[ganancia]'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 95
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
          1675.69444444444
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
        Expression = '[pventa]'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 107
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
          1887.36111111111
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
        Expression = '[stockact]'
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 119
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
          2099.02777777778
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
        Expression = '[stockmin]'
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 132
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
          2328.33333333333
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
        Expression = '[stockmax]'
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 57
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
          1005.41666666667
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
        Expression = '[bonifica]'
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
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
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
        Width = 15
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
          264.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Listado de Art�culos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object Mostrador: TPageControl
    Left = 0
    Top = 0
    Width = 370
    Height = 247
    ActivePage = Listado
    Align = alClient
    TabOrder = 0
    object Listado: TTabSheet
      Caption = 'Listado'
      object Grilla: TDBGrid
        Left = 0
        Top = 0
        Width = 362
        Height = 219
        Align = alClient
        DataSource = Datarti
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
          end>
      end
    end
    object Individual: TTabSheet
      Caption = 'Individual'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 73
        Height = 13
        Caption = 'C�digo Art�culo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 112
        Top = 8
        Width = 56
        Height = 13
        Caption = 'Descripci�n'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 69
        Height = 13
        Caption = 'Precio Unitario'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 88
        Top = 64
        Width = 58
        Height = 13
        Caption = 'Bonificaci�n'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 168
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Costo'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 104
        Width = 46
        Height = 13
        Caption = 'Ganancia'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 88
        Top = 104
        Width = 61
        Height = 13
        Caption = 'Precio Venta'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 8
        Top = 152
        Width = 60
        Height = 13
        Caption = 'Stock actual'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 88
        Top = 152
        Width = 66
        Height = 13
        Caption = 'Stock M�nimo'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 168
        Top = 152
        Width = 67
        Height = 13
        Caption = 'Stock M�ximo'
        FocusControl = DBEdit10
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 94
        Height = 21
        CharCase = ecUpperCase
        DataField = 'codiart'
        DataSource = Datarti
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 24
        Width = 154
        Height = 21
        CharCase = ecUpperCase
        DataField = 'descripart'
        DataSource = Datarti
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 80
        Width = 64
        Height = 21
        DataField = 'punit'
        DataSource = Datarti
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 80
        Width = 64
        Height = 21
        DataField = 'bonifica'
        DataSource = Datarti
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 168
        Top = 80
        Width = 64
        Height = 21
        DataField = 'costo'
        DataSource = Datarti
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 120
        Width = 64
        Height = 21
        DataField = 'ganancia'
        DataSource = Datarti
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 88
        Top = 120
        Width = 64
        Height = 21
        DataField = 'pventa'
        DataSource = Datarti
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 168
        Width = 64
        Height = 21
        DataField = 'stockact'
        DataSource = Datarti
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 88
        Top = 168
        Width = 64
        Height = 21
        DataField = 'stockmin'
        DataSource = Datarti
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 168
        Top = 168
        Width = 64
        Height = 21
        DataField = 'stockmax'
        DataSource = Datarti
        TabOrder = 9
      end
    end
  end
  object PanelBotones: TPanel
    Left = 0
    Top = 247
    Width = 370
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
      Width = 175
      Height = 24
      DataSource = Datarti
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
      Hints.Strings = (
        'Al primero'
        'Anterior'
        'Siguiente'
        'Al �ltimo'
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
      Left = 192
      Top = 4
      Width = 113
      Height = 24
      Hint = 'Ordene los art�culos por...'
      ItemHeight = 16
      TabOrder = 1
      Text = 'C�digo Art�culo'
      OnChange = OrdenarChange
      Items.Strings = (
        'C�digo Art�culo'
        'Descripci�n')
    end
    object PanelBusquedas: TNotebook
      Left = 4
      Top = 34
      Width = 362
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
          Caption = 'Buscar C�d Art�culo'
          FocusControl = B_cod
        end
        object B_cod: TDBEdit
          Left = 136
          Top = 8
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'codiart'
          DataSource = Databus
          MaxLength = 6
          TabOrder = 0
          OnChange = B_codChange
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Descripcion'
        object Label25: TLabel
          Left = 8
          Top = 9
          Width = 68
          Height = 16
          Caption = 'Descripci�n'
        end
        object B_nom: TDBEdit
          Left = 84
          Top = 8
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'descripart'
          DataSource = Databus
          MaxLength = 6
          TabOrder = 0
          OnChange = B_nomChange
        end
      end
    end
    object Bot_imprime: TBitBtn
      Left = 323
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
  object Articulos: TTable
    Active = True
    BeforeInsert = ArticulosBeforeInsert
    BeforeEdit = ArticulosBeforeInsert
    AfterPost = ArticulosAfterPost
    AfterCancel = ArticulosAfterPost
    OnNewRecord = ArticulosNewRecord
    DatabaseName = 'Evaluacion'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'codiart'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'descripart'
        Attributes = [faRequired]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'provedor'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'punit'
        DataType = ftFloat
      end
      item
        Name = 'costo'
        DataType = ftFloat
      end
      item
        Name = 'ganancia'
        DataType = ftFloat
      end
      item
        Name = 'pventa'
        DataType = ftFloat
      end
      item
        Name = 'stockact'
        DataType = ftFloat
      end
      item
        Name = 'stockmin'
        DataType = ftFloat
      end
      item
        Name = 'stockmax'
        DataType = ftFloat
      end
      item
        Name = 'bonifica'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Fields = 'codiart'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'provedor'
        Fields = 'provedor'
      end
      item
        Name = 'descripart'
        Fields = 'descripart'
      end>
    IndexFieldNames = 'codiart'
    StoreDefs = True
    TableName = 'Articulo.DB'
    Left = 188
    object Articuloscodiart: TStringField
      DisplayLabel = 'C�digo Art�culo'
      FieldName = 'codiart'
      Required = True
      Size = 15
    end
    object Articulosdescripart: TStringField
      DisplayLabel = 'Descripci�n'
      FieldName = 'descripart'
      Required = True
      Size = 25
    end
    object Articulosprovedor: TFloatField
      DisplayLabel = 'Proveedor'
      FieldName = 'provedor'
      Required = True
    end
    object Articulospunit: TFloatField
      DisplayLabel = 'Precio Unitario'
      FieldName = 'punit'
      Required = True
      OnValidate = ArticulospunitValidate
    end
    object Articulosbonifica: TFloatField
      DisplayLabel = 'Bonificaci�n'
      FieldName = 'bonifica'
      OnValidate = ArticulospunitValidate
    end
    object Articuloscosto: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'costo'
      OnValidate = ArticuloscostoValidate
    end
    object Articulosganancia: TFloatField
      DisplayLabel = 'Ganancia'
      FieldName = 'ganancia'
      OnValidate = ArticuloscostoValidate
    end
    object Articulospventa: TFloatField
      DisplayLabel = 'Precio Venta'
      FieldName = 'pventa'
    end
    object Articulosstockact: TFloatField
      DisplayLabel = 'Stock actual'
      FieldName = 'stockact'
    end
    object Articulosstockmin: TFloatField
      DisplayLabel = 'Stock M�nimo'
      FieldName = 'stockmin'
    end
    object Articulosstockmax: TFloatField
      DisplayLabel = 'Stock M�ximo'
      FieldName = 'stockmax'
    end
  end
  object Datarti: TDataSource
    AutoEdit = False
    DataSet = Articulos
    Left = 184
    Top = 24
  end
  object Busqueda: TTable
    Active = True
    DatabaseName = 'Evaluacion'
    SessionName = 'Default'
    TableName = 'Bus_arti.db'
    Left = 235
    object Busquedacodiart: TStringField
      FieldName = 'codiart'
      Size = 15
    end
    object Busquedadescripart: TStringField
      FieldName = 'descripart'
      Size = 25
    end
  end
  object Databus: TDataSource
    DataSet = Busqueda
    Left = 235
    Top = 24
  end
end
