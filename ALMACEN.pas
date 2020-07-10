unit ALMACEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls,Funciones, Grids, DBGrids, StdCtrls, DBCtrls,Db,
  Mask, ExtCtrls;

type
  TFrm_Almacen = class(TForm)
    Bevel1: TBevel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    TabSheet2: TTabSheet;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    Bit_Help: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Bit_NuevoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bit_GrabarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Almacen: TFrm_Almacen;
  I : Integer;

implementation

uses TABLAS, BuscaAlmacen;

{$R *.dfm}

procedure TFrm_Almacen.SpeedButton6Click(Sender: TObject);
begin
 Close;
end;

procedure TFrm_Almacen.SpeedButton4Click(Sender: TObject);
begin
      Dtm.Conexiones.StartTransaction;
      TRY
   IF Dtm.TBL_ALMACEN.State IN [dsEdit, dsInsert] THEN
    BEGIN
    if MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
          Dtm.TBL_ALMACEN.DELETE;
       END;
    END
     ELSE
      BEGIN
        APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
      END;
      Dtm.Conexiones.Commit;
      EXCEPT
      Dtm.Conexiones.Rollback;
      END;
end;

procedure TFrm_Almacen.Bit_NuevoClick(Sender: TObject);
begin
              Dtm.TBL_Maximo.SQL.Clear;
              Dtm.TBL_Maximo.SQL.Add('SELECT MAX(CODIGO) AS TREGISTRO,GETDATE() AS TFECHASYS FROM DATAELECTROSOFT.Dbo.TBL_ALMACEN');
              Dtm.TBL_Maximo.Active := TRUE;
           IF NOT Dtm.TBL_ALMACEN.Locate('CODIGO',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
              BEGIN
                Dtm.Conexiones.StartTransaction;
                Try
                Dtm.TBL_ALMACEN.Insert;
                Dtm.TBL_ALMACENCODIGO.VALUE       := Dtm.TBL_MaximoTregistro.Value+1;
                DBEDIT1.DataField     := 'codigo';
                DBEDIT2.DataField     := 'descripcion';
                DBRichEdit1.DataField := 'COMENTARIO';
                Dtm.TBL_ALMACEN.Post;
                Bit_Nuevo.Enabled     := FALSE;
                Dtm.Conexiones.Commit;
                Except
                Dtm.Conexiones.Rollback;
                End;

           END;
               Dtm.TBL_Maximo.Close;
end;

procedure TFrm_Almacen.PageControl1Change(Sender: TObject);
begin
   IF PageControl1.ActivePageIndex = 1 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT PEDIDO,PRECIO,CANTIDAD,FECHA FROM TBL_COMPRAPLANTAS');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE CODALMACEN = :CODALMACEN');
     Dtm.TBL_CONSULTA.Params[0].Value := Dbedit1.Text;
     Dtm.TBL_CONSULTA.SQL.Add('ORDER BY PEDIDO');
     TRY
     Dtm.TBL_CONSULTA.ACTIVE := TRUE;
     EXCEPT
      APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
     END;
   END;
  IF PageControl1.ActivePageIndex = 2 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT FACTURA,PRECIOVENTA,CANTIDAD,FECHA FROM TBL_FACTURA');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE CODALMACEN = :CODALMACEN');
     Dtm.TBL_CONSULTA.Params[0].Value := Dbedit1.Text;
     Dtm.TBL_CONSULTA.SQL.Add('ORDER BY FACTURA');
     TRY
     Dtm.TBL_CONSULTA.ACTIVE := TRUE;
     EXCEPT
      APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
     END;
   END;
end;

procedure TFrm_Almacen.FormCreate(Sender: TObject);
var
  I : Integer;
begin
     IF NOT Dtm.TBL_ALMACEN.Active THEN
       BEGIN
        Dtm.TBL_ALMACEN.Active := TRUE;
       END;
        if UserRoles.IDIDIOMA = 'Inglés' then
          begin
          for I := 0 to (TabSheet1.ControlCount -1) do
             begin
             if (TabSheet1.Controls[I] is  TLabel) then
                 begin
                 (TabSheet1.Controls[I] as TLabel).Caption := IDIOMA((TabSheet1.Controls[I] as TLabel).Caption,Dtm.TBL_COMPANIAIDIOMA.AsString);
                 end;
             end;
          end;

end;

procedure TFrm_Almacen.Bit_GrabarClick(Sender: TObject);
begin
 IF DBEDIT2.TEXT = '' THEN
    BEGIN
    APPLICATION.MessageBox('Descripción está en blanco','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
    ABORT;
    END;
     Dtm.Conexiones.StartTransaction;
     TRY
     Dtm.TBL_ALMACEN.EDIT;
     Dtm.TBL_ALMACEN.POST;
     Bit_Nuevo.Enabled     := TRUE;
     Dtm.Conexiones.Commit;
     EXCEPT
     Dtm.Conexiones.Rollback;
     END;
     APPLICATION.MessageBox('Registro Grabado','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);

end;

procedure TFrm_Almacen.SpeedButton2Click(Sender: TObject);
var
  I : Integer;
begin
   Dtm.TBL_CONSULTA.SQL.Clear;
   BuscarAlmacen.WBUSCAR.Clear;
   BuscarAlmacen.SHOWMODAL;
  IF BuscarAlmacen.ModalResult = MROK THEN
     BEGIN
       IF Dtm.TBL_Almacen.Locate('CODIGO',Dtm.TBL_CONSULTA.FieldByName('CODIGO').Value,[]) THEN
          BEGIN
            Dtm.TBL_Almacen.EDIT;
            DBEDIT1.DataField := 'CODIGO';
            DBEDIT2.DataField := 'DESCRIPCION';
            DBRichEdit1.DataField := 'COMENTARIO';
            IF UserRoles.IDMODIFICAR = 'No' THEN
               BEGIN
               for I := 0 to (TabSheet1.ControlCount -1) do
                   begin
                   if (TabSheet1.Controls[I] is  TDBEdit) then
                       begin
                      (TabSheet1.Controls[I] as TDBEdit).Enabled := False;
                      end;
                  end;
               END;
          END;
       END;
end;

end.
