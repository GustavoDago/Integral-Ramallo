�
 TFORDEN 0)M  TPF0TFOrdenFOrdenLeftTop|Width�Height{HorzScrollBar.VisibleVertScrollBar.VisibleCaptionOrdenes de PagoColorclActiveBorderFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormClosePixelsPerInch`
TextHeight TPanel
PanelDatosLeft Top!Width�HeightAlignalTopEnabledParentColor	TabOrder TBevelBevel1LeftTopWidth/HeightShapebsFrame  TDBTextDBText1LeftTopWidth(HeightHintC�digo Orden	AlignmenttaCenterColorclInactiveCaption	DataFieldCodigo
DataSourceDataordenesFont.CharsetDEFAULT_CHARSET
Font.ColorclCaptionTextFont.Height�	Font.NameArial
Font.StylefsBold ParentColor
ParentFontParentShowHintShowHint	  TDBLookupCombo	ListaProvLeft� TopWidth� HeightHintListado de Proveedores	DataField	Proveedor
DataSourceDataordenesLookupSource	DataproveLookupDisplaynomprov;empreprovLookupFieldcodiprovOptions
loColLinesloTitles DropDownCountDropDownWidth^ParentShowHintShowHint	TabOrderOnChangeListaProvChangeOnEnterListaProvEnterOnExitListaProvExit
OnKeyPressListaProvKeyPress  TDBEditDBFechaLeft8TopWidth5HeightHintFecha	DataFieldFecha
DataSourceDataordenes	MaxLengthParentShowHintShowHint	TabOrder   TDBComboBoxDBfactaLefttTopWidth1HeightHintFacturas / Cta CteStylecsDropDownList	DataFieldFac_cta
DataSourceDataordenes
ItemHeightItems.StringsFC ParentShowHintShowHint	TabOrderOnChangeDBfactaChangeOnExitDBfactaExit   	TNotebooklibroLeft Top Width�Height!AlignalTop	PageIndexTabOrder TPage Left Top CaptionDefault TButtonBotonaceptarLeftTopWidthGHeightCaptionAceptarTabOrder OnClickBotonaceptarClick  TButtonBotoncancelarLeftZTopWidthGHeightCancel	CaptionCancelarTabOrderOnClickBotoncancelarClick   TPage Left Top Captionnueva TDBNavigatorDBNavegadorLeft Top Width� Height!
DataSourceDataordenesVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbEdit	nbRefresh AlignalClientCtl3D	Hints.Strings
Al primeroAnterior	Siguiente	Al �ltimoNuevoBorrarEditarGuardarCancelarRefrescar datos ParentCtl3DParentShowHintShowHint	TabOrder   TPanelPanelBusquedasLeft\Top Width,Height!AlignalRight
BevelWidthBorderWidthParentShowHintShowHintTabOrder 	TMaskEditbusca1LeftTopWidthHeightHintBuscar C�digo/ Prov.BorderStylebsNoneCharCaseecUpperCaseCtl3D	EditMask9999;0;_	MaxLengthParentCtl3DParentShowHintShowHint	TabOrder OnChangebusca1Change
OnKeyPressbusca1KeyPress   TRadioGroupRadioLeft� Top Width� Height!HintOrdenar Por...AlignalRightColumnsCtl3D		ItemIndex Items.Strings&C�digo
&Proveedor ParentCtl3DParentShowHintShowHint	TabOrderOnClick
RadioClick    TTabbedNotebooksolapasLeft Top>Width�Height� AlignalClientTabFont.CharsetDEFAULT_CHARSETTabFont.ColorclWindowTextTabFont.Height�TabFont.NameModernTabFont.PitchfpFixedTabFont.Style TabOrder TTabPage LeftTopCaption&Ordenes TDBGridGrillaOrdenLeft Top Width�Height� AlignalClientCtl3D	
DataSourceDataordenesOptionsdgTitlesdgIndicatordgColumnResize
dgColLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDelete ParentCtl3DReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTimes New RomanTitleFont.Style ColumnsExpanded	FieldNameCodigoWidth+Visible	 Expanded	FieldName	ProveedorWidth8Visible	 Expanded	FieldNamenProveWidth� Visible	 Expanded	FieldNameFechaVisible	 Expanded	FieldNameFac_ctaVisible	 Expanded	FieldNameSumaVisible	 Expanded	FieldName	DescuentoVisible	 Expanded	FieldNameNetoVisible	 Expanded	FieldNameEfectivoVisible	 Expanded	FieldNamePagadoVisible	     TTabPage LeftTopCaption&Detalle Facturas 	TSplitter	Splitter1Left� Top WidthHeight� CursorcrHSplit  TPanel
PanelFactuLeft� Top Width� Height� AlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredParentColor	TabOrder TBevelBevel3LeftTopWidth{Height� AlignalLeftShapebsRightLine  TSpeedButtonAgrefacLeftTopWidth!HeightHintAgregar Facturas
AllowAllUp	
GroupIndexEnabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333?����333     333wwwww333����3333337333����333?���333 � �33�w7w7303����37�??��39 ��37sw7739�����?�w?���	�� �  wwww7ww	������wwww�7�s	�����3wwwws7�3	�����3wwww��s3	��   33wwwwww3339�3333337w33333393333337s333333033333337333333	NumGlyphsParentShowHintShowHint	OnClickAgrefacClickOnMouseDownAgrefacMouseDown  TSpeedButtonQuitafacLeftTop,Width!HeightHintQuitar facturasEnabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 3333337w3333330 3���337w9���33337ww333?9���333 7wws333w3333333 3333333w333333333333333?3333333 33?3333w33�3333 333333w3<�333333����?�<����Ù37wwwww�<����Ù37wwwwsw33<�33333373333�33�3330 33s3337w3333330 3333337w3333333333333333	NumGlyphsParentShowHintShowHint	OnClickQuitafacClick  TLabelltipoLeft8TopWidthHeightCaptionTipo  TLabelLnumLeft8Top+Width*HeightCaptionN�mero  TLabellFechaLeft8Top>Width HeightCaptionFecha  TLabelLTotalLeft8TopQWidthHeightCaptionTotal  TLabelLTotpagaLeft8TopdWidthAHeightCaptionTot. Pagado  TDBTextDBText2Left� TopWidthAHeight	DataFieldTipo
DataSourceDataCompras  TDBTextDBText3Left� Top+WidthUHeight	DataFieldfactunum
DataSourceDataCompras  TDBTextDBText6Left� Top>WidthAHeight	DataField
fechafactu
DataSourceDataCompras  TDBTextDBText7Left� TopQWidthAHeight	AlignmenttaRightJustify	DataFieldtotal
DataSourceDataCompras  TDBTextDBText8Left� TopdWidthAHeight	AlignmenttaRightJustify	DataFieldTPagado
DataSourceDataCompras  TDBTextDBText9Left� TopxWidthYHeight	DataField	Cancelado
DataSourceDataCompras  TDBCheckBox
canceladorLeft� TopxWidthiHeightCaptioncancelar factura
DataSource	DataListaTabOrder ValueCheckedTrueValueUncheckedFalseVisibleOnExitcanceladorExit   TDBGridGrillaListaLeft Top Width� Height� AlignalLeft
DataSource	DataListaOptionsdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit ReadOnly	TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTimes New RomanTitleFont.Style 
OnDblClickGrillaListaDblClick   TTabPage LeftTopCaption&Cheques TPanelPanelContenedorLeft� Top Width� Height� AlignalClientParentColor	TabOrder TPanel
PanelnuevoLeftTop!Width� Height� AlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredParentColor	TabOrderVisible TLabelLabelnumLeftTopWidth*HeightCaptionN�mero  TLabelLabelfeLeftTop,Width HeightCaptionFecha  TLabel	LabelimpoLeftTop@Width+HeightCaptionImporteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TDBEditchefechaLeftDTop(Width=Height	DataFieldfecheque
DataSource
DatachequeTabOrder  TDBEdit	chenumeroLeft8TopWidthIHeight	DataFieldnumero
DataSource
DatachequeTabOrder   TDBEdit
cheimporteLeftDTop<Width=Height	DataField	imporcheq
DataSource
DatachequeTabOrder  TBitBtnAceptaLeftTop_WidthIHeightHintAceptar nuevo ChequeCaption&AceptarParentShowHintShowHint	TabOrderOnClickAceptaClickKindbkOK  TBitBtnCancelaLeftTTop`WidthIHeightHintCancelar el chequeCaption	&CancelarParentShowHintShowHint	TabOrderOnClickCancelaClickKindbkAbort   TPanel
PanelbancoLeftTopWidth� Height AlignalTop
BevelInnerbvRaised
BevelOuterbvNoneBorderStylebsSingleCtl3D	ParentColor	ParentCtl3DTabOrder  TDBLookupCombo	DBLbancosLeftTopWidth� Height	DataFieldbanco
DataSource
DatachequeLookupSource	DataBancoLookupDisplaybancoLookupFieldcodigoStylecsDropDownListCtl3DEnabledParentCtl3DTabOrder     TPanelGChequesLeft Top Width� Height� AlignalLeftCaptionGChequesParentColor	TabOrder  TPanel	PanelhaceLeft� TopWidthHeight� AlignalRight
BevelOuterbvNoneParentColor	TabOrder  TSpeedButtonPropioLeft TopWidthHeightHintNuevo cheque Propio
AllowAllUp	Enabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333�33;3�3333�;�w{�w{�7����s3�    33wwwwww330����337�333330����337�333330����337�333330����3?��333��������ww�333w;������7w�3?�ww30��  337�3wws330���3337�37�330��3337�3w�330�� ;�337��w7�3�  3�33www3w�;�3;�3;�7s37s37s�33;333;s3373337	NumGlyphsParentShowHintShowHint	OnClickPropioClick  TSpeedButtonAgregaLeft Top0WidthHeight!HintAgregar cheques
AllowAllUp	
GroupIndexEnabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333?����333     333wwwww333����3333337333����333?���333 � �33�w7w7303����37�??��39 ��37sw7739�����?�w?���	�� �  wwww7ww	������wwww�7�s	�����3wwwws7�3	�����3wwww��s3	��   33wwwwww3339�3333337w33333393333337s333333033333337333333	NumGlyphsParentShowHintShowHint	OnClickAgregaClick  TSpeedButtonQuitaLeft TopVWidthHeightHintQuitar cheques de listaEnabled
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 3333337w3333330 3���337w9���33337ww333?9���333 7wws333w3333333 3333333w333333333333333?3333333 33?3333w33�3333 333333w3<�333333����?�<����Ù37wwwww�<����Ù37wwwwsw33<�33333373333�33�3330 33s3337w3333330 3333337w3333333333333333	NumGlyphsParentShowHintShowHint	OnClick
QuitaClick   TDBGridGrillaChequesLeftTopWidth� Height� AlignalClientBorderStylebsNoneCtl3D	
DataSource
DatachequeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitles
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgCancelOnExit ParentCtl3D
ParentFontReadOnly	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlackTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 
OnDblClickGrillaChequesDblClickColumnsExpanded	FieldNamenumeroVisible	 Expanded	FieldNamefechequeVisible	 Expanded	FieldName	imporcheqVisible	       TPanel
PanelPagosLeft TopWidth�HeightPAlignalBottom
BevelInnerbvRaised
BevelOuter	bvLowered
BevelWidthParentColor	TabOrder TBevelBevel2LeftTop4Width�HeightAlignalBottomShape	bsTopLine  TLabelEtiquetaTotalLeft� Top5Width#HeightCaptionTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFont  TDBTextDBPAGADOLeft0Top8WidthIHeight	AlignmenttaCenterColorclActiveBorder	DataFieldPagado
DataSourceDataordenesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.StylefsBold ParentColor
ParentFont  TLabelEtiqEfectivoLeft� TopWidth,HeightCaptionEfectivo  TLabel	LbChequesLeft� TopWidth/HeightCaptionCheques  TDBText
DBTChequesLeft0TopWidthIHeight	AlignmenttaCenterColorclHighlightText	DataFieldSUM of imporcheq
DataSourceDataSumaFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold ParentColor
ParentFont  TLabelLabel4LeftTop5Width!HeightCaptionNetoFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFont  TDBTextDBText4Left\Top8WidthIHeight	AlignmenttaCenterColorclActiveBorder	DataFieldNeto
DataSourceDataordenesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.StylefsBold ParentColor
ParentFont  TLabelLabel5LeftTop!Width:HeightCaption	Descuento  TLabelLabel6Left
TopWidth.HeightCaptionFacturas  TDBTextDBSumaLeft\TopWidthIHeight	AlignmenttaCenterColorclHighlightText	DataFieldSuma
DataSourceDataordenesFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold ParentColor
ParentFont  TDBTextDBdescuentoLeft\TopWidthIHeight	AlignmenttaCenterColorclActiveBorder	DataField	Descuento
DataSourceDataordenesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameTimes New Roman
Font.StylefsBold ParentColor
ParentFont  TDBEditDBEefectivoLeft0TopWidthIHeight	DataFieldEfectivo
DataSourceDataordenesTabOrder    TPanelPanelinvisibleLeftTop� Width� HeighteColorclActiveCaptionTabOrder Visible  TTablelistaFacActive	DatabaseNameagroIndexFieldNamesOrdenMasterFieldsCodigoMasterSourceDataordenes	TableNameLISTCOMP.DBLeftTop TIntegerFieldlistaFacOrden	FieldNameOrdenVisible  TIntegerFieldlistaFacFactura	AlignmenttaCenterDisplayWidth	FieldNameFactura  TCurrencyFieldlistaFacPagadoDisplayWidth
	FieldNamePagado  TAutoIncFieldlistaFacNumero	FieldNameNumeroReadOnly	   TDataSource	DataListaDataSetlistaFacOnDataChangeDataListaDataChangeLeftdTop  TTableordenesActive	BeforeInsertordenesBeforeInsert
BeforeEditordenesBeforeEdit
BeforePostordenesBeforePost	AfterPostordenesAfterPostAfterCancelordenesAfterCancelBeforeDeleteordenesBeforeDeleteOnNewRecordordenesNewRecordDatabaseNameagroIndexFieldNamesCodigo	TableNameORDPAGOS.DBLeftTop�  
TDateFieldordenesFechaDisplayWidth	FieldNameFechaRequired	EditMask!99/99/00;1;_  TIntegerFieldordenesProveedor	AlignmenttaCenterDisplayLabelCod. ProveedorDisplayWidth	FieldName	ProveedorRequired	  TStringFieldordenesFac_cta	AlignmenttaCenterDisplayWidth	FieldNameFac_ctaRequired	Size  TCurrencyFieldordenesSumaDisplayWidth		FieldNameSumaRequired	  TCurrencyFieldordenesDescuentoDisplayLabelDesc.DisplayWidth	FieldName	Descuento  TCurrencyFieldordenesNetoDisplayWidth	FieldNameNetoRequired	  TStringFieldordenesODisplayWidth	FieldNameOVisibleSize  TCurrencyFieldordenesEfectivo	FieldNameEfectivoVisible
OnValidateordenesEfectivoValidate  TCurrencyFieldordenesPagado	FieldNamePagadoVisible  TFloatFieldordenesCodigo	FieldNameCodigo  TStringFieldordenesnProveDisplayLabel	Proveedor	FieldKindfkLookup	FieldNamenProveLookupDataSet	ProveedorLookupKeyFieldscodiprovLookupResultFieldnomprov	KeyFields	ProveedorLookup	   TDataSourceDataordenesAutoEditDataSetordenesLeft0Top�   TTableComprasActive	DatabaseNameagroIndexFieldNamesCodigoMasterFieldsFacturaMasterSource	DataLista	TableName
COMPRAS.DBLeftTTop�  TFloatFieldComprasCodigo	FieldNameCodigo  
TDateFieldComprasfechafactuDisplayLabelFechaDisplayWidth	FieldName
fechafactuRequired	  TCurrencyFieldComprasTPagadoDisplayLabel	T. PagadoDisplayWidth	FieldNameTPagado  TCurrencyFieldComprastotalDisplayLabelTotalDisplayWidth	FieldNametotal  TStringFieldComprasTipo	FieldNameTipoRequired	Size  TCurrencyFieldComprassubto	FieldNamesubto  TBooleanFieldComprasCancelado	FieldName	CanceladoDisplayValuesCancelado; sin cancelar  TFloatFieldComprascodigoprov	FieldName
codigoprovRequired	  TStringFieldComprasfactunum	FieldNamefactunumRequired	Size   TDataSourceDataComprasDataSetComprasLeftpTop�   TTable	ProveedorActive	DatabaseNameagroIndexFieldNamescodiprovReadOnly		TableNamePROVEDOR.DBLeftTop�  TFloatFieldProveedorcodiprov	FieldNamecodiprov  TStringFieldProveedornomprovDisplayLabelNombre	FieldNamenomprovSize  TStringFieldProveedorempreprovDisplayLabelEmpresa	FieldName	empreprovSize   TDataSource	DataproveDataSet	ProveedorLeft0Top�   TTableChequesActive	DatabaseNameagroIndexFieldNamesT_destino;DestinoMasterFieldsO;CodigoMasterSourceDataordenes	TableName
CHEQUES.DBLeft� Top�  TStringFieldChequesnumeroDisplayLabelN�meroDisplayWidth	FieldNamenumeroRequired	Size
  
TDateFieldChequesfechequeDisplayLabelFechaDisplayWidth	FieldNamefechequeRequired	  TFloatFieldChequesimporcheqDisplayLabelImporteDisplayWidth	FieldName	imporcheqRequired	currency	  TFloatFieldChequescodifactu	FieldName	codifactu  TFloatFieldChequesbanco	FieldNamebanco  TStringFieldChequesent_car	FieldNameent_carVisibleSize  TStringFieldChequesT_destino	FieldName	T_destinoSize  TFloatFieldChequesDestino	FieldNameDestino   TDataSource
DatachequeDataSetChequesLeft� Top�   TTableBancoActive	DatabaseNameagroReadOnly		TableName	BANCOS.DBLeft� Top�  TFloatFieldBancocodigo	FieldNamecodigoRequired	  TStringField
Bancobanco	FieldNamebancoRequired	Size  TStringFieldBancoB	FieldNameBSize   TDataSource	DataBancoDataSetBancoLeft� Top�   TQuerySumadorActive	DatabaseNameagro
DataSourceDataordenesRequestLive	SQL.StringsSELECT sum(imporcheq) FROM "CHEQUES.DB"-WHERE (T_destino = 'O') and destino = :Codigo UniDirectional	LeftTTop� 	ParamDataDataTypeftFloatNameCodigo	ParamType	ptUnknown   TFloatFieldSumadorCampoDisplayLabelSuma Cheques	FieldNameSUM of imporcheqReadOnly	currency	   TDataSourceDataSumaDataSetSumadorOnDataChangeDataSumaDataChangeLeftpTop�   TTableTemplistActive	DatabaseNameagroIndexFieldNamesOrden	TableNameTemplist.DBLeft/Top TFloatFieldTemplistOrden	FieldNameOrden  TIntegerFieldTemplistFactura	AlignmenttaCenterDisplayWidth	FieldNameFactura  TCurrencyFieldTemplistPagadoDisplayWidth
	FieldNamePagado	Precision  TBooleanFieldTemplistCancelar	FieldNameCancelarVisibleOnChangeTemplistCancelarChange   TTableTempcheqActive	BeforeInsertTempcheqBeforeInsert
BeforePostTempcheqBeforePost	AfterPostTempcheqAfterPostAfterCancelTempcheqAfterCancelOnNewRecordTempcheqNewRecordDatabaseNameagro	IndexNameadondeVa	TableName
TMPCHEQ.DBLeft� Top�  TStringFieldTempcheqnumeroDisplayLabelN�meroDisplayWidth	FieldNamenumeroRequired	Size
  
TDateFieldTempcheqfechequeDisplayLabelFechaDisplayWidth		FieldNamefechequeRequired	EditMask!99/99/00;1;_  TFloatFieldTempcheqimporcheqDisplayLabelImporteDisplayWidth	FieldName	imporcheqRequired	currency	  TFloatFieldTempcheqcodifactu	FieldName	codifactu  TFloatFieldTempcheqbanco	FieldNamebancoRequired	  TStringFieldTempcheqent_car	FieldNameent_carVisibleSize  TStringFieldTempcheqT_destino	FieldName	T_destinoSize  TFloatFieldTempcheqDestino	FieldNameDestino   
TBatchMovecopiadorDestinationTemplistMappings.StringsOrdenFacturaPagado SourcelistaFacLeftHTop   