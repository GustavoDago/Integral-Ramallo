�
 TFORMUCLIE 0�  TPF0
TFormuclie	FormuclieLeft� Top� Width�HeightKCaptionAdministraci�n de ClientesColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTimes New Roman
Font.Style 	Icon.Data
�             �     (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� �����������������������������������������������������������������������������������������������������������������������������������������������������   �� ��������wwp w�������www w�������wwww wwp��������wwww wwp�������� wwwp wp������  wwwpwp������  wwwpww����   wwwwwww����   wwwww w ���   wwwwwwwwp���    wwwwwww���    wwwwpwwp���    wppw ����     w  p����     wwww����       www�����          �����          �����          �������        ������������  ��������������������������������������������������������������A�� �  ��  ��  �  ?�  �  �  �  �  �  �  �  �  �  �  �  �  ?�  ��������OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TTabbedNotebookSolapaLeft Top Width�Height� AlignalClientTabFont.CharsetDEFAULT_CHARSETTabFont.Color	clBtnTextTabFont.Height�TabFont.NameMS Sans SerifTabFont.Style TabOrder OnChangeSolapaChange TTabPage LeftTopCaption	&Registro TLabelLabel1LeftTopWidth'HeightCaptionC�digo  TLabelLabel2Left>TopWidth0HeightCaptionNombreFocusControl
EditNombreFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFont  TLabelLabel3Left2TopVWidthKHeightCaptionC�digo Postal  TLabelLabel4LeftTop,Width3HeightCaption	Direcci�nFocusControlEditDireccion  TLabelLabel5Left� Top,Width0HeightCaptionTel�fonoFocusControlEditTelefono  TLabelLabel6Left<Top,Width)HeightCaptionC.U.I.T.FocusControlEditCuit  TLabelLabel8Left� TopVWidthUHeightCaptionCondici�n Pago  TLabelLabel9LeftTop� Width HeightCaptionNotas  TDBTextDBText1LeftTopWidth1Height	AlignmenttaCenter	DataFieldCodigo
DataSourceDataclieFont.CharsetDEFAULT_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TDBTextDBCodigoPostalLeft@TophWidthIHeight	AlignmenttaCenterColorclActiveBorder	DataFieldCodigopostal
DataSourceDataclieFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ParentColor
ParentFont  TLabelLabel7LeftTopVWidthGHeightCaptionRelaci�n IVA  TDBEdit
EditNombreLeft>TopWidth� HeightCharCaseecUpperCase	DataFieldNombre
DataSourceDataclie	MaxLengthTabOrder   TDBEditEditDireccionLeftTop;Width� HeightCharCaseecUpperCase	DataField	Direccion
DataSourceDataclie	MaxLengthTabOrder  TDBEditEditTelefonoLeft� Top;WidthWHeight	DataFieldTelefono
DataSourceDataclieTabOrder  TDBEditEditCuitLeft<Top;Width]Height	DataFieldCuit
DataSourceDataclie	MaxLengthTabOrder  TDBMemoDBMemo1LeftTop� Width�Height!	DataFieldNotas
DataSourceDataclieTabOrder  TDBComboBoxDBComboBox1LeftTophWidthQHeightStylecsDropDownList	DataFieldIva
DataSourceDataclie
ItemHeightItems.StringsRIRNIEXNRCF TabOrder  TDBCheckBoxDBCheckBox1Left� TophWidth� HeightCaptionCuenta CorrienteColor	clBtnFaceCtl3D		DataFieldCondicionpago
DataSourceDataclieFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ParentColorParentCtl3D
ParentFontTabOrderValueCheckedTrueValueUncheckedFalse   TTabPage LeftTopCaption&Grilla TDBGridGrillaLeft Top Width�Height� AlignalClient
DataSourceDataclieTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTimes New RomanTitleFont.Style     TPanelPanel1Left Top� Width�HeightYAlignalBottomTabOrder TPanelPanelBotonesLeftTopWidth� HeightWAlignalLeftCaption TabOrder  TDBNavigatorDBNavigator1LeftTopDWidth� Height
DataSourceDataclieVisibleButtonsnbFirstnbPriornbNextnbLastnbInsertnbDeletenbPostnbCancel	nbRefresh AlignalBottomHints.Strings
Al primeroAnterior	Siguiente	Al �ltimoNuevoBorrarEditarGuardarCancelarRefrescar datos ParentShowHintShowHint	TabOrder   TDBLookupComboDBLookupCombo1LeftTopWidth� HeightHintLocalidad; Provincia	DataFieldCodigopostal
DataSourceDataclieLookupSource	DatalocalLookupDisplayLocalidad;provinciaLookupFieldCodigoPostalOptions
loColLinesloTitles DropDownCountDropDownWidth� ParentShowHintShowHint	TabOrderOnEnterDBLookupCombo1EnterOnExitDBLookupCombo1Exit
OnKeyPressDBLookupCombo1KeyPress  TEditBuscadorLeftPTop(Width� HeightHintB�squedas por Ordenaci�nCharCaseecUpperCase	MaxLength
ParentShowHintShowHint	TabOrderOnChangeBuscadorChange
OnKeyPressBuscadorKeyPress   TRadioGroupRadioGroup1Left� TopWidth� HeightWAlignalClientCaptionOrdenar Por...	ItemIndex Items.Strings&C�digo&NombreC�digo &Postal TabOrderOnClickRadioGroup1Click   TTable	TablaClieActive	BeforeInsertTablaClieBeforeInsert	AfterPostTablaClieAfterPostAfterCancelTablaClieAfterCancelDatabaseNameagroIndexFieldNamesCodigo	TableNameCLIENTES.DBLeftTop TFloatFieldTablaClieCodigo	FieldNameCodigo  TStringFieldTablaClieNombre	FieldNameNombreRequired	EditMask#>cccccccccccccccccccccccccccccc;1;_Size  TSmallintFieldTablaClieCodigopostalDisplayLabelC�digo PostalDisplayWidth
	FieldNameCodigopostalRequired	Visible  TStringFieldTablaClieDireccion	FieldName	DireccionEditMask#>cccccccccccccccccccccccccccccc;1;_Size  TStringFieldTablaClieTelefono	FieldNameTelefonoSize  TStringFieldTablaClieCuitDisplayLabelC.U.I.T.	FieldNameCuitEditMask99-99999999-9;1;_Size  
TMemoFieldTablaClieNotas	FieldNameNotasVisibleBlobTypeftMemoSize
  TBooleanFieldTablaClieCondicionpago	FieldNameCondicionpagoRequired	  TStringFieldTablaClieIva	FieldNameIvaRequired	Size   TDataSourceDataclieDataSet	TablaClieLeft8Top  TTable
TablalocalActive	DatabaseNameagroIndexFieldNamesCodigoPostal	TableNameLOCALIDA.DBLeft`Top  TDataSource	DatalocalDataSet
TablalocalLeft�Top   