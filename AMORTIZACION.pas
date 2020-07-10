unit AMORTIZACION;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, ComCtrls, StdCtrls,Funciones, Buttons,
  ToolWin;

type
  TFrm_Amortizacion = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Bit_Printe: TSpeedButton;
    MONTOPRESTAMO: TEdit;
    PLAZO: TEdit;
    TASA: TEdit;
    MODALIDAD: TComboBox;
    TIPOTASA: TComboBox;
    DIAPAGO: TComboBox;
    FechaPrestamo: TDateTimePicker;
    Panel1: TPanel;
    Frr_Amortizacion: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    DIRECCION: TQRExprMemo;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    StatusBar1: TStatusBar;
    procedure Bit_PrinteClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Amortizacion: TFrm_Amortizacion;
  MAXSECUENCIA     : Integer;
  PERIODO          : Integer;
  TRESULTADO       : Real;
  TCAPITALINICIAL  : Real;
  TINTERESCAUSADO  : Real;
  TINTERESPAGADO   : Real;
  TCAPITALPAGADO   : Real;
  TPAGOTOTAL       : Real;

  TCUOTA           : Real;
  TCUOTAMENSUAL    : Real;
  TCAPITALACUMULADO: Real;
  TINTERESACUMULADO: Real;
  TCAPITALINTERES  : Real;
  ANO,MES,SEMANA,DIA :Word;

  NUMSECUE         : Integer;

  FECHAS           : TDateTime;

implementation

uses TABLAS;

{$R *.dfm}

