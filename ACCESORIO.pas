unit ACCESORIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, Grids,Funciones, DBGrids, StdCtrls, DBCtrls,
  Mask, ExtCtrls,Db;

type
  TFrm_Accesorio = class(TForm)
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
    TabSheet3: TTabSheet;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Bit_Eliminar: TSpeedButton;
    SpeedButton6: TSpeedButton;
    StatusBar1: TStatusBar;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Dbg_Catalogo: TDBGrid;
    procedure SpeedButton6Click(Sender: TObject);
    procedure Bit_EliminarClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Bit_GrabarClick(Sender: TObject);
    procedure Dbg_CatalogoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Accesorio: TFrm_Accesorio;
  H,I :INTEGER;
implementation

uses TABLAS, BuscaAccesorio;

{$R *.dfm}

procedure TFrm_Accesorio.SpeedButton6Click(Sender: TObject);
begin
 Close;
end;

procedure TFrm_Accesorio.Bit_EliminarClick(Sender: TObject);
begin
    IF Dtm.TBL_ACCESORIO.State IN [dsEdit, dsInsert] THEN
    BEGIN
    if MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
          Dtm.TBL_ACCESORIO.DELETE;
       END;
    END
     ELSE
      BEGIN
        APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
      END;
end;

procedure TFrm_Accesorio.SpeedButton7Click(Sender: TObject);
begin
              Dtm.TBL_Maximo.SQL.Clear;
              Dtm.TBL_Maximo.SQL.Add('SELECT MAX(CODIGO) AS TREGISTRO,GETDATE() AS TFECHASYS FROM TBL_ACCESORIO');
              Dtm.TBL_Maximo.Active := TRUE;
           IF NOT Dtm.TBL_ACCESORIO.Locate('CODIGO',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
              BEGIN
                Dtm.Conexionesa.StartTransaction;
                Try
                Dtm.TBL_ACCESORIO.Insert;
                Dtm.TBL_ACCESORIOCODIGO.VALUE   := Dtm.TBL_MaximoTregistro.Value+1;
                DBEDIT1.DataField               := 'Codigo';
                DBLookupComboBox1.DataField     := 'CodProducto';
                DBEDIT2.DataField               := 'descripcion';
                DBEDIT3.DataField               := 'Cantidad';
                DBEDIT4.DataField               := 'Costo';
                DBEDIT5.DataField               := 'Total';
                DBRichEdit1.DataField           := 'Comentario';
                Dtm.TBL_ACCESORIO.Post;
                Dtm.Conexionesa.Commit;
                Except
                Dtm.Conexionesa.Rollback;
                End;
           END;
               Dtm.TBL_Maximo.Close;
end;

procedure TFrm_Accesorio.FormCreate(Sender: TObject);
var
  I : Integer;
begin
     IF NOT Dtm.TBL_ACCESORIO.Active THEN
       BEGIN
        Dtm.TBL_ACCESORIO.Active := TRUE;
       END;
     IF NOT Dtm.TBL_CATALOGO.Active THEN
       BEGIN
        Dtm.TBL_CATALOGO.Active := TRUE;
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

procedure TFrm_Accesorio.PageControl1Change(Sender: TObject);
begin
  IF PageControl1.ActivePageIndex = 1 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT A.CODPRODUCTO,A.DESCRIPCION FROM TBL_CATALOGO A');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE A.CODPRODUCTO = :CODPRODUCTO');
     Dtm.TBL_CONSULTA.Params.ParamByName('CODPRODUCTO').Value := Dtm.TBL_ACCESORIOCODPRODUCTO.AsString;
     Dtm.TBL_CONSULTA.SQL.Add('ORDER BY A.DESCRIPCION');
     TRY
     Dtm.TBL_CONSULTA.ACTIVE := TRUE;
     EXCEPT
      APPLICATION.MessageBox('Consulta Invalida','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
     END;
   END;
end;

procedure TFrm_Accesorio.SpeedButton2Click(Sender: TObject);
var
  I : Integer;
begin
   Dtm.TBL_CONSULTA.SQL.Clear;
   BuscarAccesorio.WBUSCAR.Clear;
   BuscarAccesorio.SHOWMODAL;
  IF BuscarAccesorio.ModalResult = MROK THEN
     BEGIN
       IF Dtm.TBL_ACCESORIO.Locate('CODIGO',Dtm.TBL_CONSULTA.FieldByName('CODIGO').Value,[]) THEN
          BEGIN
            Dtm.TBL_ACCESORIO.EDIT;
            DBEDIT1.DataField           := 'codigo';
            DBLookupComboBox1.DataField := 'CodProducto';
            DBEDIT2.DataField           := 'descripcion';
            DBEDIT3.DataField           := 'Cantidad';
            DBEDIT4.DataField           := 'Costo';
            DBEDIT5.DataField           := 'Total';
            DBRichEdit1.DataField       := 'Comentario';

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

procedure TFrm_Accesorio.Bit_GrabarClick(Sender: TObject);
begin
  Dtm.Conexionesa.StartTransaction;
  Try
  Dtm.TBL_ACCESORIO.Edit;
  Dtm.TBL_ACCESORIO.Post;
  Dtm.Conexionesa.Commit;
  Except
  Dtm.Conexionesa.Rollback;
  End;
  APPLICATION.MessageBox('Registro Grabado','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);


end;

procedure TFrm_Accesorio.Dbg_CatalogoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    IF Frac(Dtm.TBL_CONSULTA.RecNo/2) = 0 Then
       if (gdFocused in State) then
           begin
           Dbg_Catalogo.canvas.brush.color := clNavy;
           end
           else
           begin
            Dbg_Catalogo.canvas.brush.color := clInfoBk;
            Dbg_Catalogo.Canvas.Font.Color  := clBlack;
           end;
           Dbg_Catalogo.DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure TFrm_Accesorio.Timer1Timer(Sender: TObject);
begin
   Dtm.TBL_ACCESORIO.Refresh;
end;

end.
