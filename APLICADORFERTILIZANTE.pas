unit APLICADORFERTILIZANTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, ToolWin;

type
  TFrm_AplicaFertilizante = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    CoolBar1: TCoolBar;
    Bevel1: TBevel;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AplicaFertilizante: TFrm_AplicaFertilizante;

implementation

uses TABLAS, BUSCAAPLICADOR;


{$R *.dfm}

procedure TFrm_AplicaFertilizante.FormCreate(Sender: TObject);
begin
       Frm_AplicaFertilizante.Top    := 97;
       Frm_AplicaFertilizante.LEFT   := 04;
     IF  NOT Dtm.TBL_APLICAFERTILIZANTE.Active THEN
       BEGIN
         Dtm.TBL_APLICAFERTILIZANTE.Active := TRUE;
       END;

end;

procedure TFrm_AplicaFertilizante.SpeedButton3Click(Sender: TObject);
begin
      IF DBEdit1.TEXT = '' THEN
      BEGIN
        MESSAGEDLG('Código de Aplicador Fertilizante está en Blanco',mtconfirmation,[mbok],0);
        ABORT;
      END;
     IF DBEdit2.TEXT = '' THEN
      BEGIN
        MESSAGEDLG('Nombre Aplicador Fertilizante está en Blanco',mtconfirmation,[mbok],0);
        ABORT;
      END;

      Dtm.TBL_APLICAFERTILIZANTE.Edit;
      Dtm.TBL_APLICAFERTILIZANTE.POST;
      DBEDIT1.DataField := '';
      DBEDIT2.DataField := '';
      DBEDIT3.DataField := '';
      DBRichEdit1.DataField := '';

end;

procedure TFrm_AplicaFertilizante.SpeedButton7Click(Sender: TObject);
begin
                  Dtm.TBL_Maximo.SQL.Clear;
                Dtm.TBL_Maximo.SQL.Add('SELECT MAX(CODAPLICADOR) AS TREGISTRO FROM TBL_APLICAFERTILIZANTE');
                Dtm.TBL_Maximo.Active := TRUE;
                Dtm.TBL_APLICAFERTILIZANTE.SetKey;
                Dtm.TBL_APLICAFERTILIZANTE['CODAPLICADOR'] := Dtm.TBL_MaximoTregistro.Value+1;
            IF NOT Dtm.TBL_APLICAFERTILIZANTE.GotoKey THEN
              BEGIN
                Dtm.TBL_APLICAFERTILIZANTE.Insert;
                Dtm.TBL_APLICAFERTILIZANTECODAPLICADOR.VALUE := Dtm.TBL_MaximoTregistro.Value+1;
                DBEDIT1.DataField := 'CODAPLICADOR';
                DBEDIT2.DataField := 'NOMBRE';
                DBEDIT3.DataField := 'APELLIDO';
                DBRichEdit1.DataField := 'COMENTARIO';
                Dtm.TBL_APLICAFERTILIZANTECODAPLICADOR.Alignment := taLeftJustify;
                DBEDIT1.SetFocus;
                Dtm.TBL_APLICAFERTILIZANTE.Post;
              END;
              Dtm.TBL_Maximo.Close;


end;

procedure TFrm_AplicaFertilizante.SpeedButton4Click(Sender: TObject);
begin
    if MessageDlg('Desea Eliminar',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
         Dtm.TBL_APLICAFERTILIZANTE.DELETE;
       END;

end;

procedure TFrm_AplicaFertilizante.SpeedButton6Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_AplicaFertilizante.SpeedButton2Click(Sender: TObject);
begin
   Dtm.TBL_CONSULTA.SQL.Clear;
   BuscarAplicador.WBUSCAR.Clear;
   BuscarAplicador.SHOWMODAL;
  IF BuscarAplicador.ModalResult = MROK THEN
     BEGIN
       Dtm.TBL_APLICAFERTILIZANTE.SetKey;
       Dtm.TBL_APLICAFERTILIZANTE['CODAPLICADOR'] := Dtm.TBL_CONSULTA['CODAPLICADOR'];
       IF Dtm.TBL_APLICAFERTILIZANTE.GotoKey THEN
          BEGIN
            Dtm.TBL_APLICAFERTILIZANTE.EDIT;
            DBEDIT1.DataField := 'CODAPLICADOR';
            DBEDIT2.DataField := 'NOMBRE';
            DBEDIT3.DataField := 'APELLIDO';
            DBRichEdit1.DataField := 'COMENTARIO';
           END;
       END;

end;

end.
