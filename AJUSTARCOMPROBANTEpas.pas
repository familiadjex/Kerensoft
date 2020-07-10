unit AJUSTARCOMPROBANTEpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls;

type
  TFrm_AjustarComprobante = class(TForm)
    StatusBar1: TStatusBar;
    FECHA1: TDateTimePicker;
    FECHA2: TDateTimePicker;
    Label3: TLabel;
    DESDE: TEdit;
    Label5: TLabel;
    HASTA: TEdit;
    BitBtn1: TBitBtn;
    Bevel3: TBevel;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bit_Close: TSpeedButton;
    RadioGroup1: TRadioGroup;
    procedure Bit_GrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bit_CloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AjustarComprobante: TFrm_AjustarComprobante;
  INICIO : INTEGER;

implementation
uses TABLAS;

{$R *.dfm}

procedure TFrm_AjustarComprobante.Bit_GrabarClick(Sender: TObject);
begin
      IF DESDE.Text = '' THEN
         BEGIN
         APPLICATION.MessageBox('Desde No puede estar en blanco','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         ABORT;
         END;
      Dtm.TBL_CONSULTA.SQL.Clear;
      Dtm.TBL_CONSULTA.SQL.Add('SELECT *');
      Dtm.TBL_CONSULTA.SQL.Add('FROM DATAELECTROSOFT.Dbo.TBL_CLIENTE A');
      Dtm.TBL_CONSULTA.SQL.Add('INNER JOIN DATAELECTROSOFT.Dbo.TBL_CONTROL B');
      Dtm.TBL_CONSULTA.SQL.Add('ON A.CODIGO = B.CODCLIENTE');
      Dtm.TBL_CONSULTA.SQL.Add('WHERE A.TIPOCLIENTE = :TIPOCLIENTE AND A.FECHA BETWEEN :FECHA1 AND :FECHA2');
      Dtm.TBL_CONSULTA.SQL.Add('ORDER BY B.FACTURA,B.TIPOCOMPANIA');
      Dtm.TBL_CONSULTA.Parameters[0].Value := RadioGroup1.Items[RadioGroup1.ItemIndex];
      Dtm.TBL_CONSULTA.Parameters[1].Value := FECHA1.DateTime;
      Dtm.TBL_CONSULTA.Parameters[2].Value := FECHA2.DateTime;
      Try
      Dtm.TBL_CONSULTA.ACTIVE := TRUE;
      Except
      APPLICATION.MessageBox('No Puedo Abrir Consulta','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);

      End;

      IF Dtm.TBL_CONSULTA.Eof THEN
         BEGIN
         APPLICATION.MessageBox('NO EXISTE REGISTRO','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
         Abort;
         END;

      INICIO := StrToInt(DESDE.Text);
      Dtm.TBL_CONSULTA.First;
      WHILE NOT Dtm.TBL_CONSULTA.Eof DO
           BEGIN
            IF Dtm.TBL_CONTROL.Locate('FACTURA;TIPOCOMPANIA',VarArrayOf([Dtm.TBL_CONSULTA.FieldByName('FACTURA').Value,Dtm.TBL_CONSULTA.FieldByName('TIPOCOMPANIA').AsString]),[]) THEN
               BEGIN
                Dtm.Conexiones.BeginTrans;
                TRY
                Dtm.TBL_CONTROL.Edit;
                Dtm.TBL_CONTROLNCFSECUENCIA.Value := INICIO;
                Dtm.TBL_CONTROL.Post;
                Dtm.Conexiones.CommitTrans;
                EXCEPT
                Dtm.Conexiones.RollbackTrans;
                END;
              END;
           INICIO := INICIO + 1;
           Dtm.TBL_CONSULTA.NEXT;
           END;
           APPLICATION.MessageBox('Proceso Completo ','A v i s o',MB_DEFBUTTON1 + MB_IconInformation);
end;

procedure TFrm_AjustarComprobante.FormCreate(Sender: TObject);
begin
     FECHA1.DateTime := Date;
     FECHA2.DateTime := Date;
     IF NOT Dtm.TBL_CONTROL.Active THEN
       BEGIN
        Dtm.TBL_CONTROL.Active := TRUE;
       END;
end;

procedure TFrm_AjustarComprobante.Bit_CloseClick(Sender: TObject);
begin
 Close;
end;

end.
