�
 TFORMVENTA 0�@  TPF0
TFormVenta	FormVentaLeft� TopWidth�Height�CaptionSistema de VentasColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterPixelsPerInch`
TextHeight 	TSplitter	Splitter1Left Top� Width�HeightCursorcrVSplitAlignalBottomBeveled	  TTabbedNotebooksolapasLeft Top8Width�Height� AlignalClientTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Pitch
fpVariableTabFont.StylefsItalic TabOrder  TTabPage LeftTopCaption&Grilla TDBGridGrillaLeft Top Width�Height� AlignalClient
DataSource	DataVentaOptionsdgTitlesdgIndicatordgColumnResize
dgColLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDelete ReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style Columns	AlignmenttaCenterExpanded	FieldNameCodigoWidth&Visible	 Expanded	FieldName
fechafactuVisible	 Expanded	FieldNameTipoVisible	 Expanded	FieldNamefactunumVisible	 Expanded	FieldNameNclienteVisible	 Expanded	FieldNameContadoVisible	 Expanded	FieldName	CanceladoVisible	     TTabPage LeftTopCaption&Forma de pago TPanelGChequesLeft Top Width�HeightlAlignalClientTabOrder TDBGridGrillaChequesLeftTopWidth�HeightNAlignalClientBorderStylebsNoneCtl3D	
DataSource
DataChequeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style Options	dgEditingdgTitles
dgRowLinesdgTabsdgAlwaysShowSelection ParentCtl3D
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldNamenumeroWidthWVisible	 Expanded	FieldNamefechequeWidthIVisible	 Expanded	FieldName	imporcheqWidthUVisible	 	AlignmenttaCenterDropDownRows
Expanded	FieldNamenbancoWidth� Visible	    TPanel
PanelPagosLeftTopOWidth�HeightAlignalBottom
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder TLabelEtiquetaTotalLeftTopWidthHeightCaptionTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameBook Antiqua
Font.StylefsBold 
ParentFont  TDBTextDBPAGADOLeft.TopWidthAHeight	AlignmenttaCenterColor	clBtnFace	DataFieldTPagado
DataSource	DataVentaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold ParentColor
ParentFont  TLabelEtiqEfectivoLeft� TopWidth)HeightCaptionEfectivoFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameBook Antiqua
Font.StylefsBoldfsItalic 
ParentFont  TLabel	LbChequesLeftTopWidth)HeightCaptionChequesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameBook Antiqua
Font.StylefsBoldfsItalic 
ParentFont  TDBEditDBEefectivoLeft� TopWidthEHeight	DataFieldEfectivo
DataSource	DataVentaTabOrder   TDBEditDBEdit5Left4TopWidthEHeight	DataFieldCheques
DataSource	DataVentaTabOrder    TDBRadioGroup	RadioPagoLeft Top Width�Height AlignalTopColumns	DataFieldContado
DataSource	DataVentaItems.StringsContadoCuenta Corriente TabOrder OnChangeRadioPagoClick    	TNotebooklibroLeft Top Width�Height8AlignalTop	PageIndexTabOrder TPage Left Top CaptionDefault TButtonBotonaceptarLeftTopWidthYHeightCaptionAceptarTabOrderOnClickBotonaceptarClick  TButtonBotoncancelarLeftnTopWidthYHeightCancel	CaptionCancelarTabOrderOnClickBotoncancelarClick  TPanel
PanelProveLeft TopWidth�HeightAlignalBottomEnabledTabOrder  TDBTextDBcodigoLeftTopWidth!HeightHintC�digo Venta	AlignmenttaCenterColorclBlack	DataFieldCodigo
DataSource	DataVentaFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold ParentColor
ParentFontParentShowHintShowHint	  TBevelBevel1LeftTopWidth!HeightShapebsFrameStylebsRaised  TDBComboBoxTiposLeft8TopWidth-HeightHintTipos de FacturaStylecsDropDownList	DataFieldTipo
DataSource	DataVentaDropDownCountFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
ItemHeightItems.StringsFA AND ANC AFA BND BNC B 
ParentFontParentShowHintShowHint	TabOrderOnExit	TiposExit  TDBLookupCombo	ListaclieLeft`TopWidth� HeightHintListado de Clientes	DataFieldCodcli
DataSource	DataVentaLookupSourceDataclieLookupDisplayNombre;Cuit;IvaLookupFieldCodigoOptionsloTitles DropDownCountDropDownWidth"ParentShowHintShowHint	TabOrderOnEnterListaclieEnterOnExitListaclieExit
OnKeyPressListaclieKeyPress  TDBEditEditfactunumLeftgTopWidthRHeightHint
N� Factura	DataFieldfactunum
DataSource	DataVenta	MaxLengthParentShowHintShowHint	TabOrder  TDBEditDBFechaLeft(TopWidth5HeightHintFecha	DataField
fechafactu
DataSource	DataVenta	MaxLengthParentShowHintShowHint	TabOrder     TPage Left Top Captionnueva TDBNavigatorDBNavegadorLeftTopWidth� Height
DataSource	DataVentaVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbEdit	nbRefresh Ctl3D	Hints.Strings
Al primeroAnterior	Siguiente	Al �ltimoNuevoBorrarEditarGuardarCancelarRefrescar datos ParentCtl3DParentShowHintConfirmDeleteShowHint	TabOrder   	TComboBoxindiceLeft� TopWidth� HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.PitchfpFixed
Font.Style 
ItemHeight
ParentFontTabOrderTextC�digoOnChangeindiceChangeItems.StringsC�digoTipo y N�mero   TEdit	BuscodigoLeftTopWidth$HeightHintescriba c�digo a buscarColorclBlackFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnChangeBuscodigoChange
OnKeyPressBuscodigoKeyPress  	TComboBoxbuscafacLeft0TopWidth9HeightHint&Seleccione tipo de factura para buscar
ItemHeightTabOrderOnChangebuscafacChangeItems.StringsFA AND ANC AFA BND BNC B   	TMaskEditbuscanumLeftnTopWidthTHeightHintEscriba n� de factura a buscarEditMask!0000\-00000000;1;.	MaxLengthTabOrderText    -        OnChangebuscafacChange    TPanelPanelgrillaLeft Top� Width�Height� AlignalBottomTabOrder TDBGridGLineaLeftTopWidth�Height� AlignalClientCtl3D
DataSource	DataLineaOptions	dgEditingdgTitlesdgIndicator
dgColLines
dgRowLinesdgConfirmDeletedgCancelOnExit ParentCtl3DReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldNamecantidadVisible	 Expanded	FieldNameCodiartWidthfVisible	 Expanded	FieldNamepunitWidthYVisible	 Expanded	FieldNameBonificaVisible	 Expanded	FieldNameValorWidthoVisible	    TPanelPanelTotalesLeftTop� Width�Height0AlignalBottom
BevelOuterbvNoneBorderWidthBorderStylebsSingleTabOrder TLabel	EtiqSubtoLeft	TopWidth0HeightCaptionSubtotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelEtiqBoniLeft� TopWidthGHeightCaptionBonificaci�nFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelEtiqIvaLeft	TopWidthPHeightCaptionIva FacturadoFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel1Left� TopWidth(HeightCaptionTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.StylefsBold 
ParentFontTransparent	  TDBEditDBEdit1LeftHTop WidthiHeight	DataFieldsubto
DataSource	DataVentaTabOrder   TDBEditDBEdit2LeftTop WidthQHeight	DataFieldbonifica
DataSource	DataVentaTabOrder  TDBEditDBEdit3Left`TopWidthQHeight	DataFieldivafact
DataSource	DataVentaTabOrder  TDBEditDBEdit4Left� TopWidthiHeight	DataFieldtotal
DataSource	DataVentaTabOrder   TPanel	PanelartiLeftTop� Width�HeightAlignalBottomAutoSize	BorderWidthTabOrderVisible TDBLookupComboListartiLeft TopWidth�HeightHintListado de Art�culos	DataFieldCodiart
DataSource	DataLineaLookupSourceDatartiLookupDisplay"codiart;descripart;pventa;stockactLookupFieldcodiartOptionsloTitles AnchorsakLeftakTopakRightakBottom DropDownCountParentShowHintShowHint	TabOrder OnExitListartiExit
OnKeyPressListartiKeyPress    TPanel	invisibleLeft@Top Width� Heighte
BevelOuterbvNoneColorclTealTabOrderVisible  TTableTVentaActive	BeforeInsertTVentaBeforeInsert
BeforeEditTVentaBeforeEdit
BeforePostTVentaBeforePost	AfterPostTVentaAfterPostAfterCancelTVentaAfterCancelBeforeDeleteTVentaBeforeDeleteOnNewRecordTVentaNewRecordDatabaseNameagroIndexFieldNamesCodigo	TableName	VENTAS.DBLeftDTop$ TFloatFieldTVentaCodigoDisplayLabelC�digo	FieldNameCodigo  
TDateFieldTVentafechafactuDisplayLabelFechaDisplayWidth	FieldName
fechafactuRequired	EditMask!99/99/00;1;.  TStringField
TVentaTipoDisplayWidth	FieldNameTipoRequired	Size  TStringFieldTVentafactunumDisplayLabel
N� FacturaDisplayWidth	FieldNamefactunumRequired	EditMask0000-00000000;1;_Size  TBooleanFieldTVentaContadoDisplayLabelForma de pagoDisplayWidth	FieldNameContadoRequired	DisplayValuesContado;Cuenta Corriente  TBooleanFieldTVentaCanceladoDisplayWidth	FieldName	CanceladoDisplayValuesS�;No  TCurrencyFieldTVentasubtoDisplayLabelSubtotalDisplayWidth
	FieldNamesubtoVisible  TCurrencyFieldTVentabonificaDisplayWidth
	FieldNamebonificaVisible  TCurrencyFieldTVentaivafactDisplayLabelIvaDisplayWidth
	FieldNameivafactVisible  TCurrencyFieldTVentatotalDisplayLabelTotalDisplayWidth	FieldNametotal  TCurrencyFieldTVentaEfectivo	FieldNameEfectivoVisible
OnValidateTVentaEfectivoValidate  TStringFieldTVentaV	FieldNameVVisibleSize  TCurrencyFieldTVentaTPagado	FieldNameTPagadoVisible  TFloatFieldTVentaCodcliDisplayLabelC�d. cliente	FieldNameCodcliRequired	  TStringFieldTVentaNclienteDisplayLabelNombre cliente	FieldKindfkLookup	FieldNameNclienteLookupDataSetClientesLookupKeyFieldsCodigoLookupResultFieldNombre	KeyFieldsCodcliLookup	  TCurrencyFieldTVentaCheques	FieldNameCheques   TDataSource	DataVentaAutoEditDataSetTVentaLeft`Top$  TTableTablartiActive	DatabaseNameagroIndexFieldNamescodiart	TableNameARTICULO.DBLeft� TopD TStringFieldTablarticodiartDisplayLabelC�digo art�culo	FieldNamecodiartRequired	Size  TStringFieldTablartidescripartDisplayLabelDescripci�n	FieldName
descripartRequired	Size  TFloatFieldTablartiprovedor	FieldNameprovedorRequired	  TFloatFieldTablartistockactDisplayLabelStock Actual	FieldNamestockactVisible  TFloatFieldTablartipventaDisplayLabelPrecio Venta	FieldNamepventaVisibleDisplayFormat#####.##   TDataSourceDatartiAutoEditDataSetTablartiLeft� TopD  TTableTLineaActive	OnCalcFieldsTLineaCalcFieldsDatabaseNameagroIndexFieldNames	CodigofacMasterFieldsCodigoMasterSource	DataVentaReadOnly		TableNameLINEAVEN.DBLeft� Top$ TIntegerFieldTLineaCodigofacDisplayLabelN� factura 	FieldName	CodigofacVisible  TFloatFieldTLineacantidad	AlignmenttaCenterDisplayLabelCantidadDisplayWidth	FieldNamecantidadRequired	  TStringFieldTLineaCodiartDisplayLabel	C�d. art.DisplayWidth	FieldNameCodiartRequired	Size  TFloatFieldTLineapunitDisplayLabelP. UnitarioDisplayWidth	FieldNamepunitRequired	currency	  TFloatFieldTLineaBonificaDisplayLabel
Bonif. (%)DisplayWidth	FieldNameBonifica  TCurrencyFieldTLineaValorDisplayWidth	FieldKindfkCalculated	FieldNameValor
Calculated	  TStringFieldTLineaNartiDisplayLabelArt�culo	FieldKindfkLookup	FieldNameNartiLookupDataSetTablartiLookupKeyFieldscodiartLookupResultField
descripart	KeyFieldsCodiartLookup	  TAutoIncFieldTLineaNlinea	FieldNameNlineaReadOnly	   TTable	TemplineaActive		AfterPostTemplineaAfterPostOnCalcFieldsTemplineaCalcFieldsOnNewRecordTemplineaNewRecordDatabaseNameagro	TableNameTmpLinea	TableType	ttParadoxLeft� Top$ TFloatFieldTemplineaCodigofac	FieldName	Codigofac  TFloatFieldTemplineacantidadDisplayLabelCantidadDisplayWidth	FieldNamecantidadRequired	  TStringFieldTemplineaCodiartDisplayLabel	Cod. art.	FieldNameCodiartRequired	VisibleSize  TFloatFieldTemplineapunitDisplayLabelP. UnitarioDisplayWidth	FieldNamepunitRequired	  TFloatFieldTemplineaBonificaDisplayLabel	Bonif (%)DisplayWidth
	FieldNameBonifica  TCurrencyFieldTemplineaValorDisplayWidth
	FieldKindfkCalculated	FieldNameValor
Calculated	  TStringFieldTemplineaNartiDisplayLabelArt�culo	FieldKindfkLookup	FieldNameNartiLookupDataSetTablartiLookupKeyFieldscodiartLookupResultField
descripart	KeyFieldsCodiartLookup	   TDataSource	DataLineaDataSetTLineaLeft� Top$  TTableBancosActive	DatabaseNameagroIndexFieldNamescodigoReadOnly		TableName	BANCOS.DBLeftDTopD  TDataSource
DataBancosAutoEditDataSetBancosLeft`TopD  TDataSourceDataclieAutoEditDataSetClientesLeft� Top$  TTableClientesActive	DatabaseNameagroIndexFieldNamesCodigoReadOnly		TableNameCLIENTES.DBLeft� Top$ TFloatFieldClientesCodigo	FieldNameCodigo  TStringFieldClientesNombreDisplayWidth	FieldNameNombreRequired	Size  TStringFieldClientesIva	FieldNameIvaRequired	Size  TStringFieldClientesCuit	FieldNameCuitSize   TTableTablaChequeActive	DatabaseNameagroIndexFieldNamesVoR;codifactuMasterFieldsV;CodigoMasterSource	DataVentaReadOnly		TableName
Cheques.DBLeftDTopd TStringFieldTablaChequenumeroDisplayWidth	FieldNamenumeroRequired	Size
  
TDateFieldTablaChequefechequeDisplayLabelFechaDisplayWidth		FieldNamefechequeRequired	EditMask!99/99/00;1;_  TFloatFieldTablaChequeimporcheqDisplayLabelImporteDisplayWidth	FieldName	imporcheqRequired	currency	  TFloatFieldTablaChequebanco	FieldNamebancoRequired	  TStringFieldTablaChequeent_car	FieldNameent_carVisibleSize  TStringFieldTablaChequeT_destino	FieldName	T_destinoVisibleSize  TStringFieldTablaChequeVoR	FieldNameVoRSize  TFloatFieldTablaChequeDestino	FieldNameDestino  TFloatFieldTablaChequecodifactu	FieldName	codifactu  TStringFieldTablaChequenbancoDisplayLabelBanco	FieldKindfkLookup	FieldNamenbancoLookupDataSetBancosLookupKeyFieldscodigoLookupResultFieldbanco	KeyFieldsbancoLookup	   TTabletempCheqActive	
BeforePosttempCheqBeforePost	AfterPosttempCheqAfterPostOnNewRecordtempCheqNewRecordDatabaseNameagroIndexFieldNamesbanco;numero	TableName
Tmpcheq.DBLeft`Topd TStringFieldtempCheqnumeroDisplayLabelN�meroDisplayWidth
	FieldNamenumeroRequired	Size
  
TDateFieldtempCheqfechequeDisplayLabelFechaDisplayWidth
	FieldNamefechequeRequired	EditMask!99/99/00;1;_  TFloatFieldtempCheqimporcheqDisplayLabelImporteDisplayWidth	FieldName	imporcheqRequired	currency	  TStringFieldtempCheqent_carDisplayWidth	FieldNameent_carVisibleSize  TStringFieldtempCheqT_destino	FieldName	T_destinoVisibleSize  TFloatFieldtempCheqDestino	FieldNameDestino  TStringFieldtempCheqVoR	FieldNameVoRVisibleSize  TFloatFieldtempCheqcodifactu	FieldName	codifactu  TFloatFieldtempCheqbanco	FieldNamebancoRequired	  TStringFieldtempCheqnbancoDisplayLabelBanco	FieldKindfkLookup	FieldNamenbancoLookupDataSetBancosLookupKeyFieldscodigoLookupResultFieldbanco	KeyFieldsbancoLookup	   TDataSource
DataChequeDataSetTablaChequeLeft|Topd   