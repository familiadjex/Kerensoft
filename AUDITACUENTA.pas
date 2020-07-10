unit AUDITACUENTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Buttons, ToolWin, ComCtrls,
  StdCtrls, DBCtrls;

type
  TFrr_AuditaCuenta = class(TForm)
    FECHA1: TDateTimePicker;
    FECHA2: TDateTimePicker;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    Bit_Buscar: TSpeedButton;
    Bit_Pantalla: TSpeedButton;
    Bit_Printe: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Bevel1: TBevel;
    Panel1: TPanel;
    RepAuditaCuenta: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand4: TQRBand;
    QRExprMemo1: TQRExprMemo;
    QRLabel10: TQRLabel;
    RadioGroup2: TRadioGroup;
    Cuenta: TEdit;
    SubCuenta: TEdit;
    Auxiliar: TEdit;
    Auxiliar1: TEdit;
    Auxiliar2: TEdit;
    RadioGroup3: TRadioGroup;
    DBComboBox1: TDBComboBox;
    StatusBar1: TStatusBar;
    procedure Bit_PantallaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Bit_BuscarClick(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frr_AuditaCuenta: TFrr_AuditaCuenta;

implementation

uses TABLAS, BuscaCatalogoContabilidad;

{$R *.dfm}

procedure TFrr_AuditaCuenta.Bit_PantallaClick(Sender: TObject);
begin

  IF RadioGroup2.ItemIndex = 0 THEN
     BEGIN
     Dtm.Tbl_Consulta.Sql.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT A.TRANSACION,SUM(A.DEBEPERIODO) AS DEBE,SUM(A.HABERPERIODO) AS HABER,MAX(B.NOMBRE) AS NOMBRE FROM TBL_MAYORGENERAL A,TBL_CATCONTABILIDAD B');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE A.CUENTA = B.CUENTA AND A.SUBCUENTA = B.SUBCUENTA AND A.AUXILIAR = B.AUXILIAR AND A.AUXILIAR1 = B.AUXILIAR1 AND A.AUXILIAR2 = B.AUXILIAR2 AND A.FECHA BETWEEN :FECHA1 AND :FECHA2');
     Dtm.TBL_CONSULTA.SQL.Add('GROUP BY A.TRANSACION');
     Dtm.TBL_CONSULTA.ParamByName('FECHA1').AsDate      := FECHA1.Date;
     Dtm.TBL_CONSULTA.ParamByName('FECHA2').AsDate      := FECHA2.Date;
     END;

    IF RadioGroup2.ItemIndex = 1 THEN
     BEGIN
     Dtm.TBL_CONSULTA.SQL.Add('SELECT A.TRANSACION,SUM(A.DEBEPERIODO) AS DEBE,SUM(A.HABERPERIODO) AS HABER,MAX(B.NOMBRE)AS NOMBRE FROM TBL_MAYORGENERAL A,TBL_CATCONTABILIDAD B');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE A.CUENTA = B.CUENTA AND A.SUBCUENTA = B.SUBCUENTA AND A.AUXILIAR = B.AUXILIAR AND A.AUXILIAR1 = B.AUXILIAR1 AND A.AUXILIAR2 = B.AUXILIAR2 AND');
     Dtm.TBL_CONSULTA.SQL.Add('A.CUENTA = :CUENTA AND A.SUBCUENTA = :SUBCUENTA AND A.AUXILIAR = :AUXILIAR AND A.AUXILIAR1 = :AUXILIAR1 AND A.AUXILIAR2 = :AUXILIAR2 AND A.FECHA BETWEEN :FECHA1 AND :FECHA2');
     Dtm.TBL_CONSULTA.ParamByName('FECHA1').AsDate      := FECHA1.Date;
     Dtm.TBL_CONSULTA.ParamByName('FECHA2').AsDate      := FECHA2.Date;
     Dtm.TBL_CONSULTA.ParamByName('CUENTA').AsString    := CUENTA.Text;
     Dtm.TBL_CONSULTA.ParamByName('SUBCUENTA').AsString := SUBCUENTA.Text;
     Dtm.TBL_CONSULTA.ParamByName('AUXILIAR').AsString  := AUXILIAR.Text;
     Dtm.TBL_CONSULTA.ParamByName('AUXILIAR1').AsString := AUXILIAR1.Text;
     Dtm.TBL_CONSULTA.ParamByName('AUXILIAR2').AsString := AUXILIAR2.Text;
     Dtm.TBL_CONSULTA.SQL.Add('GROUP BY A.TRANSACION');
     END;
    TRY
    Dtm.TBL_CONSULTA.Active := TRUE;
    EXCEPT
    ShowMessage('Consulta Invalida');
    END;

  Dtm.TBL_CONSULTA.First;
  WHILE NOT Dtm.TBL_CONSULTA.Eof DO
        BEGIN
         Dtm.TBL_CONTMAYORGENERAL.SetKey;
         Dtm.TBL_CONTMAYORGENERAL['TRANSACION'] := Dtm.TBL_CONSULTA.FieldByName('TRANSACION').Value;
         IF Dtm.TBL_CONTMAYORGENERAL.GotoKey THEN
            BEGIN
            Dtm.TBL_CONTMAYORGENERAL.Edit;
            Dtm.TBL_CONTMAYORGENERALDEBE.VALUE    := Dtm.TBL_CONSULTA.FieldByName('DEBE').Value;
            Dtm.TBL_CONTMAYORGENERALHABER.VALUE   := Dtm.TBL_CONSULTA.FieldByName('HABER').Value;
            Dtm.TBL_CONTMAYORGENERALBALANCE.VALUE := Dtm.TBL_CONSULTA.FieldByName('DEBE').Value - Dtm.TBL_CONSULTA.FieldByName('HABER').Value;
            Dtm.TBL_CONTMAYORGENERAL.Post;
            END;
            Dtm.TBL_CONSULTA.Next;
        END;

        // Sacar Reporte

       Dtm.Tbl_Consulta.Sql.Clear;
       Dtm.TBL_CONSULTA.SQL.Add('SELECT * FROM TBL_CONTMAYORGENERAL');
       Dtm.TBL_CONSULTA.SQL.Add('WHERE (BALANCE < 0) OR (BALANCE > 0)');
       TRY
       Dtm.TBL_CONSULTA.Active := TRUE;
       EXCEPT
       ShowMessage('Consulta Invalida');
       END;
       RepAuditaCuenta.Preview;


