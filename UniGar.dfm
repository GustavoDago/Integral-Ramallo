�
 TFORMUG 0N  TPF0TFormuGFormuGLeftvTopOWidth�HeightaActiveControlGrillaCaption	Garant�asColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 	Icon.Data
�             �     (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� ���������������������������������������������������������������������������������������������������������������������������������               ����������������               �����������������              �� ���������������
������� � �� ���������  ��������� � �� ���������� �� ���������������� � � ������ � �� �� ������� � � �����  ��������������  �               �������������������������������������������������������������������������������������������������                                                                                                                                OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel2Left Top Width�Height%AlignalTopTabOrder  TPanel
PanelbuscaLeftTopWidth� Height#AlignalLeft
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder  TEditBuscadorLeftTopWidth~HeightHintB�squedas por Ordenaci�nCharCaseecUpperCase	MaxLength
ParentShowHintShowHint	TabOrder OnChangeBuscadorChange
OnKeyPressBuscadorKeyPress   TRadioGroupRadioGroup1Left� TopWidthHeight#HintOrdenar Por...AlignalClientColumns	ItemIndex Items.Strings	&Garant�a
&Comprador	&Art�culo ParentShowHintShowHint	TabOrderOnClickRadioGroup1Click   TPanelPanelBotonesLeft Top%Width�Height<AlignalTopCaption Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontParentShowHintShowHint	TabOrder TDBLookupCombolistartiLeftTop Width�HeightHintLista de Art�culos	DataFieldcodvigia
DataSourceDataGLookupSourceDatartiLookupDisplaycodiart;descripartLookupFieldcodiartOptionsloTitles DropDownCountParentShowHintShowHint	TabOrder
OnKeyPresslistartiKeyPress  TDBLookupComboDBLookupCombo2Left� TopWidth� HeightHintLista de Clientes	DataField	Comprador
DataSourceDataGLookupSourceDataclieLookupDisplayNombre;codigoLookupFieldCodigoOptions
loColLinesloTitles DropDownCountDropDownWidthParentShowHintShowHint	TabOrder OnEnterDBLookupCombo2EnterOnExitDBLookupCombo2Exit
OnKeyPressDBLookupCombo2KeyPress  TDBNavigatorDBNavigator1LeftTopWidth� Height
DataSourceDataGHints.Strings
Al primeroAnterior	Siguiente	Al �ltimoNuevoBorrarEditarGuardarCancelarRefrescar datos ParentShowHintShowHint	TabOrder   TDBGridGrillaLeft TopaWidth�Height� AlignalClient
DataSourceDataGOptions	dgEditingdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgAlwaysShowSelectiondgConfirmDelete TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style   TTableTablaGActive	BeforeInsertTablaGBeforeInsert
BeforeEditTablaGBeforeInsert	AfterPostTablaGAfterCancelAfterCancelTablaGAfterCancelDatabaseNameagroSessionNameDefaultIndexFieldNames	ngarantia	TableNameGARANTIA.DBLeft TopT TStringFieldTablaGngarantiaDisplayLabelN� Garant�aDisplayWidth	FieldName	ngarantiaRequired	EditMask
999999;1;_Size  TIntegerFieldTablaGComprador	FieldName	CompradorRequired	Visible  
TDateFieldTablaGfecompraDisplayLabelFechaDisplayWidth	FieldNamefecompraEditMask!99/99/00;1;_  TStringFieldTablaGcodvigia	FieldNamecodvigiaRequired	VisibleSize  TStringFieldTablaGvehiculoDisplayLabelVeh�culoDisplayWidth	FieldNamevehiculoEditMask>cccccccccccccccccccc;1;_   TDataSourceDataGDataSetTablaGLeft<TopT  TTable	TablaClieActive	DatabaseNameagroSessionNameDefaultIndexFieldNamesCodigo	TableNameCLIENTES.DBLeft!Topr TStringFieldTablaClieNombre	FieldNameNombreRequired	Size  TStringFieldTablaClieCuit	FieldNameCuitSize  TFloatFieldTablaClieCodigo	FieldNameCodigo   TDataSourceDataclieDataSet	TablaClieLeft=Topr  TTableTablartiDatabaseNameagroSessionNameDefaultIndexFieldNamescodiart	TableNameQRYVIGIA.DBLeft!Top�  TStringFieldTablarticodiartDisplayLabelC�digoDisplayWidth	FieldNamecodiartSize  TStringFieldTablartidescripartDisplayLabeldescripci�n	FieldName
descripartSize  TIntegerFieldTablartiprovedor	FieldNameprovedor   TDataSourceDatartiDataSetTablartiLeft<Top�   TTable	articulosDatabaseNameagroSessionNameDefaultIndexFieldNamesprovedor	TableNameARTICULO.DBLeft#Top�   TDataSource	DatamandaDataSet	articulosLeft=Top�    