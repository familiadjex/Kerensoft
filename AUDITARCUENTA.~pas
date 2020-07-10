unit AUDITARCUENTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Buttons, ToolWin, ComCtrls;

type
  TFrm_AuditaCuenta = class(TForm)
    StatusBar1: TStatusBar;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Bevel1: TBevel;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    Bit_Buscar: TSpeedButton;
    Bit_Pantalla: TSpeedButton;
    Bit_Printe: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    QuickRep1: TQuickRep;
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
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure Bit_PantallaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AuditaCuenta: TFrm_AuditaCuenta;

implementation

uses TABLAS;

{$R *.dfm}

procedure TFrm_AuditaCuenta.Bit_PantallaClick(Sender: TObject);
begin
  Dtm.Tbl_Consulta.Sql.Clear;
  Dtm.TBL_CONSULTA.SQL.Add('SELECT TRANSACION,SUM(DEBEPERIODO) AS DEBE,SUM(HABERPERIODO) AS HABER');
  Dtm.TBL_CONSULTA.SQL.Add('GROUP BY TRANSACION');
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
            Dtm.TBL_CONTMAYORGENERALBALANCE.VALUE := (Dtm.TBL_CONSULTA.FieldByName('HABER').Value - Dtm.TBL_CONSULTA.FieldByName('HABER').Value);
            Dtm.TBL_CONTMAYORGENERAL.Post;
            END;
            Dtm.TBL_CONSULTA.Next;
        END;
end;

end.
