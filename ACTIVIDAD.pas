unit ACTIVIDAD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  Buttons,Db, ToolWin;

type
  TFrm_Actividad = class(TForm)
    Bevel1: TBevel;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    Bit_Eliminar: TSpeedButton;
    SpeedButton6: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet2: TTabSheet;
    Dbg_CatContabilidad: TDBGrid;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure SpeedButton6Click(Sender: TObject);
    procedure Bit_EliminarClick(Sender: TObject);
    procedure Bit_NuevoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Actividad: TFrm_Actividad;
  I : integer;

implementation

uses TABLAS, BuscaActividad;

{$R *.dfm}

procedure TFrm_Actividad.SpeedButton6Click(Sender: TObject);
begin
 Close;
end;

procedure TFrm_Actividad.Bit_EliminarClick(Sender: TObject);
begin
 IF Dtm.TBL_ACTIVIDAD.State IN [dsEdit, dsInsert] THEN
    BEGIN
    if MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
          Dtm.TBL_ACTIVIDAD.DELETE;
       END;
    END
     ELSE
      BEGIN
      APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
      END;
end;

procedure TFrm_Actividad.Bit_NuevoClick(Sender: TObject);
begin
                  Dtm.TBL_Maximo.SQL.Clear;
                  Dtm.TBL_Maximo.SQL.Add('SELECT MAX(CODACTIVIDAD) AS TREGISTRO,GETDATE() AS TFECHASYS FROM TBL_ACTIVIDAD');
                  Dtm.TBL_Maximo.Active := TRUE;
           IF NOT Dtm.TBL_ACTIVIDAD.LOCATE('CODACTIVIDAD',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
              BEGIN
                Dtm.Conexiones.StartTransaction;
                try
                Dtm.TBL_ACTIVIDAD.Insert;
                Dtm.TBL_ACTIVIDADCODACTIVIDAD.Value    := Dtm.TBL_MaximoTregistro.Value+1;
                DBEdit1.DataField      := 'CODACTIVIDAD';
                DBEdit2.DataField      := 'DESCRIPCION';
                DBEdit3.DataField      := 'COSTO';
                Bit_Nuevo.Enabled      := False;
                Dtm.TBL_ACTIVIDAD.Post;
                Dtm.Conexiones.Commit;
                except
                Dtm.Conexiones.Rollback;
                end;
              END;
              Dtm.TBL_Maximo.Close;
end;

procedure TFrm_Actividad.SpeedButton3Click(Sender: TObject);
begin
   Dtm.Conexiones.StartTransaction;
   try
   Dtm.TBL_ACTIVIDAD.Edit;
   Dtm.TBL_ACTIVIDAD.Post;
   Dtm.Conexiones.Commit;
   except
   Dtm.Conexiones.Rollback;
   end;
   Bit_Nuevo.Enabled      := TRUE;
   APPLICATION.MessageBox('Registro Grabado','A v i s o',MB_DEFBUTTON1 + MB_ICONINFORMATION);
end;

procedure TFrm_Actividad.FormCreate(Sender: TObject);
begin
       IF NOT Dtm.TBL_ACTIVIDAD.Active THEN
       BEGIN
        Dtm.TBL_ACTIVIDAD.Active := TRUE;
       END;

end;

procedure TFrm_Actividad.SpeedButton2Click(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarActividad.ShowModal;
  IF BuscarActividad.ModalResult = MROK THEN
     BEGIN
   IF Dtm.TBL_ACTIVIDAD.LOCATE('CODACTIVIDAD',Dtm.TBL_CONSULTA.FieldByName('CODACTIVIDAD').Value,[]) THEN
          BEGIN
          Dtm.TBL_ACTIVIDAD.Edit;
          DBEdit1.DataField      := 'CODACTIVIDAD';
          DBEdit2.DataField      := 'DESCRIPCION';
          DBEdit3.DataField      := 'COSTO';
        IF Dtm.TBL_USUARIOMODIFICAR.AsString = 'No' THEN
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