end;

procedure TFrr_AuditaCuenta.FormCreate(Sender: TObject);
begin
       Frr_AuditaCuenta.Top    := 97;
       Frr_AuditaCuenta.LEFT   := 04;
    IF NOT Dtm.TBL_COMPANIA.Active THEN
       BEGIN
        Dtm.TBL_COMPANIA.Active := TRUE;
       END;

     IF NOT Dtm.TBL_CatContabilidad.Active THEN
       BEGIN
        Dtm.TBL_CatContabilidad.Active := TRUE;
       END;
     
         IF NOT Dtm.TBL_TIPODOCUMENTO.Active THEN
          BEGIN
          Dtm.TBL_TIPODOCUMENTO.Active := TRUE;
          END;

               DBComboBox1.Items.Clear;
     WHILE NOT Dtm.TBL_TIPODOCUMENTO.Eof DO
           BEGIN
           DBComboBox1.Items.Add(Dtm.TBL_TIPODOCUMENTOSIGLA.AsString);
           Dtm.TBL_TIPODOCUMENTO.Next;
           END;



end;

procedure TFrr_AuditaCuenta.RadioGroup2Click(Sender: TObject);
begin
 IF RadioGroup2.ItemIndex = 0 THEN
         BEGIN
           CUENTA.Visible     := False;
           SUBCUENTA.Visible  := False;
           AUXILIAR.Visible   := False;
           AUXILIAR1.Visible  := False;
           AUXILIAR2.Visible  := False ;
           Bit_Buscar.Enabled := False;
         END;
      IF RadioGroup2.ItemIndex = 1 THEN
         BEGIN
           CUENTA.Visible    := True;
           SUBCUENTA.Visible := True;
           AUXILIAR.Visible  := True;
           AUXILIAR1.Visible := True;
           AUXILIAR2.Visible := True;
           Bit_Buscar.Enabled:= True;
         END;
end;

procedure TFrr_AuditaCuenta.Bit_BuscarClick(Sender: TObject);
begin
   Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCatalogoContabilidad.WBUSCAR.Clear;
     BuscarCatalogoContabilidad.SHOWMODAL;
  IF BuscarCatalogoContabilidad.ModalResult = MROK THEN
     BEGIN
       CUENTA.Text           := Dtm.TBL_CONSULTA['CUENTA'];
       SUBCUENTA.Text        := Dtm.TBL_CONSULTA['SUBCUENTA'];
       AUXILIAR.Text         := Dtm.TBL_CONSULTA['AUXILIAR'];
       AUXILIAR1.Text        := Dtm.TBL_CONSULTA['AUXILIAR1'];
       AUXILIAR2.Text        := Dtm.TBL_CONSULTA['AUXILIAR2'];
     END;
end;

procedure TFrr_AuditaCuenta.RadioGroup3Click(Sender: TObject);
begin
 IF RadioGroup3.ItemIndex = 0 THEN
     BEGIN
     DBComboBox1.Visible := FALSE;
     END;
     IF RadioGroup3.ItemIndex = 1 THEN
         BEGIN
         DBComboBox1.Visible := TRUE;
         END;
end;

end.
