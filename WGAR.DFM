�
 TFORM1 0�  TPF0TForm1Form1LeftTop� Width�HeightaCaptionForm1
Font.ColorclWindowTextFont.Height�	Font.NameSystem
Font.Style PixelsPerInch`
TextHeight TLabelLabel1Left� TopVWidthQHeightCaptionCodigo Postal
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TDBTextDBText1Left� TophWidthIHeight	AlignmenttaCenterColorclActiveBorder	DataFieldCodigoPostal
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ParentColor
ParentFont  TTabbedNotebookSolapaLeft Top Width�Height� AlignalClientTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrder  TTabPage LeftTopCaption	&Registro TLabelLabel2LeftvTop>WidthIHeightCaptionCod. Compr.
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel3Left� Top>Width>HeightCaptionCod. Artic.
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel4LeftTopWidthCHeightCaptionN� Garant�a
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel5LeftbTopWidth2HeightCaptionVeh�culo
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel7LeftTop>Width$HeightCaptionFecha
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TDBTextDBVigiaLeft� TopPWidthiHeight	AlignmenttaCenterColorclActiveBorder	DataFieldcodvigia
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ParentColor
ParentFont  TDBTextDBText2LeftpTopPWidthIHeight	AlignmenttaCenterColorclActiveBorder	DataField	Comprador
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ParentColor
ParentFont  TDBEdit
EditCodigoLeftTopWidthIHeightCharCaseecUpperCase	DataField	ngarantia
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 	MaxLength
ParentFontTabOrder   TDBEditEditVehiculoLeftbTopWidth� Height	DataFieldvehiculo
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 	MaxLength
ParentFontTabOrder  TDBEdit	EditFechaLeftTopQWidthQHeightCharCaseecUpperCase	DataFieldfecompra
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 	MaxLength
ParentFontTabOrder   TTabPage LeftTopCaption&Grilla TDBGridGrillaLeft Top Width�Height� AlignalClient
DataSourceDataG
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTabOrder TitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSystemTitleFont.Style     TPanelPanel1Left Top� Width�Height� AlignalBottomBorderStylebsSingleDragModedmAutomaticCaptionPanel1TabOrder TPanelPanelBotonesLeftTopWidth� Height� AlignalLeftCaption TabOrder  TLabelLabel6LeftTop WidthGHeightCaption	Comprador  TLabelLabel8LeftTop0WidthTHeightCaptionArt�culo Vig�a  TDBLookupComboDBLookupCombo1LeftTopWidth� HeightHintLocalidad; Provincia	DataField	Comprador
DataSourceDataGLookupSourceDataclieLookupDisplayNombreLookupFieldCodigoOptions
loColLinesloTitles ParentShowHintShowHintTabOrder   TDBNavigatorDBNavigator1LeftTopzWidth� Height
DataSourceDataGAlignalBottomTabOrder  TEditBuscadorLeftgTop`Width� HeightHintB�squedas por Ordenaci�nCharCaseecUpperCase	MaxLength
ParentShowHintShowHint	TabOrder  TDBLookupComboDBLookupCombo2LeftTop@Width� Height	DataFieldcodvigia
DataSourceDataGLookupSourceDatartiLookupDisplaydescripart;codiartLookupFieldcodiartOptions
loColLinesloTitles ParentShowHintShowHintTabOrder   TRadioGroupRadioGroup1Left� TopWidth� Height� AlignalClientCaptionOrdenar Por...	ItemIndex Items.Strings&N� Garant�a&Cod. CompradorCod. &Art�culo TabOrder   TTable	TablaclieActive	DatabaseNameagroIndexFieldNamesCodigo	TableNameCLIENTES.DBLeft(Top�  TIntegerFieldTablaclieCodigo	FieldNameCodigo  TStringFieldTablaclieNombre	FieldNameNombreRequired	Size   TDataSourceDataclieDataSet	TablaclieLeftMTop�   TDataSourceDatartiDataSetTablartiLeftMTop  TQueryQVigiasActive	DatabaseNameagroSQL.Strings-SELECT DISTINCT codiart, descripart, provedorFROM "ARTICULO.DB" WHERE(provedor = 403)&ORDER BY codiart, descripart, provedor Left(Top TStringFieldQVigiascodiart	FieldNamecodiartSize  TStringFieldQVigiasdescripart	FieldName
descripartSize  TIntegerFieldQVigiasprovedor	FieldNameprovedor   TTableTablaGActive	DatabaseNameagroIndexFieldNames	ngarantia	TableNameGARANTIA.DBLeft(Top�  TStringFieldTablaGngarantia	FieldName	ngarantiaRequired	EditMask
999999;1;_Size  TIntegerFieldTablaGComprador	FieldName	CompradorRequired	  
TDateFieldTablaGfecompra	FieldNamefecompraEditMask!99/99/00;1;_  TStringFieldTablaGcodvigia	FieldNamecodvigiaRequired	Size  TStringFieldTablaGvehiculo	FieldNamevehiculoEditMask>cccccccccccccccccccc;1;_   TDataSourceDataGDataSetTablaGLeftPTop�   TTableTablartiActive	DatabaseNameagroIndexFieldNamescodiart	TableNameQRYVIGIA.DBLeftTop TStringFieldTablarticodiartDisplayLabelC�digo Vig�a	FieldNamecodiartSize  TStringFieldTablartidescripartDisplayLabelDescripci�n	FieldName
descripartSize  TIntegerFieldTablartiprovedor	FieldNameprovedor    