unit AJUSTEINVENTARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, Buttons,Math, ToolWin, ExtCtrls, StdCtrls,
  Mask, DBCtrls,DB,funciones, Menus, QRCtrls, QuickRpt, Excel2000, Vcl.OleServer;

type
  TFrm_AjusteInventario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    Bit_Ayuda: TSpeedButton;
    Bit_Buscar: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    Bit_Eliminar: TSpeedButton;
    Bit_Salir: TSpeedButton;
    TabSheet2: TTabSheet;
    Dbg_Ajuste: TDBGrid;
    FECHA1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Bit_Asentar: TSpeedButton;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Bevel3: TBevel;
    Bevel4: TBevel;
    RichEdit1: TRichEdit;
    Label4: TLabel;
    Bevel5: TBevel;
    Bit_SubMenu: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Agregar1: TMenuItem;
    Catalogo1: TMenuItem;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Dbg_DetAjuste: TDBGrid;
    TabSheet4: TTabSheet;
    Dbg_Compras: TDBGrid;
    TabSheet5: TTabSheet;
    Dbg_Ventas: TDBGrid;
    SCANNER: TEdit;
    Bit_Printe: TSpeedButton;
    Panel2: TPanel;
    RepAjuste: TQuickRep;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel2: TQRLabel;
    FACTURA: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel141: TQRLabel;
    QRSysData8: TQRSysData;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRExprMemo3: TQRExprMemo;
    QRBand5: TQRBand;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    StatusBar1: TStatusBar;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    SpeedButton3: TSpeedButton;
    ExcelApp: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    procedure Bit_NuevoClick(Sender: TObject);
    procedure Bit_SalirClick(Sender: TObject);
    procedure Bit_EliminarClick(Sender: TObject);
    procedure Bit_GrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Dbg_DetAjusteEditButtonClick(Sender: TObject);
    procedure Dbg_DetAjusteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bit_AsentarClick(Sender: TObject);
    procedure Dbg_DetAjusteDblClick(Sender: TObject);
    procedure Bit_BuscarClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure Dbg_ComprasDblClick(Sender: TObject);
    procedure Dbg_ComprasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Dbg_VentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SCANNERKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1Click(Sender: TObject);
    procedure Bit_PrinteClick(Sender: TObject);
    procedure Dbg_AjusteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Dbg_DetAjusteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Catalogo1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
    TCodBarra   = Record
    compania    : String[3];
    Producto    : String[4];
    Libras      : Double;
    Validador   : String[1];
 End;

var
  Frm_AjusteInventario: TFrm_AjusteInventario;
  WDESCOSTO1,SUBTDESCUE, WDESCOSTO2,WDESCGENE,WCOSTOITBIS :REAL;
  CodBarras : TCodBarra;
  j : integer;
  Resultados : Double;
  Docs, NewTemplate, ItemIndex,L1,MK1: OleVariant;

implementation

uses BuscaMercancia, BUSCACATALOGO, TABLAS, CATALOGO,
  BuscaAjusteInventario;



{$R *.dfm}

