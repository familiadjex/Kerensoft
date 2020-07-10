unit ANULACIONCOBROS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, Buttons, ToolWin, QRCtrls, StdCtrls, Grids,
  DBGrids, DBCtrls, Mask, QuickRpt, ExtCtrls,Db,Funciones;

type
  TFrm_AnulacionCobros = class(TForm)
    Bevel5: TBevel;
    Panel2: TPanel;
    RepCobros1: TQuickRep;
    QRBand2: TQRBand;
    QRDBText30: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText38: TQRDBText;
    QRExprMemo1: TQRExprMemo;
    QRBand7: TQRBand;
    QRShape14: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRBand8: TQRBand;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRBand9: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel45: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText43: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRBand10: TQRBand;
    QRDBText44: TQRDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Label6: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label5: TLabel;
    Bevel6: TBevel;
    Label1: TLabel;
    Label8: TLabel;
    FECHA1: TDateTimePicker;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Dbg_DebitoCobro: TDBGrid;
    COMENTARIO: TRichEdit;
    IMPORTE: TEdit;
    SUBTOTAL: TEdit;
    TabSheet2: TTabSheet;
    Dbg_Pendientes: TDBGrid;
    TabSheet5: TTabSheet;
    Dbg_Pagados: TDBGrid;
    TabSheet3: TTabSheet;
    Dbg_Credito: TDBGrid;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    Bit_Buscar: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    Bit_Eliminar: TSpeedButton;
    Bit_Asentar: TSpeedButton;
    Bit_Printe: TSpeedButton;
    Bit_Close: TSpeedButton;
    Bit_SubMenu: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Buscar1: TMenuItem;
    Agregar1: TMenuItem;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    Grupo5: TQuickRep;
    QRBand25: TQRBand;
    QRDBText94: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand26: TQRBand;
    QRLabel124: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand27: TQRBand;
    QRDBText106: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand28: TQRBand;
    QRExpr13: TQRExpr;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel134: TQRLabel;
    QRLabel133: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExprMemo2: TQRExprMemo;
    procedure Bit_CloseClick(Sender: TObject);
    procedure Bit_PrinteClick(Sender: TObject);
    procedure Bit_AsentarClick(Sender: TObject);
    procedure Bit_EliminarClick(Sender: TObject);
    procedure Bit_GrabarClick(Sender: TObject);
    procedure Bit_NuevoClick(Sender: TObject);
    procedure Bit_BuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Dbg_DebitoCobroCellClick(Column: TColumn);
    procedure Dbg_DebitoCobroDblClick(Sender: TObject);
    procedure Dbg_DebitoCobroEditButtonClick(Sender: TObject);
    procedure Dbg_DebitoCobroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Dbg_PendientesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Dbg_PagadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Dbg_CreditoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Dbg_DebitoCobroDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AnulacionCobros: TFrm_AnulacionCobros;
  WSUBTOTAL          : Double;

implementation

uses TABLAS, BUSCARCLIENTES, BUSCACOBROS;

{$R *.dfm}

procedure TFrm_AnulacionCobros.Bit_CloseClick(Sender: TObject);
begin
 Close;
end;

procedure TFrm_AnulacionCobros.Bit_PrinteClick(Sender: TObject);
begin
  Dtm.TBL_CONSULTA.SQL.Clear;
 Dtm.TBL_CONSULTA.SQL.Add('SELECT YEAR(A.FECHA) AS ANO,');
 Dtm.TBL_CONSULTA.SQL.Add('MONTH(A.FECHA) AS MES, DAY(A.FECHA) AS DIAS,');
 Dtm.TBL_CONSULTA.SQL.Add('A.SECUENCIA,A.FACTURA,A.PAGARE, A.CREDITO,');
 Dtm.TBL_CONSULTA.SQL.Add('B.CODIGO, B.NOMBRE, B.APELLIDO,');
 Dtm.TBL_CONSULTA.SQL.Add('C.NCFSECUENCIA,C.NCFFIJO,B.DIRECCION, B.SECTOR,');
 Dtm.TBL_CONSULTA.SQL.Add('B.TELEFONO, C.RECIBO,C.SECUENCIA, C.FECHA,C.MONTO');
 Dtm.TBL_CONSULTA.SQL.Add('FROM TBL_CONTDEBITOCOBRO C,TBL_DETDEBITOCOBRO A,DATAELECTROSOFT.Dbo.TBL_CLIENTE B');
 Dtm.TBL_CONSULTA.SQL.Add('WHERE A.CODCLIENTE = B.CODIGO AND A.SECUENCIA = C.SECUENCIA AND (A.SECUENCIA = :SECUENCIA)');
 Dtm.TBL_CONSULTA.Params[0].Value := DBEDIT6.TEXT;
 TRY
 Dtm.TBL_CONSULTA.ACTIVE := TRUE;
 EXCEPT
 MESSAGEDLG('Verifique su Consulta',MTCONFIRMATION,[MBOK],0);
 END;
 IF Dtm.TBL_CONTROL.Eof THEN
    BEGIN
    MESSAGEDLG('NO EXISTEN REGISTRO DE COBROS',MTCONFIRMATION,[MBOK],0);
    ABORT;
    END;
    Grupo5.Preview;
