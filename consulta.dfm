�
 TFCONSU 04+  TPF0TFConsuFConsuTagLeft� TopWidth�Height�Caption	ConsultasColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreateOnPaint	FormPaintPixelsPerInch`
TextHeight TDBGridgrillaLeft Top� Width�HeightAlignalClientBorderStylebsNone
DataSource	DataconsuFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgColumnResizedgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit ParentColor	
ParentFontReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameSystemTitleFont.StylefsBold 
OnKeyPressgrillaKeyPress  TTabbedNotebookselectorLeft Top Width�Height� AlignalTop	PageIndex
TabsPerRowTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrderOnChangeselectorChange TTabPage LeftTopCaption	Art�culos TRadioGroup	RadioartiLeftTopWidthEHeightQCaptionStock en...Columns	ItemIndex Items.Strings&Falta&Cero&Valor TabOrder    TTabPage LeftTopCaptionCaja TLabelLabel1Left� Top,WidthHeightCaptionDesde  TLabelLabel2Left� TopHWidthHeightCaptionHasta  TRadioGroup	RadioCajaLeftTopWidthHeight!CaptionInforme de Columns	ItemIndex Items.StringsCaja diariaCaja Peri�dica TabOrder   	TMaskEditfechapriLeft� Top,Width9HeightEditMask!99/99/00;1;_	MaxLengthTabOrderText01/01/01  	TMaskEditfechasegLeft� TopDWidth8HeightEditMask!99/99/00;1;_	MaxLengthTabOrderText  /  /     TTabPage LeftTopCaptionCheques TRadioGroupRadiochequesLeftTopWidth9HeightQCaption
Cheques...	ItemIndex Items.Strings
En cartera
Entregados.A cancelar en mes...                    a�o... TabOrder   	TSpinEditcheqmesLeft� TopHWidth)HeightEditorEnabledMaxValueMinValueTabOrderValue  	TSpinEditanioLeft� TopHWidth=HeightEditorEnabledMaxValue�MinValue�TabOrderValue�   TTabPage LeftTopCaptionCta Cte TBevelBevel1Left"TopNWidthHeight  TLabelLabel6LeftTop8WidthFHeightCaptionISeleccione el proveedor o el cliente desde la grilla, luego pulse iniciar  TLabelLabel7LeftTopWidthHeightCaptionDesde  TLabelLabel8LeftTop$WidthHeightCaptionHasta  TLabelLabelnombreLeft$TopPWidthHeightAutoSize  TRadioGroupRadioctacteLeftTopWidthHeight1CaptionCuenta Corriente de ...Columns	ItemIndex Items.StringsComprasVentas TabOrder OnClickRadioctacteClick  	TMaskEditFecha1LeftPTopWidth9HeightEditMask!99/99/00;1;_	MaxLengthTabOrderText01/01/01  	TMaskEditFecha2LeftQTop Width8HeightEditMask!99/99/00;1;_	MaxLengthTabOrderText  /  /      TBitBtninicioLefttTopdWidthEHeightCaptionIniciarTabOrderOnClickinicioClickKindbkOK  TPanel	PanelnotiLeft Top�Width�HeightAlignalBottom
BevelInner	bvLowered
BevelWidthTabOrderVisible TLabelLabel3LeftTopWidthhHeightAutoSizeColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline ParentColor
ParentFont  TLabelLabel4LeftETopWidthZHeightAutoSizeColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline ParentColor
ParentFont  TLabelLabelV1LefthTopWidthHeightColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.StylefsBold ParentColor
ParentFont  TLabelLabelV2Left�TopWidthEHeightAutoSizeColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.StylefsBold ParentColor
ParentFont  TLabelLabel5Left� TopWidthHeightColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsUnderline ParentColor
ParentFont  TLabelLabelV3Left� TopWidthHeightColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCourier New
Font.StylefsBold ParentColor
ParentFont   TDataSource	DataconsuAutoEditDataSetarticuloLeft� Top�   TTablearticuloActive	DatabaseNameagroIndexFieldNamescodiartReadOnly		TableNameARTICULO.DBLeftTop�  TStringFieldarticulocodiartDisplayLabelC�digoDisplayWidth	FieldNamecodiartRequired	Size  TStringFieldarticulodescripartDisplayLabelDescripci�nDisplayWidth	FieldName
descripartRequired	Size  TFloatFieldarticuloprovedor	FieldNameprovedorRequired	  TFloatFieldarticulocostoDisplayLabelPrecio costoDisplayWidth
	FieldNamecosto  TFloatFieldarticulopventaDisplayLabelPrecio ventaDisplayWidth
	FieldNamepventa  TFloatFieldarticulostockactDisplayLabelStockDisplayWidth
	FieldNamestockact   TQuery	queryartiDatabaseNameagroLeft:Top�   TTableconsartiActive	DatabaseNameagroIndexFieldNamescodiart	TableNameCONSARTI.DBLeftTop�  TStringFieldconsarticodiart	FieldNamecodiartSize  TCurrencyFieldconsartiCompra	FieldNameCompra  TCurrencyFieldconsartiVenta	FieldNameVenta   TTablecajaActive	DatabaseNameagroIndexFieldNamesfechaReadOnly		TableNameCAJA.DBLeftTop�  TStringFieldcajatipo	FieldNametipoSize
  TIntegerFieldcajaN	FieldNameN�  
TDateField	cajafecha	FieldNamefecha  TBooleanFieldcajaent_sal	FieldNameent_sal  TStringFieldcajaDescripcion	FieldNameDescripcion  TFloatFieldcajaentradas	FieldNameentradas  TFloatFieldcajasalidas	FieldNamesalidas   TTablecomprasActive	DatabaseNameagroIndexFieldNamesCodigoReadOnly		TableName
COMPRAS.DBLeftTop�  TCurrencyFieldcomprastotal	FieldNametotal  TStringFieldcomprasTipo	FieldNameTipoRequired	Size  TStringFieldcomprasfactunum	FieldNamefactunumRequired	Size  
TDateFieldcomprasfechafactu	FieldName
fechafactuRequired	  TBooleanFieldcomprasContado	FieldNameContadoRequired	  TBooleanFieldcomprasCancelado	FieldName	Cancelado  TCurrencyFieldcomprasTPagado	FieldNameTPagado  TFloatFieldcomprasCodigo	FieldNameCodigo  TFloatFieldcomprascodigoprov	FieldName
codigoprovRequired	   TTableventasActive	DatabaseNameagroIndexFieldNamesCodigoReadOnly		TableName	VENTAS.DBLeft8Top�  TStringField
ventasTipo	FieldNameTipoRequired	Size  TStringFieldventasfactunum	FieldNamefactunumRequired	Size  
TDateFieldventasfechafactu	FieldName
fechafactuRequired	  TCurrencyFieldventastotal	FieldNametotalRequired	  TBooleanFieldventasContado	FieldNameContadoRequired	  TBooleanFieldventasCancelado	FieldName	CanceladoRequired	  TCurrencyFieldventasTPagado	FieldNameTPagado  TFloatFieldventasCodigo	FieldNameCodigo  TFloatFieldventasCodcli	FieldNameCodcliRequired	   TTableordpagosActive	DatabaseNameagroIndexFieldNamesCodigoReadOnly		TableNameORDPAGOS.DBLeftRTop�  
TDateFieldordpagosFecha	FieldNameFecha  TIntegerFieldordpagosProveedor	FieldName	ProveedorRequired	  TCurrencyFieldordpagosSuma	FieldNameSuma  TCurrencyFieldordpagosNeto	FieldNameNeto  TCurrencyFieldordpagosDescuento	FieldName	Descuento  TCurrencyFieldordpagosPagado	FieldNamePagado  TFloatFieldordpagosCodigo	FieldNameCodigo   TTablerecibosActive	DatabaseNameagroIndexFieldNamesCodigoReadOnly		TableName
RECIBOS.DBLeftlTop�  
TDateFieldrecibosFecha	FieldNameFechaRequired	  TIntegerFieldrecibosCliente	FieldNameClienteRequired	  TCurrencyFieldrecibosSuma	FieldNameSumaRequired	  TCurrencyFieldrecibosNeto	FieldNameNeto  TCurrencyFieldrecibosDescuento	FieldName	Descuento  TCurrencyFieldrecibosPagado	FieldNamePagado  TFloatFieldrecibosCodigo	FieldNameCodigo   TTableconscajaActive	DatabaseNameagroIndexFieldNamesfecha	TableNameCONSCAJA.DBLeft� Top�  TStringFieldconscajatipoDisplayLabelTipoDisplayWidth
	FieldNametipoSize
  TIntegerField	conscajaNDisplayWidth	FieldNameN�  
TDateFieldconscajafechaDisplayWidth
	FieldNamefecha  TBooleanFieldconscajaent_salDisplayLabelEnt/SalDisplayWidth	FieldNameent_salDisplayValuesEntrada;Salida  TStringFieldconscajaDescripcionDisplayLabelDescripci�nDisplayWidth	FieldNameDescripcion  TFloatFieldconscajaentradasDisplayLabelEntradasDisplayWidth
	FieldNameentradascurrency	  TFloatFieldconscajasalidasDisplayLabelSalidasDisplayWidth
	FieldNamesalidascurrency	   TQueryconsuchequesAutoRefresh	DatabaseNameagroLeft4Top  TTablechequesActive	DatabaseNameagroIndexFieldNamesbanco;numero	TableName
CHEQUES.DBLeftTop TStringFieldchequesnumeroDisplayLabeln�mero	FieldNamenumeroRequired	Size
  
TDateFieldchequesfechequeDisplayLabelFecha	FieldNamefechequeRequired	  TFloatFieldchequesimporcheqDisplayLabelImporte	FieldName	imporcheqRequired	  TStringFieldchequesent_car	FieldNameent_carSize  TFloatFieldchequesbanco	FieldNamebancoRequired	   TTablechqActive	DatabaseNameagro	TableNamechq.DBLeftTop TIntegerFieldchqbanco	FieldNamebanco  TStringField	chqnumeroDisplayLabeln�mero	FieldNamenumeroSize
  
TDateFieldchqfechequeDisplayLabelFecha	FieldNamefecheque  TFloatFieldchqimporcheqDisplayLabelImporte	FieldName	imporcheq  TStringField
chqent_car	FieldNameent_carSize   TTableProvedorActive	DatabaseNameagroIndexFieldNamesnomprovReadOnly		TableNamePROVEDOR.DBLeft(Top�  TFloatFieldProvedorcodiprov	FieldNamecodiprov  TStringFieldProvedornomprovDisplayLabelNombre Proveedor	FieldNamenomprovSize  TStringFieldProvedorcuitprovDisplayLabelCuit	FieldNamecuitprovSize   TTableclientesActive	DatabaseNameagroIndexFieldNamesNombreReadOnly		TableNameCLIENTES.DBLeftTop�  TFloatFieldclientesCodigo	FieldNameCodigo  TStringFieldclientesNombreDisplayLabelNombre cliente	FieldNameNombreRequired	Size  TStringFieldclientesCuit	FieldNameCuitSize   TTableconsctaActive	DatabaseNameagroIndexFieldNamesfecha	TableName
CONSCTA.DBLeftCTop�  
TDateFieldconsctafechaDisplayWidth		FieldNamefecha  TStringFieldconsctatipoDisplayWidth
	FieldNametipoSize
  TStringFieldconsctareferenciaDisplayWidth	FieldName
referencia  TFloatFieldconsctadebeDisplayWidth		FieldNamedebecurrency	  TFloatFieldconsctahaberDisplayWidth		FieldNamehabercurrency	  TFloatFieldconsctapagoDisplayWidth		FieldNamepagocurrency	  TBooleanFieldconsctaestadoDisplayWidth		FieldNameestadoDisplayValuesCancelado;Pendiente    