procedure TFrm_AjusteInventario.Bit_NuevoClick(Sender: TObject);
begin
          Dtm.TBL_Maximo.SQL.Clear;
          Dtm.TBL_Maximo.SQL.Add('SELECT MAX(SECUENCIA) AS TREGISTRO,GETDATE() AS TFECHASYS FROM TBL_CONTAJUSTE');
          Dtm.TBL_Maximo.Active := TRUE;

   IF NOT Dtm.TBL_CONTAJUSTE.Locate('SECUENCIA',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
      BEGIN
      Dtm.Conexiones.StartTransaction;
      TRY
      Dtm.TBL_CONTAJUSTE.Insert;
      Dtm.TBL_CONTAJUSTESECUENCIA.VALUE      := Dtm.TBL_MaximoTregistro.Value+1;
      FECHA1.Date                            := Dtm.TBL_MaximoTFechaSys.AsDateTime;
      Dtm.TBL_CONTAJUSTEFECHA.AsDateTime          := FECHA1.Date;
      Dtm.TBL_CONTAJUSTEASIENTO.Value        := 'No';
      Dtm.TBL_CONTAJUSTESECUENCIA.Alignment  := taLeftJustify;
      DBEdit1.DataField                      := 'SECUENCIA';
      DBComboBox1.DataField                  := 'TIPO';

      Dtm.TBL_DETAJUSTE.MasterSource         := Dtm.DTS_CONTAJUSTE;
      Dtm.TBL_DETAJUSTE.MasterFields         := 'SECUENCIA';
      Dbg_DetAjuste.DataSource               := Dtm.DTS_DETAJUSTE;

      Dbg_DetAjuste.Options                  := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
      Bit_Nuevo.Enabled   := False;
      DBComboBox1.Enabled := TRUE;
      Bit_Eliminar.Enabled:= TRUE;
      Bit_Asentar.Enabled := TRUE;
      Dtm.TBL_CONTAJUSTE.Post;
      Dtm.Conexiones.Commit;
      SCANNER.SetFocus;
      EXCEPT
      Dtm.Conexiones.Rollback;
      END;
   END;
   USUARIOTRANSA(Dtm.TBL_CONTAJUSTESECUENCIA.Value,'AJUSTE INVENTARIO','INSERT',Date,'No',UserRoles.IDUSUARIO);
   Dtm.TBL_Maximo.Close;
end;

procedure TFrm_AjusteInventario.Bit_SalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_AjusteInventario.Bit_EliminarClick(Sender: TObject);
begin
 IF Dtm.TBL_DETAJUSTE.State IN [dsEdit, dsInsert] THEN
    BEGIN
     IF MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
         Dtm.Conexiones.StartTransaction;
         TRY
         Dtm.TBL_DETAJUSTE.EDIT;
         Dtm.TBL_DETAJUSTE.DELETE;
         Dtm.Conexiones.Commit;
         EXCEPT
         Dtm.Conexiones.Rollback;
         END;
       END;
     END
     ELSE
     BEGIN
     APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
     END;

end;

procedure TFrm_AjusteInventario.Bit_GrabarClick(Sender: TObject);
begin
    IF Dtm.TBL_CONTAJUSTEASIENTO.AsString = 'Si' THEN
      BEGIN
        APPLICATION.MessageBox('Inventario está Asentada, No Modificable','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
        Abort;
      END;
      IF Dtm.TBL_DETAJUSTECODALMACEN.Value <= 0 then
        BEGIN
         APPLICATION.MessageBox('Alamacen Esta En Blanco','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         ABORT;
         END;
        Dtm.Conexiones.StartTransaction;
        TRY
        Dtm.TBL_DETAJUSTE.EDIT;
        Dtm.TBL_DETAJUSTE.POST;
        Dtm.Conexiones.Commit;
        EXCEPT
        Dtm.Conexiones.Rollback;
        END;

        Dtm.Conexiones.StartTransaction;
        TRY
        Dtm.TBL_CONTAJUSTE.EDIT;
        Dtm.TBL_CONTAJUSTECOMENTARIO.Value := RichEdit1.Text;
        Dtm.TBL_CONTAJUSTE.Post;
        Dtm.Conexiones.Commit;
        EXCEPT
        Dtm.Conexiones.Rollback;
        END;
        Bit_Asentar.Enabled   := TRUE;
        SCANNER.Clear;
        SCANNER.SetFocus;
end;

procedure TFrm_AjusteInventario.FormCreate(Sender: TObject);
begin
       FECHA1.Date        := DATE;
    IF NOT Dtm.TBL_CONTAJUSTE.Active THEN
       BEGIN
        Dtm.TBL_CONTAJUSTE.Active := TRUE;
       END;
     IF NOT Dtm.TBL_DETAJUSTE.Active THEN
       BEGIN
        Dtm.TBL_DETAJUSTE.Active := TRUE;
       END;
     IF NOT Dtm.TBL_CATALOGO.Active THEN
       BEGIN
        Dtm.TBL_CATALOGO.Active := TRUE;
       END;
     IF NOT Dtm.TBL_COMPANIA.Active THEN
       BEGIN
        Dtm.TBL_COMPANIA.Active := TRUE;
       END;
     IF NOT Dtm.Tbl_ALMACEN.Active THEN
       BEGIN
        Dtm.TBL_ALMACEN.Active := TRUE;
       END;
     IF NOT Dtm.Tbl_INVENTALMACEN.Active THEN
       BEGIN
        Dtm.TBL_INVENTALMACEN.Active := TRUE;
       END;
end;

procedure TFrm_AjusteInventario.Dbg_DetAjusteEditButtonClick(Sender: TObject);
begin
      IF DBComboBox1.Text = '' THEN
         BEGIN
         APPLICATION.MessageBox('Tipo Está en Blanco','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         Abort;
         END;
    IF trim(DBComboBox1.Text) = 'Sumar' THEN
       BEGIN
       Dtm.TBL_CONSULTA.SQL.Clear;
       BuscarMercancia.WBUSCAR.Clear;
       BuscarMercancia.SHOWMODAL;
       IF BuscarMercancia.ModalResult = MROK THEN
          BEGIN
      IF Dtm.TBL_CATALOGO.LOCATE('CODPRODUCTO',Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').AsString,[]) THEN
             BEGIN
             Dtm.TBL_CATALOGO.Edit;
             IF NOT Dtm.TBL_DETAJUSTE.Locate('SECUENCIA;CODPRODUCTO',VarArrayOf([DBEDIT1.Text,Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').AsString]),[])  THEN
                BEGIN
                Dtm.Conexiones.StartTransaction;
                TRY
                Dtm.TBL_DETAJUSTE.INSERT;
                Dtm.TBL_DETAJUSTESECUENCIA.AsString    := DBEdit1.Text;
                Dtm.TBL_DETAJUSTECODPRODUCTO.AsString  := Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').AsString;
                Dtm.TBL_DETAJUSTEDESCRIPCION.VALUE     := Dtm.TBL_CONSULTA.FieldByName('DESCRIPCION').AsString;
                Dtm.TBL_DETAJUSTECOSTO.Value           := Dtm.TBL_CONSULTA.FieldByName('COSTOCOMPRA').Value;
                Dtm.TBL_DETAJUSTECODALMACEN.ReadOnly   := False;
                Dtm.TBL_DETAJUSTECODALMACEN.Value      := 1;
                Dtm.TBL_DETAJUSTECANTIDAD.Value        := 1;
                Dtm.TBL_DETAJUSTEFECHA.AsDateTime      := DATE;
                Dtm.TBL_DETAJUSTE.Post;
                Dtm.Conexiones.Commit;
                Bit_Grabar.Click;
                EXCEPT
                Dtm.Conexiones.Rollback;
                END;
                END
                ELSE
                BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_DETAJUSTE.EDIT;
                Dtm.TBL_DETAJUSTECANTIDAD.Value :=  Dtm.TBL_DETAJUSTECANTIDAD.Value + 1;
                Dtm.TBL_DETAJUSTE.Post;
                Dtm.Conexiones.Commit;
                Bit_Grabar.Click;
                Except
                Dtm.Conexiones.Rollback;
                End;

                END;
             END;
           END;
        END;

        // cuando rebaja debe traer el almacen

    IF trim(DBComboBox1.Text) = 'Restar' THEN
       BEGIN
       Dtm.TBL_CONSULTA.SQL.Clear;
       BuscarCatalogo.WBUSCAR.Clear;
       BuscarCatalogo.SHOWMODAL;
       IF BuscarCatalogo.ModalResult = MROK THEN
          BEGIN
      IF Dtm.TBL_CATALOGO.LOCATE('CODPRODUCTO',Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').AsString,[]) THEN
             BEGIN
             Dtm.TBL_CATALOGO.Edit;
             IF NOT Dtm.TBL_DETAJUSTE.Locate('SECUENCIA;CODPRODUCTO',VarArrayOf([DBEDIT1.Text,Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').Value]),[]) THEN
                BEGIN
                Dtm.TBL_DETAJUSTE.INSERT;
                Dtm.TBL_DETAJUSTECODALMACEN.ReadOnly:= False;
                Dtm.TBL_DETAJUSTESECUENCIA.ASSTRING := DBEDIT1.TEXT;
                Dtm.TBL_DETAJUSTECODPRODUCTO.VALUE  := Dtm.TBL_CONSULTA['CODPRODUCTO'];
                Dtm.TBL_DETAJUSTEDESCRIPCION.VALUE  := Dtm.TBL_CONSULTA['DESCRIPCION'];
                Dtm.TBL_DETAJUSTECODALMACEN.Value   := Dtm.TBL_CONSULTA['CODALMACEN'];
                Dtm.TBL_DETAJUSTECODALMACEN.ReadOnly:= True;
                Dtm.TBL_DETAJUSTEFECHA.AsDateTime   := DATE;
                Dbg_DetAjuste.SelectedIndex         := 3;
                END
                ELSE
                BEGIN
                Dtm.TBL_DETAJUSTE.EDIT;
                END;
             END;
           END;
         END;

end;

procedure TFrm_AjusteInventario.Dbg_DetAjusteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    IF (KEY = 13) AND (Dbg_DetAjuste.SelectedIndex = 0) THEN
       BEGIN
       IF Dtm.TBL_CATALOGO.Locate('CODPRODUCTO',Dbg_DetAjuste.SelectedField.Value,[]) THEN
          BEGIN
             Dtm.TBL_CATALOGO.Edit;
             IF NOT Dtm.TBL_DETAJUSTE.Locate('SECUENCIA;CODPRODUCTO',VarArrayOf([DBEDIT1.Text,Dtm.TBL_CATALOGO.FieldByName('CODIGO').Value]),[]) THEN
                BEGIN
                Dtm.TBL_DETAJUSTE.INSERT;
                Dtm.TBL_DETAJUSTESECUENCIA.ASSTRING := DBEDIT1.TEXT;
                Dtm.TBL_DETAJUSTECODALMACEN.VALUE   := Dtm.TBL_CLIENTECodigo.VALUE;
                Dtm.TBL_DETAJUSTECODPRODUCTO.VALUE  := Dtm.TBL_CATALOGOCODPRODUCTO.Value;
                Dtm.TBL_DETAJUSTEDESCRIPCION.VALUE  := Dtm.TBL_CATALOGODESCRIPCION.Value;
                Dbg_DetAjuste.SelectedIndex := 2;
                END
                ELSE
                BEGIN
                Dtm.TBL_DETAJUSTE.EDIT;
                END;
          END;
          Dbg_DetAjuste.SelectedIndex := 2;
          KEY := 0;
    END;
    IF (KEY = 13) AND (Dbg_DetAjuste.SelectedIndex = 2) THEN
       BEGIN
        Dbg_DetAjuste.SelectedIndex := 3;
        KEY := 0;
       END;
    IF (KEY = 13) AND (Dbg_DetAjuste.SelectedIndex = 3) then
        BEGIN
         Dbg_DetAjuste.SelectedIndex := 4;
         KEY := 0;
        END;
    IF (KEY = 13) AND (Dbg_DetAjuste.SelectedIndex = 4) then
        BEGIN
         Dbg_DetAjuste.SelectedIndex := 5;
         KEY := 0;
        END;

    IF (KEY = 13) AND (Dbg_DetAjuste.SelectedIndex = 5) then
        BEGIN
         Dtm.TBL_DETAJUSTE.EDIT;
         Dtm.TBL_DETAJUSTE.POST;
         Bit_Grabar.Enabled           := TRUE;
         Bit_Grabar.Click;
         KEY := 0;
        END;

end;

procedure TFrm_AjusteInventario.Bit_AsentarClick(Sender: TObject);
begin

      IF DBComboBox1.Text = '' THEN
         BEGIN
         APPLICATION.MessageBox('Tipo Está en Blanco','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         Abort;
         END;
   if MessageDlg('Confirma el Asiento',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
        BEGIN
         Dtm.Conexiones.StartTransaction;
         TRY
         Dtm.TBL_CONTAJUSTE.Edit;
         Dtm.TBL_CONTAJUSTEASIENTO.Value := 'Si';
         Dtm.TBL_CONTAJUSTE.Post;
         Dtm.Conexiones.Commit;
         EXCEPT
         Dtm.Conexiones.Rollback;
         END;

                 Dtm.TBL_DETAJUSTE.First;
       WHILE NOT Dtm.TBL_DETAJUSTE.Eof DO
             BEGIN
             Dtm.TBL_CATALOGO.First;
          IF Dtm.TBL_CATALOGO.LOCATE('CODPRODUCTO',Dtm.TBL_DETAJUSTE.FieldByName('CODPRODUCTO').AsString,[]) THEN
             BEGIN
             IF TRIM(DBComboBox1.Text) = 'Sumar' THEN
                BEGIN
                 Dtm.Conexionesa.StartTransaction;
                 TRY
                 Dtm.TBL_CATALOGO.Edit;
                 Resultados :=  0;
                 Resultados := Dtm.TBL_CATALOGOEXISTENCIA.Value;
                 Resultados := Resultados + Dtm.TBL_DETAJUSTECANTIDAD.Value;
                 Dtm.TBL_CATALOGOEXISTENCIA.Value  := Resultados;
                 Dtm.TBL_CATALOGOCOSTOCOMPRA.Value := Dtm.TBL_DETAJUSTECOSTO.Value;
                 Dtm.TBL_CATALOGO.Post;
                 Dtm.Conexionesa.Commit;
                 EXCEPT
                 Dtm.Conexionesa.Rollback;
                 END;
                END;

             IF TRIM(DBComboBox1.Text) = 'Restar' THEN
                BEGIN
                 Dtm.Conexionesa.StartTransaction;
                 TRY
                 Dtm.TBL_CATALOGO.Edit;
                 Resultados := 0;
                 Resultados := Dtm.TBL_CATALOGOEXISTENCIA.Value;
                 Resultados := Resultados - Dtm.TBL_DETAJUSTECANTIDAD.Value;
                 Dtm.TBL_CATALOGOEXISTENCIA.Value := Resultados;
                 Dtm.TBL_CATALOGO.Post;
                 Dtm.Conexionesa.Commit;
                 EXCEPT
                 Dtm.Conexionesa.Rollback;
                 END;
                END;

             END;
             Dtm.TBL_DETAJUSTE.NEXT;
           END;

                 Dtm.TBL_DETAJUSTE.First;
       WHILE NOT Dtm.TBL_DETAJUSTE.Eof DO
             BEGIN
                Dtm.TBL_INVENTALMACEN.First;
             IF NOT Dtm.TBL_INVENTALMACEN.Locate('CODALMACEN;CODPRODUCTO',VarArrayOf([Dtm.TBL_DETAJUSTE.FieldByName('CODALMACEN').Value,Dtm.TBL_DETAJUSTE.FieldByName('CODPRODUCTO').AsString]),[]) THEN
                BEGIN
                 Dtm.Conexionesa.StartTransaction;
                 TRY
                 Dtm.TBL_INVENTALMACEN.INSERT;
                 Dtm.TBL_INVENTALMACEN['CODALMACEN']   := Dtm.TBL_DETAJUSTECODALMACEN.AsString;
                 Dtm.TBL_INVENTALMACEN['CODPRODUCTO']  := Dtm.TBL_DETAJUSTECODPRODUCTO.AsString;
                 Dtm.TBL_INVENTALMACENEXISTENCIA.Value := 0;
                 Dtm.TBL_INVENTALMACENCOSTO.Value      := Dtm.TBL_DETAJUSTECOSTO.Value;
                 Dtm.TBL_INVENTALMACEN.Post;
                 Dtm.Conexionesa.Commit;
                 EXCEPT
                 Dtm.Conexionesa.Rollback;
                 END;
                END;
               Dtm.TBL_DETAJUSTE.NEXT;
             END;

                 Dtm.TBL_DETAJUSTE.First;
       WHILE NOT Dtm.TBL_DETAJUSTE.Eof DO
             BEGIN
                Dtm.TBL_INVENTALMACEN.First;
             IF Dtm.TBL_INVENTALMACEN.Locate('CODALMACEN;CODPRODUCTO',VarArrayOf([Dtm.TBL_DETAJUSTE.FieldByName('CODALMACEN').Value,Dtm.TBL_DETAJUSTE.FieldByName('CODPRODUCTO').AsString]),[]) THEN
                BEGIN
                IF TRIM(DBComboBox1.Text) = 'Sumar' THEN
                  BEGIN
                   Dtm.Conexionesa.StartTransaction;
                   TRY
                   Dtm.TBL_INVENTALMACEN.Edit;
                   Resultados := 0;
                   Resultados := Dtm.TBL_INVENTALMACENEXISTENCIA.Value;
                   Resultados := Resultados + Dtm.TBL_DETAJUSTECANTIDAD.Value;
                   Dtm.TBL_INVENTALMACENEXISTENCIA.Value := Resultados;
                   Dtm.TBL_INVENTALMACENCOSTO.Value      := Dtm.TBL_DETAJUSTECOSTO.Value;
                   Dtm.TBL_INVENTALMACEN.Post;
                   Dtm.Conexionesa.Commit;
                   EXCEPT
                   Dtm.Conexionesa.Rollback;
                   END;
                  END;

               IF TRIM(DBComboBox1.Text) = 'Restar' THEN
                  BEGIN
                     Dtm.Conexionesa.StartTransaction;
                     TRY
                      Dtm.TBL_INVENTALMACEN.Edit;
                      Resultados := 0;
                      Resultados := Dtm.TBL_INVENTALMACENEXISTENCIA.Value;
                      Resultados := Resultados - Dtm.TBL_DETAJUSTECANTIDAD.Value;
                      Dtm.TBL_INVENTALMACENEXISTENCIA.Value := Resultados;
                      Dtm.TBL_INVENTALMACENCOSTO.Value      := Dtm.TBL_DETAJUSTECOSTO.Value;
                      Dtm.TBL_INVENTALMACEN.Post;
                      Dtm.Conexionesa.Commit;
                     EXCEPT
                     Dtm.Conexionesa.Rollback;
                  END;
                 END;
               END;
               Dtm.TBL_DETAJUSTE.NEXT;
             END;
             Bit_Nuevo.Enabled   := TRUE;
             DBComboBox1.Enabled := FALSE;
             Bit_Eliminar.Enabled:= FALSE;
             Bit_Asentar.Enabled := FALSE;
             Bit_Printe.Enabled  := False;
             Dbg_DetAjuste.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
             USUARIOTRANSA(Dtm.TBL_CONTAJUSTESECUENCIA.Value,'AJUSTE INVENTARIO','ASIENTO',Date,'Si',UserRoles.IDUSUARIO);
             APPLICATION.MessageBox('Proceso Completo','A v i s o',MB_DEFBUTTON1 + MB_IconInformation);
         END;


end;

procedure TFrm_AjusteInventario.Dbg_DetAjusteDblClick(Sender: TObject);
begin
   Dtm.TBL_DETAJUSTE.Edit;
end;

procedure TFrm_AjusteInventario.Bit_BuscarClick(Sender: TObject);
begin
    Dtm.TBL_CONSULTA.SQL.Clear;
   BuscarAjusteInventario.BUSCAR.Clear;
   BuscarAjusteInventario.SHOWMODAL;
IF BuscarAjusteInventario.ModalResult = MROK THEN
   BEGIN
     IF Dtm.TBL_CONTAJUSTE.Locate('SECUENCIA',Dtm.TBL_Consulta.FieldByName('SECUENCIA').Value,[]) THEN
        BEGIN
            Dtm.Conexiones.StartTransaction;
            try
            Dtm.TBL_CONTAJUSTE.Edit;
            DBEDIT1.DataField             := 'SECUENCIA';
            FECHA1.DateTime               := Dtm.TBL_CONTAJUSTE['FECHA'];
            DBComboBox1.DataField         := 'TIPO';
            Dtm.TBL_DETAJUSTE.MasterSource:= Dtm.DTS_CONTAJUSTE;
            Dtm.TBL_DETAJUSTE.MasterFields:= 'SECUENCIA';
            Dbg_DetAjuste.DataSource      := Dtm.DTS_DETAJUSTE;
            Bit_Nuevo.Enabled             := False;
            Bit_Printe.Enabled            := True;
            Dtm.Conexiones.Commit;
            EXCEPT
            Dtm.Conexiones.Rollback;
            END;
        IF Dtm.TBL_CONTAJUSTEASIENTO.AsString = 'Si' then
           BEGIN
           Dbg_DetAjuste.Options     := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
           FECHA1.Enabled            := False;
           DBComboBox1.Enabled       := False;
           Bit_Asentar.Enabled       := False;
           Bit_Grabar.Enabled        := False;
           FECHA1.Enabled            := FALSE;
           Bit_Eliminar.Enabled      := FALSE;
           END;
          IF Dtm.TBL_CONTAJUSTEASIENTO.AsString = 'No' then
               BEGIN
                Dbg_DetAjuste.Options     := [dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
                FECHA1.Enabled            := True;
                DBComboBox1.Enabled       := True;
                Bit_Asentar.Enabled       := True;
                Bit_Grabar.Enabled        := True;
                FECHA1.Enabled            := True;
                Bit_Eliminar.Enabled      := True;
               END;
              END;
        END;

end;

procedure TFrm_AjusteInventario.PageControl2Change(Sender: TObject);
begin
   IF PageControl2.ActivePageIndex = 1 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT PEDIDO,CODPRODUCTO,PRECIO,CANTIDAD,FECHA,DESCUENTO,DESCUENTO1,ITBIS FROM DATAELECTROSOFT.Dbo.TBL_COMPRAPLANTAS');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE CODPRODUCTO = :CODPRODUCTO');
     Dtm.TBL_CONSULTA.Params[0].Value := Dtm.TBL_DETAJUSTECODPRODUCTO.AsString;
     Dtm.TBL_CONSULTA.SQL.Add('ORDER BY FECHA DESC');
     TRY
     Dtm.TBL_CONSULTA.ACTIVE := TRUE;
     Dbg_Compras.DataSource := Dtm.DTS_CONSULTA;

     EXCEPT
      APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
     END;
   END;
   IF PageControl2.ActivePageIndex = 2 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT FACTURA,PRECIOVENTA,CANTIDAD,FECHA FROM DATAELECTROSOFT.Dbo.TBL_FACTURA');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE CODPRODUCTO = :CODPRODUCTO');
     Dtm.TBL_CONSULTA.Params[0].Value := Dtm.TBL_DETAJUSTECODPRODUCTO.AsString;
     Dtm.TBL_CONSULTA.SQL.Add('ORDER BY FECHA DESC');
     TRY
     Dtm.TBL_CONSULTA.ACTIVE := TRUE;
     Dbg_Compras.DataSource := Dtm.DTS_CONSULTA;
     EXCEPT
      APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
     END;
   END;


end;

procedure TFrm_AjusteInventario.Dbg_ComprasDblClick(Sender: TObject);
begin
  Dtm.Conexiones.StartTransaction;
  Try
  WDESCOSTO1  := 0;
  SUBTDESCUE  := 0;
  WDESCOSTO2  := 0;
  WDESCGENE   := 0;
  WCOSTOITBIS := 0;

   WDESCOSTO1                            := (Dtm.TBL_CONSULTA.FieldByName('PRECIO').VALUE * (Dtm.TBL_CONSULTA.FieldByName('DESCUENTO').VALUE/100));
   SUBTDESCUE                            := (Dtm.TBL_CONSULTA.FieldByName('PRECIO').VALUE - WDESCOSTO1);
   WDESCOSTO2                            := (SUBTDESCUE * (Dtm.TBL_CONSULTA.FieldByName('DESCUENTO1').VALUE/100));
   WDESCGENE                             := (WDESCOSTO1+ WDESCOSTO2);
   WCOSTOITBIS                           := ((Dtm.TBL_CONSULTA.FieldByName('PRECIO').VALUE - WDESCGENE) * Dtm.TBL_CONSULTA.FieldByName('ITBIS').VALUE / 100 );
  Dtm.TBL_DETAJUSTE.Edit;
  Dtm.TBL_DETAJUSTECOSTO.Value := ROUNDTO(((Dtm.TBL_CONSULTA.FieldByName('PRECIO').VALUE - WDESCGENE)+WCOSTOITBIS),-2);
  Dtm.TBL_DETAJUSTE.Post;
  Dtm.Conexiones.Commit;
  APPLICATION.MessageBox('Registro Actualizado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
  except
  Dtm.Conexiones.Rollback;
  end;
end;

procedure TFrm_AjusteInventario.Dbg_ComprasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Compras.canvas.brush.color := clNavy
           end
           else
           begin
            Dbg_Compras.canvas.brush.color := clInfoBk;
            Dbg_Compras.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Compras.DefaultDrawColumnCell(rect,DataCol,Column,State)
end;

procedure TFrm_AjusteInventario.Dbg_VentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Ventas.canvas.brush.color := clNavy
           end
           else
           begin
            Dbg_Ventas.canvas.brush.color := clInfoBk;
            Dbg_Ventas.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Ventas.DefaultDrawColumnCell(rect,DataCol,Column,State)
end;

procedure TFrm_AjusteInventario.SCANNERKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
     begin
  IF DBComboBox1.Text = '' THEN
     BEGIN
     APPLICATION.MessageBox('Tipo Está en Blanco','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
     Abort;
   END;
   CodBarras.compania := Copy(SCANNER.Text,0,3);
   CodBarras.Producto := Copy(SCANNER.Text,4,4);
   CodBarras.Libras   := StrToInt(Copy(SCANNER.Text,8,5));
   CodBarras.Validador:= Copy(SCANNER.Text,13,1);
   if CodBarras.compania = '200' then
      begin
      SCANNER.Text := CodBarras.compania+CodBarras.Producto;
      end;
     IF Dtm.TBL_CATALOGO.Locate('CODPRODUCTO',SCANNER.Text,[]) THEN
      begin
                    Dtm.TBL_CATALOGO.Edit;
             IF NOT Dtm.TBL_DETAJUSTE.Locate('SECUENCIA;CODPRODUCTO',VarArrayOf([DBEDIT1.Text,SCANNER.TEXT]),[])  THEN
                BEGIN
                Dtm.Conexiones.StartTransaction;
                TRY
                Dtm.TBL_DETAJUSTE.INSERT;
                Dtm.TBL_DETAJUSTESECUENCIA.AsString    := DBEdit1.Text;
                Dtm.TBL_DETAJUSTECODPRODUCTO.AsString  := Dtm.TBL_CATALOGO.FieldByName('CODPRODUCTO').AsString;
                Dtm.TBL_DETAJUSTEDESCRIPCION.VALUE     := Dtm.TBL_CATALOGO.FieldByName('DESCRIPCION').AsString;
                Dtm.TBL_DETAJUSTECOSTO.Value           := Dtm.TBL_CATALOGO.FieldByName('COSTOCOMPRA').Value;
                Dtm.TBL_DETAJUSTECODALMACEN.ReadOnly   := False;
                Dtm.TBL_DETAJUSTECODALMACEN.Value      := 1;
                Dtm.TBL_DETAJUSTECANTIDAD.Value        := 1;
                Dtm.TBL_DETAJUSTEFECHA.AsDateTime      := DATE;
                Dtm.TBL_DETAJUSTE.Post;
                Dtm.Conexiones.Commit;
                Bit_Grabar.Click;
                EXCEPT
                Dtm.Conexiones.Rollback;
                END;
                END
                ELSE
                BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_DETAJUSTE.Edit;
                Dtm.TBL_DETAJUSTECANTIDAD.Value := Dtm.TBL_DETAJUSTECANTIDAD.Value +1;
                Dtm.TBL_DETAJUSTE.Post;
                Dtm.Conexiones.Commit;
                Bit_Grabar.Click;
                Except
                Dtm.Conexiones.Rollback;
                End;

                END;
       end;
    end;
end;

procedure TFrm_AjusteInventario.SpeedButton3Click(Sender: TObject);
begin
         Dtm.TBL_CONSULTA.SQL.Clear;
         Dtm.TBL_CONSULTA.SQL.Add('SELECT ');
         Dtm.TBL_CONSULTA.SQL.Add('A.SECUENCIA,');
         Dtm.TBL_CONSULTA.SQL.Add('A.FECHA,');
         Dtm.TBL_CONSULTA.SQL.Add('A.TIPO,');
         Dtm.TBL_CONSULTA.SQL.Add('B.CODALMACEN,');
         Dtm.TBL_CONSULTA.SQL.Add('B.CANTIDAD,');
         Dtm.TBL_CONSULTA.SQL.Add('B.COSTO,');
         Dtm.TBL_CONSULTA.SQL.Add('C.CODPRODUCTO,');
         Dtm.TBL_CONSULTA.SQL.Add('C.DESCRIPCION,');
         Dtm.TBL_CONSULTA.SQL.Add('C.MODELO,');
         Dtm.TBL_CONSULTA.SQL.Add('B.COSTO * B.CANTIDAD AS IMPORTE');
         Dtm.TBL_CONSULTA.SQL.Add('FROM TBL_CONTAJUSTE A');
         Dtm.TBL_CONSULTA.SQL.Add('INNER JOIN TBL_DETAJUSTE B');
         Dtm.TBL_CONSULTA.SQL.Add('ON A.SECUENCIA = B.SECUENCIA');
         Dtm.TBL_CONSULTA.SQL.Add('INNER JOIN DATAELECTROSOFT.Dbo.TBL_CATALOGO C');
         Dtm.TBL_CONSULTA.SQL.Add('ON B.CODPRODUCTO = C.CODPRODUCTO');
         Dtm.TBL_CONSULTA.SQL.Add('WHERE A.SECUENCIA = :SECUENCIA');
         Dtm.TBL_CONSULTA.Params[0].Value := DBEdit1.Text;
         TRY
         Dtm.TBL_CONSULTA.Active := TRUE;
         EXCEPT
         APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         END;
         if Dtm.TBL_CONSULTA.Eof then
            begin
            APPLICATION.MessageBox('No Existe Registro','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
            Abort;
            end;


       ExcelApp := TExcelApplication.Create(Self);
       ExcelWorkbook1    := TExcelWorkbook.Create(self);
       try
       ExcelApp.Connect;
       except
       MessageDlg('Excel no está instalado', mtError, [mbOk], 0);
       Abort;
       end;
      TRY
       ExcelApp.Caption := 'INVENTARIO DE MERCANCIA';
       NewTemplate := False;
       ItemIndex   := 1;
       DOCS := 'C:\Electrosoft\Plantillas\VENTAS.xls';
       ExcelApp.Workbooks.Add(DOCS,NewTemplate);
       ExcelWorkbook1.ConnectTo(ExcelApp.Workbooks.Item[ItemIndex]);
       ExcelApp.Visible[0] := True;
         J := 1;
           ExcelApp.Cells.Item[J,1] := Dtm.TBL_COMPANIACOMPANIA.AsString;
           J := 2;
           ExcelApp.Cells.Item[J,1] := 'Desde '+DateToStr(date)+ ' Hasta '+DateTostr(date);
           J := 5;
       ExcelApp.Cells.Item[J,1] := 'Código';
       ExcelApp.Cells.Item[J,2] := 'Descripción';
       ExcelApp.Cells.Item[J,3] := 'Modelo';
       ExcelApp.Cells.Item[J,4] := 'Costo';
       ExcelApp.Cells.Item[J,5] := 'Cantidad';
       ExcelApp.Cells.Item[J,6] := 'Importe';
       Inc(J);

           H := 0;
           Dtm.TBL_CONSULTA.First;
   WHILE NOT Dtm.TBL_CONSULTA.Eof DO
      BEGIN
      ExcelApp.Cells.Item[J,1] := Dtm.TBL_CONSULTA.FieldByName('CODPRODUCTO').AsVariant;
      ExcelApp.Cells.Item[J,2] := Dtm.TBL_CONSULTA.FieldByName('DESCRIPCION').AsVariant;
      ExcelApp.Cells.Item[J,3] := Dtm.TBL_CONSULTA.FieldByName('MODELO').AsVariant;
      ExcelApp.Cells.Item[J,4] := Dtm.TBL_CONSULTA.FieldByName('COSTO').AsVariant;
      ExcelApp.Cells.Item[J,5] := Dtm.TBL_CONSULTA.FieldByName('CANTIDAD').AsVariant;
      ExcelApp.Cells.Item[J,6] := Dtm.TBL_CONSULTA.FieldByName('IMPORTE').AsVariant;
      Inc(J);
      Dtm.TBL_CONSULTA.Next;
      END;
      ShowMessage('Carga Completa')
      Except
    ON E: Exception do
    BEGIN
      ShowMessage(E.Message);
      ExcelApp.Disconnect;
      ExcelWorkbook1.Free;
      ExcelApp.Free;
   END;
  END;

end;

procedure TFrm_AjusteInventario.DBComboBox1Click(Sender: TObject);
begin
       SCANNER.SetFocus;
end;

procedure TFrm_AjusteInventario.Bit_PrinteClick(Sender: TObject);
begin
         Dtm.TBL_CONSULTA.SQL.Clear;
         Dtm.TBL_CONSULTA.SQL.Add('SELECT ');
         Dtm.TBL_CONSULTA.SQL.Add('A.SECUENCIA,');
         Dtm.TBL_CONSULTA.SQL.Add('A.FECHA,');
         Dtm.TBL_CONSULTA.SQL.Add('A.TIPO,');
         Dtm.TBL_CONSULTA.SQL.Add('B.CODALMACEN,');
         Dtm.TBL_CONSULTA.SQL.Add('B.CANTIDAD,');
         Dtm.TBL_CONSULTA.SQL.Add('B.COSTO,');
         Dtm.TBL_CONSULTA.SQL.Add('C.CODPRODUCTO,');
         Dtm.TBL_CONSULTA.SQL.Add('C.DESCRIPCION,');
         Dtm.TBL_CONSULTA.SQL.Add('C.MODELO');
         Dtm.TBL_CONSULTA.SQL.Add('FROM TBL_CONTAJUSTE A');
         Dtm.TBL_CONSULTA.SQL.Add('INNER JOIN TBL_DETAJUSTE B');
         Dtm.TBL_CONSULTA.SQL.Add('ON A.SECUENCIA = B.SECUENCIA');
         Dtm.TBL_CONSULTA.SQL.Add('INNER JOIN DATAELECTROSOFT.Dbo.TBL_CATALOGO C');
         Dtm.TBL_CONSULTA.SQL.Add('ON B.CODPRODUCTO = C.CODPRODUCTO');
         Dtm.TBL_CONSULTA.SQL.Add('WHERE A.SECUENCIA = :SECUENCIA');
         Dtm.TBL_CONSULTA.Params[0].Value := DBEdit1.Text;
         TRY
         Dtm.TBL_CONSULTA.Active := TRUE;
         EXCEPT
         APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         END;
         if Dtm.TBL_CONSULTA.Eof then
            begin
            APPLICATION.MessageBox('Factura No Existe','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
            Abort;
            end;
            RepAjuste.Preview;

end;

procedure TFrm_AjusteInventario.Dbg_AjusteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     IF (KEY = 13) AND (Dbg_Ajuste.SelectedIndex = 0) then
        BEGIN
           Dbg_Ajuste.SelectedIndex := 1;
           KEY := 0;
        END;
     IF (KEY = 13) AND (Dbg_Ajuste.SelectedIndex = 1) then
        BEGIN
           Dbg_Ajuste.SelectedIndex := 2;
           KEY := 0;
        END;
     IF (KEY = 13) AND (Dbg_Ajuste.SelectedIndex = 2) then
        BEGIN
           Dbg_Ajuste.SelectedIndex := 3;
           KEY := 0;
        END;
     IF (KEY = 13) AND (Dbg_Ajuste.SelectedIndex = 3) then
        BEGIN
           Dbg_Ajuste.SelectedIndex := 4;
           KEY := 0;
        END;
    IF (KEY = 13) AND (Dbg_Ajuste.SelectedIndex = 4) then
        BEGIN
           Dbg_Ajuste.SelectedIndex := 5;
           KEY := 0;
        END;
  if (key = 13) AND (Dbg_Ajuste.SelectedIndex = 5) then
     begin
     Dtm.Conexionesa.StartTransaction;
     try
     Dtm.Tbl_Catalogo.Edit;
     Dtm.Tbl_CatalogoAjuste.Value := (Dtm.Tbl_CatalogoFisico.Value - Dtm.Tbl_CatalogoExistencia.Value);
     Dtm.Tbl_Catalogo.Post;
     Dtm.Conexionesa.Commit;
     except
     Dtm.Conexionesa.Rollback;
     end;
     end;

end;

procedure TFrm_AjusteInventario.Dbg_DetAjusteDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  IF Frac(Dtm.TBL_DETAJUSTE.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_DetAjuste.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_DetAjuste.canvas.brush.color := clInfoBk;
            Dbg_DetAjuste.Canvas.Font.Color  := clBlack;
           end;
           Dbg_DetAjuste.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFrm_AjusteInventario.Catalogo1Click(Sender: TObject);
begin
   TRY
   Application.CreateForm(TFRM_CATALOGO, FRM_CATALOGO);
   FRM_CATALOGO.SHOWMODAL;
   FINALLY
   FRM_CATALOGO.FREE;
   END;
end;

end.