procedure TFrm_Amortizacion.Bit_PrinteClick(Sender: TObject);
begin
   if MONTOPRESTAMO.Text = '' then
     begin
     Application.MessageBox('Valor Obligación esta en Blanco','A v i s o',MB_ICONERROR + MB_OK);
     MONTOPRESTAMO.SetFocus;
     Abort;
     end;
    if PLAZO.Text = '' then
     begin
     Application.MessageBox('Plazo Obligación esta en Blanco','A v i s o',MB_ICONERROR + MB_OK);
     PLAZO.SetFocus;
     Abort;
     end;

   if TASA.Text = '' then
     begin
     Application.MessageBox('Tasa Nominal Anual esta en Blanco','A v i s o',MB_ICONERROR + MB_OK);
     TASA.SetFocus;
     Abort;
     end;

         FECHAS := FechaPrestamo.DateTime;
         Dtm.TBL_CONSULTA.SQL.Clear;
         Dtm.TBL_CONSULTA.SQL.Add('INSERT INTO DATAELECTROSOFT.Dbo.TBL_CONTAMORTIZACION');
         Dtm.TBL_CONSULTA.SQL.Add('(PLAZO,');
         Dtm.TBL_CONSULTA.SQL.Add('MODALIDAD,');
         Dtm.TBL_CONSULTA.SQL.Add('TASA,');
         Dtm.TBL_CONSULTA.SQL.Add('DIAPAGO,');
         Dtm.TBL_CONSULTA.SQL.Add('TIPOTASA,');
         Dtm.TBL_CONSULTA.SQL.Add('MONTOPRESTAMO,');
         Dtm.TBL_CONSULTA.SQL.Add('FECHAPRESTAMO,');
         Dtm.TBL_CONSULTA.SQL.Add('CODUSUARIO,');
         Dtm.TBL_CONSULTA.SQL.Add('FECHAVENCE)');

         Dtm.TBL_CONSULTA.SQL.Add('VALUES');

         Dtm.TBL_CONSULTA.SQL.Add('(:PLAZO,');
         Dtm.TBL_CONSULTA.SQL.Add(':MODALIDAD,');
         Dtm.TBL_CONSULTA.SQL.Add(':TASA,');
         Dtm.TBL_CONSULTA.SQL.Add(':DIAPAGO,');
         Dtm.TBL_CONSULTA.SQL.Add(':TIPOTASA,');
         Dtm.TBL_CONSULTA.SQL.Add(':MONTOPRESTAMO,');
         Dtm.TBL_CONSULTA.SQL.Add(':FECHAPRESTAMO,');
         Dtm.TBL_CONSULTA.SQL.Add(':CODUSUARIO,');
         Dtm.TBL_CONSULTA.SQL.Add(':FECHAVENCE)');
         Dtm.TBL_CONSULTA.Params.ParamByName('PLAZO').Value         := PLAZO.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('MODALIDAD').Value     := MODALIDAD.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('TASA').Value          := TASA.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('DIAPAGO').Value       := DIAPAGO.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('TIPOTASA').Value      := TIPOTASA.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('MONTOPRESTAMO').Value := MONTOPRESTAMO.Text;
         Dtm.TBL_CONSULTA.Params.ParamByName('FECHAPRESTAMO').Value := FechaPrestamo.Date;
         Dtm.TBL_CONSULTA.Params.ParamByName('CODUSUARIO').Value    := UserRoles.IDUSUARIO;
         Dtm.TBL_CONSULTA.Params.ParamByName('FECHAVENCE').Value    := FECHAS+(strtoint(PLAZO.Text) * 30);
         Dtm.TBL_CONSULTA.ExecSQL;
         if Dtm.TBL_CONSULTA.RowsAffected = 1 then
            begin
            Dtm.TBL_CONSULTA.SQL.Clear;
            Dtm.TBL_CONSULTA.SQL.Add('SELECT MAX(SECUENCIA) AS MAXSECUENCIA FROM DATAELECTROSOFT.Dbo.TBL_CONTAMORTIZACION');
            Dtm.TBL_CONSULTA.SQL.Add('WHERE CODUSUARIO = :CODUSUARIO');
            Dtm.TBL_CONSULTA.Params.ParamByName('CODUSUARIO').Value := UserRoles.IDUSUARIO;
            TRY
            Dtm.TBL_CONSULTA.Active := True;
            MAXSECUENCIA := Dtm.TBL_CONSULTA.FieldByName('MAXSECUENCIA').Value;
            except

            end;
           end;
          //  Frm_AmortizacionVisual.Stg_Amortizacion.RowCount := Frm_AmortizacionVisual.Stg_Amortizacion.RowCount + StrToInt(PLAZO.Text);
      IF TIPOTASA.ItemIndex = 0 then
         begin
          for PERIODO := 1 TO StrToInt(PLAZO.Text) DO
              begin
              FECHAS := FECHAS + 30;
              Dtm.TBL_CONSULTA.SQL.Clear;
              Dtm.TBL_CONSULTA.SQL.Add('INSERT INTO DATAELECTROSOFT.Dbo.TBL_AMORTIZACION');
              Dtm.TBL_CONSULTA.SQL.Add('(SECUENCIA,');
              Dtm.TBL_CONSULTA.SQL.Add('CODUSUARIO,');
              Dtm.TBL_CONSULTA.SQL.Add('INTERES,');
              Dtm.TBL_CONSULTA.SQL.Add('INTERESACUMULADO,');
              Dtm.TBL_CONSULTA.SQL.Add('CAPITAL,');
              Dtm.TBL_CONSULTA.SQL.Add('CUOTA,');
              Dtm.TBL_CONSULTA.SQL.Add('PERIODO,');
              Dtm.TBL_CONSULTA.SQL.Add('CAPITALSALDADO,');
              Dtm.TBL_CONSULTA.SQL.Add('CAPITALACUMULADO,');
              Dtm.TBL_CONSULTA.SQL.Add('CUOTAMASINTERES,');
              Dtm.TBL_CONSULTA.SQL.Add('OTROS,');
              Dtm.TBL_CONSULTA.SQL.Add('FECHACUOTA)');
              Dtm.TBL_CONSULTA.SQL.Add('VALUES');
              Dtm.TBL_CONSULTA.SQL.Add('(:SECUENCIA,');
              Dtm.TBL_CONSULTA.SQL.Add(':CODUSUARIO,');
              Dtm.TBL_CONSULTA.SQL.Add(':INTERES,');
              Dtm.TBL_CONSULTA.SQL.Add(':INTERESACUMULADO,');
              Dtm.TBL_CONSULTA.SQL.Add(':CAPITAL,');
              Dtm.TBL_CONSULTA.SQL.Add(':CUOTA,');
              Dtm.TBL_CONSULTA.SQL.Add(':PERIODO,');
              Dtm.TBL_CONSULTA.SQL.Add(':CAPITALSALDADO,');
              Dtm.TBL_CONSULTA.SQL.Add(':CAPITALACUMULADO,');
              Dtm.TBL_CONSULTA.SQL.Add(':CUOTAMASINTERES,');
              Dtm.TBL_CONSULTA.SQL.Add(':OTROS,');
              Dtm.TBL_CONSULTA.SQL.Add(':FECHACUOTA)');
              Dtm.TBL_CONSULTA.Params.ParamByName('SECUENCIA').Value           := MAXSECUENCIA;
              Dtm.TBL_CONSULTA.Params.ParamByName('CODUSUARIO').Value          := UserRoles.IDUSUARIO;
              Dtm.TBL_CONSULTA.Params.ParamByName('INTERES').Value             := InteresSimple(MONTOPRESTAMO.Text,TASA.Text,PERIODO,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('INTERESACUMULADO').Value    := InteresAcumuladoSimple(MONTOPRESTAMO.Text,TASA.Text,PERIODO,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('CAPITAL').Value             := CapitalSimple(MONTOPRESTAMO.Text,TASA.Text,PERIODO,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('CUOTA').Value               := CuotasSimple(MONTOPRESTAMO.Text,TASA.Text,PLAZO.Text,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('PERIODO').Value             := PERIODO;

              Dtm.TBL_CONSULTA.Params.ParamByName('CAPITALSALDADO').Value      := SaldoAcumuladoSimple(MONTOPRESTAMO.Text,TASA.Text,PLAZO.Text,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('CAPITALACUMULADO').Value    := CapitalAcumuladoSimple(MONTOPRESTAMO.Text,TASA.Text,PLAZO.Text,ReadModalidad(MODALIDAD.Text));

              Dtm.TBL_CONSULTA.Params.ParamByName('CUOTAMASINTERES').Value     := CuotaMasInteresSimple(MONTOPRESTAMO.Text,TASA.Text,PERIODO,ReadModalidad(MODALIDAD.Text));
              Dtm.TBL_CONSULTA.Params.ParamByName('OTROS').Value               := SUMACUOTA;
              Dtm.TBL_CONSULTA.Params.ParamByName('FECHACUOTA').Value          := FECHAS+30;;
              Dtm.TBL_CONSULTA.ExecSQL;
              if Dtm.TBL_CONSULTA.RowsAffected = 1 then
                 begin
                 end
                 ;
           end;

       end;

    IF TIPOTASA.ItemIndex = 1 then
       begin
           InteresCompuesto(TASA.Text,ReadModalidad(MODALIDAD.Text),PLAZO.Text);
       for PERIODO := 1 TO StrToInt(PLAZO.Text) DO
           begin
            FECHAS := FECHAS + 30;
            Dtm.TBL_CONSULTA.SQL.Clear;
            Dtm.TBL_CONSULTA.SQL.Add('INSERT INTO DATAELECTROSOFT.Dbo.TBL_AMORTIZACION');
            Dtm.TBL_CONSULTA.SQL.Add('(SECUENCIA,');
            Dtm.TBL_CONSULTA.SQL.Add('CODUSUARIO,');
            Dtm.TBL_CONSULTA.SQL.Add('CUOTA,');
            Dtm.TBL_CONSULTA.SQL.Add('INTERES,');
            Dtm.TBL_CONSULTA.SQL.Add('INTERESACUMULADO,');
            Dtm.TBL_CONSULTA.SQL.Add('CAPITAL,');
            Dtm.TBL_CONSULTA.SQL.Add('PERIODO,');
            Dtm.TBL_CONSULTA.SQL.Add('CAPITALSALDADO,');
            Dtm.TBL_CONSULTA.SQL.Add('CAPITALACUMULADO,');
            Dtm.TBL_CONSULTA.SQL.Add('FECHACUOTA)');

            Dtm.TBL_CONSULTA.SQL.Add('VALUES');
            Dtm.TBL_CONSULTA.SQL.Add('(:SECUENCIA,');
            Dtm.TBL_CONSULTA.SQL.Add(':CODUSUARIO,');
            Dtm.TBL_CONSULTA.SQL.Add(':CUOTA,');
            Dtm.TBL_CONSULTA.SQL.Add(':INTERES,');
            Dtm.TBL_CONSULTA.SQL.Add(':INTERESACUMULADO,');
            Dtm.TBL_CONSULTA.SQL.Add(':CAPITAL,');
            Dtm.TBL_CONSULTA.SQL.Add(':PERIODO,');
            Dtm.TBL_CONSULTA.SQL.Add(':CAPITALSALDADO,');
            Dtm.TBL_CONSULTA.SQL.Add(':CAPITALACUMULADO,');
            Dtm.TBL_CONSULTA.SQL.Add(':FECHACUOTA)');
            Dtm.TBL_CONSULTA.Params.ParamByName('SECUENCIA').Value           := MAXSECUENCIA;
            Dtm.TBL_CONSULTA.Params.ParamByName('CODUSUARIO').Value          := UserRoles.IDUSUARIO;
            Dtm.TBL_CONSULTA.Params.ParamByName('CUOTA').Value               := CuotaFijoCompuesto(MONTOPRESTAMO.Text,TASA.Text,ReadModalidad(MODALIDAD.Text),PLAZO.Text);
            Dtm.TBL_CONSULTA.Params.ParamByName('INTERES').Value             := InteresFijoCompuesto(MONTOPRESTAMO.Text,TASA.Text,ReadModalidad(MODALIDAD.Text),PERIODO);
            Dtm.TBL_CONSULTA.Params.ParamByName('INTERESACUMULADO').Value    := InteresAcumuladoFijoCompuesto();
            Dtm.TBL_CONSULTA.Params.ParamByName('CAPITAL').Value             := AbonoCapitalCompuesto(MONTOPRESTAMO.Text,TASA.Text,ReadModalidad(MODALIDAD.Text),PERIODO);
            Dtm.TBL_CONSULTA.Params.ParamByName('PERIODO').Value             := PERIODO;
            Dtm.TBL_CONSULTA.Params.ParamByName('CAPITALSALDADO').Value      := CapitalSaldoCompuesto(MONTOPRESTAMO.Text,TASA.Text,ReadModalidad(MODALIDAD.Text),PERIODO);
            Dtm.TBL_CONSULTA.Params.ParamByName('CAPITALACUMULADO').Value    := CapitalAcumuladoCompuesto();
            Dtm.TBL_CONSULTA.Params.ParamByName('FECHACUOTA').Value          := FECHAS;
            Dtm.TBL_CONSULTA.ExecSQL;
            if Dtm.TBL_CONSULTA.RowsAffected = 1 then
               begin

               end;

           end;

     end;

     Dtm.TBL_CONSULTA.SQL.Clear;
     Dtm.TBL_CONSULTA.SQL.Add('SELECT MAX(SECUENCIA) AS SECUENCIA FROM DATAELECTROSOFT.Dbo.TBL_CONTAMORTIZACION A');
     Dtm.TBL_CONSULTA.SQL.Add('WHERE CODUSUARIO = :CODUSUARIO');
     Dtm.TBL_CONSULTA.Params[0].Value := UserRoles.IDUSUARIO;
     Dtm.TBL_CONSULTA.Active := True;
     if Dtm.TBL_CONSULTA.Eof then
        begin
        APPLICATION.MessageBox('Amortizaciòn no Existe','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
        end
        else
        begin
        NUMSECUE := Dtm.TBL_CONSULTA.FieldByName('SECUENCIA').Value;
        end;
        Dtm.TBL_CONSULTA.SQL.Clear;
        Dtm.TBL_CONSULTA.SQL.Add('SELECT * FROM DATAELECTROSOFT.Dbo.TBL_CONTAMORTIZACION A');
        Dtm.TBL_CONSULTA.SQL.Add('LEFT JOIN DATAELECTROSOFT.Dbo.TBL_AMORTIZACION B');
        Dtm.TBL_CONSULTA.SQL.Add('ON A.SECUENCIA = B.SECUENCIA');
        Dtm.TBL_CONSULTA.SQL.Add('WHERE A.SECUENCIA = :SECUENCIA');
        Dtm.TBL_CONSULTA.Params[0].Value := NUMSECUE;
        try
        Dtm.TBL_CONSULTA.Active := True;
        except
        Application.MessageBox('Amortizacion no Existe','A v i s o',MB_ICONERROR + MB_OK);
        end;
        Frr_Amortizacion.Preview;

end;

procedure TFrm_Amortizacion.SpeedButton6Click(Sender: TObject);
begin
 Close;
end;

procedure TFrm_Amortizacion.FormCreate(Sender: TObject);
begin
 FechaPrestamo.DateTime := Date;
end;

end.