end;

procedure TFrm_AnulacionCobros.Bit_AsentarClick(Sender: TObject);
begin
   if MessageDlg('Confirma el Asiento',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
    BEGIN
     IF (Dtm.TBL_DETDEBITOCOBROCREDITO.VALUE <= 0)   THEN
          BEGIN
            Bit_Asentar.Enabled := TRUE;
            APPLICATION.MessageBox('Pago está en Cero','A v i s o',MB_DEFBUTTON1 + MB_ICONWARNING);
            Abort;
          END;

          Dtm.Conexiones.StartTransaction;
          Try
          Dtm.TBL_CONTDEBITOCOBRO.Edit;
          Dtm.TBL_CONTDEBITOCOBROASIENTO.AsString := 'Si';
          Dtm.TBL_CONTDEBITOCOBRO.Post;
          Except
          Dtm.Conexiones.Rollback;
          End;


                    Dtm.TBL_DETDEBITOCOBRO.DisableControls;
                    Dtm.TBL_DETDEBITOCOBRO.First;
          WHILE NOT Dtm.TBL_DETDEBITOCOBRO.Eof DO
              BEGIN
           IF Dtm.TBL_CONTROL.Locate('FACTURA;TIPOCOMPANIA',VarArrayof([Dtm.TBL_DETDEBITOCOBRO.FieldByName('FACTURA').Value,
                                                                        Dtm.TBL_DETDEBITOCOBRO.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
              BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_CONTROL.EDIT;
                Dtm.TBL_CONTROLHABER.VALUE  := Dtm.TBL_CONTROLHABER.VALUE - Dtm.TBL_DETDEBITOCOBROCREDITO.VALUE;
                Dtm.TBL_CONTROL.Post;
                Dtm.Conexiones.Commit;
                Except
                Dtm.Conexiones.Rollback;
                End;
              END;
                Dtm.TBL_DETDEBITOCOBRO.Next;
            END;
            Dtm.TBL_DETDEBITOCOBRO.EnableControls;

                    Dtm.TBL_DETDEBITOCOBRO.DisableControls;
                    Dtm.TBL_DETDEBITOCOBRO.First;
          WHILE NOT Dtm.TBL_DETDEBITOCOBRO.Eof DO
              BEGIN
           IF Dtm.TBL_CONTROL.Locate('FACTURA;TIPOCOMPANIA',VarArrayof([Dtm.TBL_DETDEBITOCOBRO.FieldByName('FACTURA').Value,
                                                                        Dtm.TBL_DETDEBITOCOBRO.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
              BEGIN
                Dtm.TBL_CONTROL.Edit;
                IF Dtm.TBL_CONTROLDEBE.VALUE <> Dtm.TBL_CONTROLHABER.VALUE THEN
                   BEGIN
                     Dtm.Conexiones.StartTransaction;
                     Try
                      Dtm.TBL_CONTROL.Edit;
                      Dtm.TBL_CONTROLPAGO.VALUE := 'No';
                      Dtm.TBL_CONTROL.Post;
                      Dtm.Conexiones.Commit;
                     Except
                      Dtm.Conexiones.Rollback;
                     End;
                 END;
              END;
              Dtm.TBL_DETDEBITOCOBRO.Next;
            END;
            Dtm.TBL_DETDEBITOCOBRO.EnableControls;
            

          IF Trim(Dtm.TBL_CONTROLTIPO.AsString) = 'Crédito' THEN
             BEGIN
               Dtm.Conexiones.StartTransaction;
               Try
               Dtm.TBL_CONTROL.EDIT;
               Dtm.TBL_CONTROLHABER.VALUE :=  Dtm.TBL_CONTROLHABER.VALUE - Dtm.TBL_CONTDEBITOCOBROMONTO.VALUE;
               Dtm.TBL_CONTROL.Post;
               Dtm.Conexiones.Commit;
               Except
               Dtm.Conexiones.Rollback;
               End;
             END;

          IF (Trim(Dtm.TBL_CONTROLTIPO.AsString) = 'Transfer') THEN
             BEGIN
               Dtm.Conexiones.StartTransaction;
               Try
                Dtm.TBL_CONTROL.EDIT;
                Dtm.TBL_CONTROLHABER.VALUE :=  Dtm.TBL_CONTROLHABER.VALUE - Dtm.TBL_CONTDEBITOCOBROMONTO.VALUE;
                Dtm.TBL_CONTROL.Post;
                Dtm.Conexiones.Commit;
               Except
               Dtm.Conexiones.Rollback;
               End;
             END;

          IF (Trim(Dtm.TBL_CONTROLTIPO.AsString) = 'Accionis') THEN
             BEGIN
             Dtm.Conexiones.StartTransaction;
             Try
             Dtm.TBL_CONTROL.EDIT;
             Dtm.TBL_CONTROLHABER.VALUE :=  Dtm.TBL_CONTROLHABER.VALUE - Dtm.TBL_CONTDEBITOCOBROMONTO.VALUE;
             Dtm.TBL_CONTROL.Post;
             Dtm.Conexiones.Commit;
             Except
             Dtm.Conexiones.Rollback;
             End;

             END;
            IF Trim(Dtm.TBL_CONTROLTIPO.AsString) = 'Crédito' THEN
               BEGIN
               Dtm.Conexiones.StartTransaction;
               Try
               Dtm.TBL_CLIENTE.EDIT;
               Dtm.TBL_CLIENTEBALANCE.Value := Dtm.TBL_CLIENTEBALANCE.Value + Dtm.TBL_CONTDEBITOCOBROMONTO.VALUE;
               Dtm.TBL_CLIENTE.POST;
               Dtm.Conexiones.Commit;
               Except
               Dtm.Conexiones.Rollback;
               End;

               END;
                        // CUENTA POR COBRAR
                    Dtm.TBL_DETDEBITOCOBRO.DisableControls;
                    Dtm.TBL_DETDEBITOCOBRO.First;
          WHILE NOT Dtm.TBL_DETDEBITOCOBRO.Eof DO
              BEGIN
           IF Dtm.TBL_CUENTACOBRAR.Locate('FACTURA;TIPOCOMPANIA;PAGARE',VarArrayOf([Dtm.TBL_DETDEBITOCOBRO.FieldByName('FACTURA').Value,Dtm.TBL_DETDEBITOCOBRO.FieldByName('TIPOCOMPANIA').AsString,Dtm.TBL_DETDEBITOCOBRO.FieldByName('PAGARE').Value]),[]) THEN
              BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_CUENTACOBRAR.EDIT;
                Dtm.TBL_CUENTACOBRARHABER.VALUE   :=  Dtm.TBL_CUENTACOBRARHABER.VALUE - Dtm.TBL_DETDEBITOCOBROCREDITO.VALUE;
                Dtm.TBL_CUENTACOBRARESTATUS.VALUE := 'NORMAL';
                Dtm.TBL_CUENTACOBRAR.Post;
                Dtm.Conexiones.Commit;
                Except
                Dtm.Conexiones.Rollback;
                End;
              END;
              Dtm.TBL_DETDEBITOCOBRO.Next;
            END;
            Dtm.TBL_DETDEBITOCOBRO.EnableControls;

           IF Dtm.TBL_TIPODOCUMENTO.Locate('SIGLA','CC01',[]) THEN
              BEGIN
              DEBITO(Dtm.TBL_CONTDEBITOCOBROTRANSACCION.Value,
                     Dtm.TBL_TIPODOCUMENTOGRUPO.AsString,
                     Dtm.TBL_TIPODOCUMENTOSUBGRUPO.AsString,
                     Dtm.TBL_TIPODOCUMENTOCUENTA.AsString,
                     Dtm.TBL_TIPODOCUMENTOSUBCUENTA.AsString,
                     Dtm.TBL_TIPODOCUMENTOAUXILIAR1.AsString,
                     Dtm.TBL_TIPODOCUMENTOAUXILIAR2.AsString,
                     Dtm.TBL_CONTDEBITOCOBROMONTO.Value,
                     'CC01',Dtm.TBL_CONTDEBITOCOBROSECUENCIA.Value,
                     Dtm.TBL_CONTDEBITOCOBROFECHA.AsDateTime,
                     Dtm.TBL_CONTDEBITOCOBROCODCICLO.VALUE,
                     Dtm.TBL_CONTDEBITOCOBROCODPERIODO.VALUE);
              END;
           IF Dtm.TBL_TIPODOCUMENTO.Locate('SIGLA','CG01',[]) THEN
              BEGIN
              CREDITO(Dtm.TBL_CONTDEBITOCOBROTRANSACCION.Value,
                     Dtm.TBL_TIPODOCUMENTOGRUPO.AsString,
                     Dtm.TBL_TIPODOCUMENTOSUBGRUPO.AsString,
                     Dtm.TBL_TIPODOCUMENTOCUENTA.AsString,
                     Dtm.TBL_TIPODOCUMENTOSUBCUENTA.AsString,
                     Dtm.TBL_TIPODOCUMENTOAUXILIAR1.AsString,
                     Dtm.TBL_TIPODOCUMENTOAUXILIAR2.AsString,
                      Dtm.TBL_CONTDEBITOCOBROMONTO.Value,
                      'CG01',Dtm.TBL_CONTDEBITOCOBROSECUENCIA.VALUE,
                      Dtm.TBL_CONTDEBITOCOBROFECHA.AsDateTime,
                      Dtm.TBL_CONTDEBITOCOBROCODCICLO.VALUE,
                      Dtm.TBL_CONTDEBITOCOBROCODPERIODO.VALUE);
              END;


            Dbg_DebitoCobro.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
            DBEDIT6.Enabled     := FALSE;
            Bit_Asentar.Enabled := FALSE;
            DBLookupComboBox1.Enabled := FALSE;
            IF Dtm.TBL_CONTDEBITOCOBROASIENTO.VALUE = 'Si' THEN
               BEGIN
               APPLICATION.MessageBox('Nota Crédito Asentada','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
               Abort;
               END;
      END;

end;

procedure TFrm_AnulacionCobros.Bit_EliminarClick(Sender: TObject);
begin
  IF Dtm.TBL_DETDEBITOCOBRO.State IN [dsEdit, dsInsert] THEN
    BEGIN
    if MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
          Dtm.TBL_DETDEBITOCOBRO.DELETE;
       END;
    END
     ELSE
      BEGIN
        APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
      END;

end;

procedure TFrm_AnulacionCobros.Bit_GrabarClick(Sender: TObject);
begin

      IF Dtm.TBL_CONTDEBITOCOBROASIENTO.AsString = 'Si' THEN
      BEGIN
      APPLICATION.MessageBox('Anulaciòn Está Asentado','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
      ABORT
      END;

   Dtm.Conexiones.StartTransaction;
   Try
   Dtm.TBL_DETDEBITOCOBRO.Edit;
   Dtm.TBL_DETDEBITOCOBROFecha.AsDateTime    := FECHA1.DATE;
   Dtm.TBL_DETDEBITOCOBRO.POST;
   Dtm.Conexiones.Commit;
   Except
   Dtm.Conexiones.Rollback;
   End;

           WSUBTOTAL:= 0;
           Dtm.TBL_DETDEBITOCOBRO.DisableControls;
           Dtm.TBL_DETDEBITOCOBRO.FIRST;
   WHILE NOT Dtm.TBL_DETDEBITOCOBRO.Eof DO
         BEGIN
            WSUBTOTAL := WSUBTOTAL   +  Dtm.TBL_DETDEBITOCOBROCREDITO.VALUE;
            Dtm.TBL_DETDEBITOCOBRO.NEXT;
         END;
         Dtm.TBL_DETDEBITOCOBRO.EnableControls;

         Dtm.Conexiones.StartTransaction;
         Try
         Dtm.TBL_CONTDEBITOCOBRO.Edit;
         Dtm.TBL_CONTDEBITOCOBROMONTO.Value      := WSUBTOTAL;
         Dtm.TBL_CONTDEBITOCOBROCOMENTARIO.AsString := COMENTARIO.TEXT;
         Dtm.TBL_CONTDEBITOCOBROFECHA.AsDateTime      := FECHA1.Date;
         Dtm.TBL_CONTDEBITOCOBRO.Post;
         Dtm.Conexiones.Commit;
         Except
         Dtm.Conexiones.Rollback;
         End;

         SUBTOTAL.TEXT  := FormatFloat('###,###,###.00', WSUBTOTAL);
         Bit_PRINTE.Enabled   := TRUE;
         Bit_Asentar.Enabled   := TRUE;
         Dbg_DebitoCobro.SelectedIndex := 0;

end;

procedure TFrm_AnulacionCobros.Bit_NuevoClick(Sender: TObject);
begin
 if MessageDlg('Nueva Cobro Anulado',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
    BEGIN
       CDCICLO(FECHA1.Date,Dtm.TBL_COMPANIACICLOFECHAINICIO.AsDateTime,FECHA1.Date,Dtm.TBL_COMPANIACICLOFECHAFINAL.AsDateTime);
   IF DBEDIT5.TEXT = '' THEN
      BEGIN
       APPLICATION.MessageBox('Código Cliente está en blanco','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
       ABORT;
      END;

      Dtm.TBL_Maximo.SQL.Clear;
      Dtm.TBL_Maximo.SQL.Add('SELECT MAX(SECUENCIA) AS TREGISTRO,GETDATE() AS TFECHASYS FROM TBL_CONTDEBITOCOBRO');
      Dtm.TBL_Maximo.Active := TRUE;

      IF NOT Dtm.TBL_CONTDEBITOCOBRO.Locate('SECUENCIA',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
         BEGIN
          Dtm.Conexiones.StartTransaction;
          try
          Dtm.TBL_CONTDEBITOCOBRO.Insert;
          Dtm.TBL_CONTDEBITOCOBRO['SECUENCIA']     := Dtm.TBL_MaximoTregistro.Value+1;
          Dtm.TBL_CONTDEBITOCOBRO['CODCICLO']      := Dtm.TBL_COMPANIACODCICLO.Value;
          Dtm.TBL_CONTDEBITOCOBRO['CODPERIODO']    := Dtm.TBL_COMPANIACODPERIODO.Value;
          Dtm.TBL_CONTDEBITOCOBRO['CODCLIENTE']    := DBEDIT5.TEXT;
          DBEdit1.DataField                        := 'RECIBO';
          Dtm.TBL_CONTDEBITOCOBRO['ASIENTO']       := 'No';
          Dtm.TBL_CONTDEBITOCOBROFECHA.AsDateTime  := FECHA1.Date;
          DBEDIT6.DataField                        := 'SECUENCIA';
          DBLookupComboBox1.DataField              := 'CODCOBRADOR';

          Dtm.TBL_DETDEBITOCOBRO.MasterSource   := Dtm.DTS_CONTDEBITOCOBRO;
          Dtm.TBL_DETDEBITOCOBRO.MasterFields   := 'SECUENCIA';
          Dbg_DebitoCobro.DataSource            := Dtm.DTS_DETDEBITOCOBRO;

          Dbg_DebitoCobro.Options               := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
          Bit_Asentar.Enabled                   := FALSE;
          Bit_NUEVO.Enabled                     := FALSE;
          DBLookupComboBox1.SetFocus;
          Dtm.TBL_CONTDEBITOCOBRO.Post;
          Dtm.Conexiones.Commit;
          Dtm.TBL_Maximo.Close;
          EXCEPT
          Dtm.Conexiones.Rollback;
          END;
        end

    END;



end;

procedure TFrm_AnulacionCobros.Bit_BuscarClick(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCliente.WBUSCAR.Clear;
     BuscarCliente.SHOWMODAL;
  IF BuscarCliente.ModalResult = MROK THEN
     BEGIN
       IF Dtm.TBL_CLIENTE.Locate('CODIGO',Dtm.TBL_CONSULTA.FieldByName('CODIGO').Value,[]) THEN
          BEGIN
             Dtm.TBL_CLIENTE.EDIT;
             DBEdit5.DataField         := 'Codigo';
             DBEdit3.DataField         := 'Apellido';
             DBEdit4.DataField         := 'Nombre';
             DBEdit10.DataField        := 'Balance';
             DBEdit11.DataField        := 'Telefono';
             Bit_Nuevo.Enabled         := TRUE;
             DBEDIT6.Enabled           := TRUE;
             DBLookupComboBox1.Enabled := TRUE;

          END;
     END;

end;

procedure TFrm_AnulacionCobros.FormCreate(Sender: TObject);
begin
       FECHA1.DateTime            := DATE;
       SEGURIDADSYS(Bit_Nuevo,Bit_Grabar,Bit_Eliminar,Bit_Buscar,FECHA1,Bit_Printe);
     IF NOT Dtm.TBL_CLIENTE.Active THEN
       BEGIN
        Dtm.TBL_CLIENTE.Active := TRUE;
       END;
     IF NOT Dtm.TBL_CONTROL.Active THEN
       BEGIN
        Dtm.TBL_CONTROL.Active := TRUE;
       END;
     IF NOT Dtm.TBL_CONTDEBITOCOBRO.Active THEN
       BEGIN
        Dtm.TBL_CONTDEBITOCOBRO.Active := TRUE;
       END;
      IF NOT Dtm.TBL_DETDEBITOCOBRO.Active THEN
       BEGIN
        Dtm.TBL_DETDEBITOCOBRO.Active := TRUE;
       END;
      IF NOT Dtm.TBL_COBRADOR.Active THEN
       BEGIN
        Dtm.TBL_COBRADOR.Active := TRUE;
       END;
    IF NOT Dtm.Tbl_CUENTACOBRAR.Active THEN
       BEGIN
        Dtm.Tbl_CUENTACOBRAR.Active := TRUE;
       END;
    IF NOT Dtm.Tbl_COMPANIA.Active THEN
       BEGIN
        Dtm.Tbl_COMPANIA.Active := TRUE;
       END;
    IF NOT Dtm.TBL_TIPODOCUMENTO.Active then
       begin
       Dtm.TBL_TIPODOCUMENTO.Active := True;
       end;
    IF NOT Dtm.TBL_TALONARIO.Active then
       begin
       Dtm.TBL_TALONARIO.Active := True;
       end;


       FECHA1.DateTime := DATE;

end;

procedure TFrm_AnulacionCobros.PageControl1Change(Sender: TObject);
begin
         IF PageControl1.ActivePageIndex = 1 THEN
       BEGIN
         Dtm.TBL_CONSULTA.SQL.Clear;
         Dtm.TBL_CONSULTA.SQL.Add('SELECT A.FACTURA,A.PAGARE,A.FECHAVENCE,A.DEBE,A.HABER,STR((A.DEBE-A.HABER),9,2) AS RESULTADO,');
         Dtm.TBL_CONSULTA.SQL.Add('A.ESTATUS,A.FECHACOBRO FROM TBL_CUENTACOBRAR A');
         Dtm.TBL_CONSULTA.SQL.Add('WHERE CODCLIENTE =:CODCLIENTE AND ESTATUS IN(:ESTATUS1,:ESTATUS2)');
         Dtm.TBL_CONSULTA.Params[0].Value := DBEdit5.Text;
         Dtm.TBL_CONSULTA.Params[1].Value := 'NORMAL';
         Dtm.TBL_CONSULTA.Params[2].Value := 'ADICIONAL';
         TRY
         Dtm.TBL_CONSULTA.ACTIVE   := TRUE;
         Dbg_Pendientes.DataSource := Dtm.Dts_CONSULTA;
         EXCEPT
         END;
       END;
       IF PageControl1.ActivePageIndex = 2 THEN
            BEGIN
              Dtm.TBL_CONSULTA.SQL.Clear;
              Dtm.TBL_CONSULTA.SQL.Add('SELECT');
              Dtm.TBL_CONSULTA.SQL.Add('A.FACTURA,A.PAGARE,A.FECHAVENCE,A.DEBE,A.HABER,A.MORA,');
              Dtm.TBL_CONSULTA.SQL.Add('A.PAGO,B.RECIBO,A.FECHA,C.RECIBO,C.FECHA');
              Dtm.TBL_CONSULTA.SQL.Add('FROM TBL_COBRO A');
              Dtm.TBL_CONSULTA.SQL.Add('LEFT JOIN TBL_CONTCOBRO B');
              Dtm.TBL_CONSULTA.SQL.Add('ON A.SECUENCIA = B.SECUENCIA');
              Dtm.TBL_CONSULTA.SQL.Add('LEFT JOIN TBL_DETDEBITOCOBRO C');
              Dtm.TBL_CONSULTA.SQL.Add('ON A.FACTURA = C.FACTURA');
              Dtm.TBL_CONSULTA.SQL.Add('AND A.CODCLIENTE = C.CODCLIENTE');
              Dtm.TBL_CONSULTA.SQL.Add('AND A.PAGARE = C.PAGARE');
              Dtm.TBL_CONSULTA.SQL.Add('AND A.RECIBO = C.RECIBO');
              Dtm.TBL_CONSULTA.SQL.Add('WHERE A.CODCLIENTE =:CODCLIENTE');
              Dtm.TBL_CONSULTA.SQL.Add('AND B.ASIENTO = :ASIENTO');
              Dtm.TBL_CONSULTA.Params[0].Value := DBEdit5.Text;
              Dtm.TBL_CONSULTA.Params[1].Value := 'Si';
              TRY
              Dtm.TBL_CONSULTA.ACTIVE := TRUE;
              Dbg_Pagados.DataSource := Dtm.Dts_CONSULTA;
              EXCEPT
              END;
            END;
           IF PageControl1.ActivePageIndex = 3 THEN
            BEGIN
              Dtm.TBL_CONSULTA.SQL.Clear;
              Dtm.TBL_CONSULTA.SQL.Add('SELECT * FROM TBL_NOTACREDITO');
              Dtm.TBL_CONSULTA.SQL.Add('WHERE CODCLIENTE =:CODCLIENTE');
              Dtm.TBL_CONSULTA.Params[0].Value := DBEdit5.Text;
              TRY
              Dtm.TBL_CONSULTA.ACTIVE := TRUE;
              Dbg_Credito.DataSource := Dtm.Dts_CONSULTA;
              EXCEPT
              END;
            END;

end;

procedure TFrm_AnulacionCobros.Dbg_DebitoCobroCellClick(Column: TColumn);
begin
Dtm.TBL_DETDEBITOCOBRO.EDIT;
end;

procedure TFrm_AnulacionCobros.Dbg_DebitoCobroDblClick(Sender: TObject);
begin
Dtm.TBL_DETDEBITOCOBRO.Edit;
end;

procedure TFrm_AnulacionCobros.Dbg_DebitoCobroEditButtonClick(
  Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCobros.SHOWMODAL;
  IF BuscarCobros.ModalResult = MROK THEN
     BEGIN
     IF Dtm.TBL_CONTROL.Locate('FACTURA;TIPOCOMPANIA',VarArrayOf([Dtm.TBL_Consulta.FieldByName('FACTURA').Value,Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
        BEGIN
        Dtm.TBL_CONTROL.Edit;
        IF NOT Dtm.TBL_DETDEBITOCOBRO.Locate('SECUENCIA;PAGARE;TIPOCOMPANIA',VarArrayOf([DBEdit6.Text,Dtm.TBL_CONSULTA.FieldByName('PAGARE').Value,Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
            BEGIN
             Dtm.Conexiones.StartTransaction;
             Try
             Dtm.TBL_DETDEBITOCOBRO.Insert;
             Dtm.TBL_DETDEBITOCOBROSECUENCIA.AsString    := DBEdit6.Text;
             Dtm.TBL_DETDEBITOCOBROPAGARE.Value          := Dtm.TBL_CONSULTA.FieldByName('PAGARE').Value;
             Dtm.TBL_DETDEBITOCOBROTIPOCOMPANIA.AsString := Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString;
             Dtm.TBL_DETDEBITOCOBRORECIBO.Value          := Dtm.TBL_CONSULTA.FieldByName('RECIBO').Value;
             Dtm.TBL_DETDEBITOCOBROFACTURA.Value         := Dtm.TBL_CONTROLFACTURA.Value;
             Dtm.TBL_DETDEBITOCOBROCODCLIENTE.AsString   := DBEdit5.Text;
             Dtm.TBL_DETDEBITOCOBROFECHAPAGARE.AsDateTime:= Dtm.TBL_CONSULTA.FieldByName('FECHAVENCE').Value;
             Dtm.TBL_DETDEBITOCOBRODEBE.Value            := Dtm.TBL_CONSULTA.FieldByName('DEBE').Value;
             Dtm.TBL_DETDEBITOCOBROHABER.Value           := Dtm.TBL_CONSULTA.FieldByName('HABER').Value;
             Dtm.TBL_DETDEBITOCOBROCREDITO.Value         := Dtm.TBL_CONSULTA.FieldByName('PAGO').Value;
             Dtm.TBL_DETDEBITOCOBRODOCUMENTO.Value       := Dtm.TBL_CONSULTA.FieldByName('SECUENCIA').Value;
             Dbg_DebitoCobro.SelectedIndex               := 4;
             Dtm.TBL_DETDEBITOCOBRO.Post;
             Dtm.Conexiones.Commit;
             Except
             Dtm.Conexiones.Rollback;
             End;
             END;
           END
           ELSE
           BEGIN
            APPLICATION.MessageBox('Factura No existe','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
           END;;
      END;

end;

procedure TFrm_AnulacionCobros.Dbg_DebitoCobroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      IF (KEY = 13) AND (Dbg_DebitoCobro.SelectedIndex = 0) THEN
       BEGIN
        IF Dtm.TBL_CONTROL.Locate('FACTURA;TIPOCOMPANIA',VarArrayOf([Dtm.TBL_Consulta.FieldByName('FACTURA').Value,Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
           BEGIN
            Dtm.TBL_CONTROL.Edit;
         IF NOT Dtm.TBL_DETDEBITOCOBRO.Locate('SECUENCIA;PAGARE;TIPOCOMPANIA',VarArrayOf([DBEdit6.Text,Dtm.TBL_CONSULTA.FieldByName('PAGARE').Value,Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
                BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_DETDEBITOCOBRO.Insert;
                Dtm.TBL_DETDEBITOCOBROSECUENCIA.AsString := DBEdit6.Text;
                Dtm.TBL_DETDEBITOCOBROCODCLIENTE.AsString:= DBEdit5.Text;
                Dtm.TBL_DETDEBITOCOBROPAGARE.Value       := Dtm.TBL_CONSULTA.FieldByName('PAGARE').Value;
                Dtm.TBL_DETDEBITOCOBROTIPOCOMPANIA.AsString := Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString;
                Dtm.TBL_DETDEBITOCOBROFECHAPAGARE.AsDateTime  := Dtm.TBL_CONSULTA.FieldByName('FECHAVENCE').Value;
                Dtm.TBL_DETDEBITOCOBRODEBE.Value         := Dtm.TBL_CONSULTA.FieldByName('DEBE').Value;
                Dtm.TBL_DETDEBITOCOBROHABER.Value        := Dtm.TBL_CONSULTA.FieldByName('HABER').Value;
                Dtm.TBL_DETDEBITOCOBROCREDITO.Value      := Dtm.TBL_CONSULTA.FieldByName('DEBE').Value - Dtm.TBL_CONSULTA.FieldByName('HABER').Value;
                Dbg_DebitoCobro.SelectedIndex         := 4;
                Dtm.TBL_DETDEBITOCOBRO.Post;
                Dtm.Conexiones.Commit;
                Except
                Dtm.Conexiones.Rollback;
                End;
                END
                ELSE
                BEGIN
                Dtm.TBL_DETDEBITOCOBRO.EDIT;
                END;
         END;
         Dbg_DebitoCobro.SelectedIndex := 2;
         KEY := 0;
    END;
    IF (KEY = 13) AND (Dbg_DebitoCobro.SelectedIndex = 2) THEN
       BEGIN
        Dbg_DebitoCobro.SelectedIndex := 3;
        KEY := 0;
       END;
    IF (KEY = 13) AND (Dbg_DebitoCobro.SelectedIndex = 3) THEN
       BEGIN
        Dbg_DebitoCobro.SelectedIndex := 4;
        KEY := 0;
       END;
     IF (KEY = 13) AND (Dbg_DebitoCobro.SelectedIndex = 4) THEN
       BEGIN
        Dbg_DebitoCobro.SelectedIndex := 5;
        KEY := 0;
       END;
       IF (KEY = 13) AND (Dbg_DebitoCobro.SelectedIndex = 5) then
        BEGIN
        Try
        Dtm.Conexiones.StartTransaction;
        Dtm.TBL_DETDEBITOCOBRO.EDIT;
        Dtm.TBL_DETDEBITOCOBROIMPORTE.Value  := Dtm.TBL_DETDEBITOCOBROCREDITO.Value;
        Dtm.TBL_DETDEBITOCOBROFecha.AsDateTime    := FECHA1.DATE;
        Dtm.TBL_DETDEBITOCOBRO.POST;
        Dtm.Conexiones.Commit;
        Bit_Grabar.Click;
        KEY := 0;
        Except
        Dtm.Conexiones.Rollback;
        End;
        END;

end;

procedure TFrm_AnulacionCobros.Dbg_PendientesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Pendientes.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_Pendientes.canvas.brush.color := clInfoBk;
            Dbg_Pendientes.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Pendientes.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_AnulacionCobros.Dbg_PagadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Pagados.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_Pagados.canvas.brush.color := clInfoBk;
            Dbg_Pagados.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Pagados.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure TFrm_AnulacionCobros.Dbg_CreditoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Credito.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_Credito.canvas.brush.color := clInfoBk;
            Dbg_Credito.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Credito.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_AnulacionCobros.Dbg_DebitoCobroDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF Frac(Dtm.TBL_DETDEBITOCOBRO.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_DebitoCobro.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_DebitoCobro.canvas.brush.color := clInfoBk;
            Dbg_DebitoCobro.Canvas.Font.Color  := clBlack;
           end;
           Dbg_DebitoCobro.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

end.
