unit ACTIVOFIJO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask,
  Menus,Db,FUNCIONES;

type
  TFrm_ActivoFijo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    CoolBar2: TCoolBar;
    Bit_Ayuda: TSpeedButton;
    Bit_Buscar: TSpeedButton;
    Bit_Grabar: TSpeedButton;
    Bit_Nuevo: TSpeedButton;
    Bit_Eliminar: TSpeedButton;
    Bit_Salir: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    FECHASERVICIO: TDateTimePicker;
    DBComboBox2: TDBComboBox;
    FECHARETIRO: TDateTimePicker;
    Label13: TLabel;
    Label14: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    PopupMenu1: TPopupMenu;
    Agregar1: TMenuItem;
    Cuenta1: TMenuItem;
    Buscar1: TMenuItem;
    GastoDepreciacin1: TMenuItem;
    ValorDepreciacin1: TMenuItem;
    DepreciacinAcumulada1: TMenuItem;
    FECHAULTIMADEPRECIACION: TDateTimePicker;
    Bit_SubMenu: TSpeedButton;
    procedure GastoDepreciacin1Click(Sender: TObject);
    procedure ValorDepreciacin1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bit_NuevoClick(Sender: TObject);
    procedure Bit_EliminarClick(Sender: TObject);
    procedure Bit_SalirClick(Sender: TObject);
    procedure Bit_GrabarClick(Sender: TObject);
    procedure Bit_BuscarClick(Sender: TObject);
    procedure DepreciacinAcumulada1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ActivoFijo: TFrm_ActivoFijo;
  I : Integer;

implementation

uses TABLAS, CATALOGOCONTABILIDAD, BuscaCatalogoContabilidad,
  BUSCAACTIVOFIJO;

{$R *.dfm}

procedure TFrm_ActivoFijo.GastoDepreciacin1Click(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCatalogoContabilidad.WBUSCAR.Clear;
     BuscarCatalogoContabilidad.SHOWMODAL;
  IF BuscarCatalogoContabilidad.ModalResult = MROK THEN
     BEGIN
        IF Dtm.TBL_CONTABILIDAD.Locate('CUENTA;SUBCUENTA;AUXILIAR;AUXILIAR1;AUXILIAR2',
           VarArrayOf([Dtm.TBL_CONSULTA.FieldByName('CUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('SUBCUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR1').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR2').AsString]),[]) THEN

           BEGIN
            Dtm.TBL_CONTABILIDAD.Edit;
            DBEdit24.DataField := 'GDCUENTA';
            DBEdit25.DataField := 'GDSUBCUENTA';
            DBEdit26.DataField := 'GDAUXILIAR';
            DBEdit27.DataField := 'GDAUXILIAR1';
            DBEdit28.DataField := 'GDAUXILIAR2';
            IF (Dtm.TBL_CONTABILIDADGrupo.AsString = 'Pasivo') AND (Dtm.TBL_CONTABILIDADTipo.AsString = 'Detalle') THEN
               BEGIN
                Dtm.TBL_ACTIVOFIJOGDCUENTA.Value    := Dtm.TBL_CONSULTA['CUENTA'];
                Dtm.TBL_ACTIVOFIJOGDSUBCUENTA.Value := Dtm.TBL_CONSULTA['SUBCUENTA'];
                Dtm.TBL_ACTIVOFIJOGDAUXILIAR.Value  := Dtm.TBL_CONSULTA['AUXILIAR'];
                Dtm.TBL_ACTIVOFIJOGDAUXILIAR1.Value := Dtm.TBL_CONSULTA['AUXILIAR1'];
                Dtm.TBL_ACTIVOFIJOGDAUXILIAR2.Value := Dtm.TBL_CONSULTA['AUXILIAR2'];
               END
               ELSE
               BEGIN
               APPLICATION.MessageBox('Debe Selecional una Cuenta Detalle y Gasto','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
               END;
           END;

     END;

end;

procedure TFrm_ActivoFijo.ValorDepreciacin1Click(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCatalogoContabilidad.WBUSCAR.Clear;
     BuscarCatalogoContabilidad.SHOWMODAL;
  IF BuscarCatalogoContabilidad.ModalResult = MROK THEN
     BEGIN
        IF Dtm.TBL_CONTABILIDAD.Locate('CUENTA;SUBCUENTA;AUXILIAR;AUXILIAR1;AUXILIAR2',
           VarArrayOf([Dtm.TBL_CONSULTA.FieldByName('CUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('SUBCUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR1').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR2').AsString]),[]) THEN

           BEGIN
            Dtm.TBL_CONTABILIDAD.Edit;
            DBEdit24.DataField := 'VDCUENTA';
            DBEdit25.DataField := 'VDSUBCUENTA';
            DBEdit26.DataField := 'VDAUXILIAR';
            DBEdit27.DataField := 'VDAUXILIAR1';
            DBEdit28.DataField := 'VDAUXILIAR2';
            IF (Dtm.TBL_CONTABILIDADGrupo.AsString = 'Pasivo') AND (Dtm.TBL_CONTABILIDADTipo.AsString = 'Detalle') THEN
               BEGIN
                Dtm.TBL_ACTIVOFIJOVDCUENTA.Value    := Dtm.TBL_CONSULTA['CUENTA'];
                Dtm.TBL_ACTIVOFIJOVDSUBCUENTA.Value := Dtm.TBL_CONSULTA['SUBCUENTA'];
                Dtm.TBL_ACTIVOFIJOVDAUXILIAR.Value  := Dtm.TBL_CONSULTA['AUXILIAR'];
                Dtm.TBL_ACTIVOFIJOVDAUXILIAR1.Value := Dtm.TBL_CONSULTA['AUXILIAR1'];
                Dtm.TBL_ACTIVOFIJOVDAUXILIAR2.Value := Dtm.TBL_CONSULTA['AUXILIAR2'];
               END
               ELSE
               BEGIN
               APPLICATION.MessageBox('Debe Selecional una Cuenta Detalle y Activo','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
               END;
           END;

     END;

end;

procedure TFrm_ActivoFijo.FormCreate(Sender: TObject);
begin
    FECHASERVICIO.DATETIME := DATE;
    FECHARETIRO.DATETIME   := DATE;
    FECHAULTIMADEPRECIACION.DATETIME := DATE;
     IF NOT Dtm.TBL_ActivoFijo.Active THEN
       BEGIN
        Dtm.TBL_ActivoFijo.Active := TRUE;
       END;
     IF NOT Dtm.TBL_CONTABILIDAD.Active THEN
       BEGIN
        Dtm.TBL_CONTABILIDAD.Active := TRUE;
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

procedure TFrm_ActivoFijo.Bit_NuevoClick(Sender: TObject);
begin
                  Dtm.TBL_Maximo.SQL.Clear;
                  Dtm.TBL_Maximo.SQL.Add('SELECT MAX(CODIGO) AS TREGISTRO,GETDATE() AS TFECHASYS FROM TBL_ACTIVOFIJO');
                  Dtm.TBL_Maximo.Active := TRUE;
            IF not Dtm.TBL_ACTIVOFIJO.Locate('CODIGO',Dtm.TBL_MaximoTregistro.Value+1,[]) THEN
              BEGIN
                DTM.Conexionesa.StartTransaction;
                Try
                Dtm.TBL_ACTIVOFIJO.Insert;
                Dtm.TBL_ACTIVOFIJOCODIGO.VALUE        := Dtm.TBL_MaximoTregistro.Value+1;
                Dtm.TBL_ACTIVOFIJOFECHASERVICIO.AsDateTime := DATE;
                Dtm.TBL_ACTIVOFIJOFECHARETIRO.AsDateTime   := DATE;
                Dtm.TBL_ACTIVOFIJOFECHAULTIMADEPRECIACION.AsDateTime := DATE;
                Dtm.TBL_ACTIVOFIJOCODIGO.Alignment    := taLeftJustify;
                DBEdit1.DataField     := 'CODIGO';
                DBEdit2.DataField     := 'DESCRIPCION';
                DBComboBox1.DataField := 'ESTADO';
                DBEdit5.DataField     := 'LOCALIZACION';
                DBEdit6.DataField     := 'SERIE';
                DBComboBox2.DataField := 'TIPODEPRECIACION';
                DBEdit8.DataField     := 'VIDAUTIL';
                DBEdit9.DataField     := 'PORCENTAJE';
                DBEdit12.DataField    := 'DEPRECIACIONDISPONIBLE';



                DBEdit23.DataField     := 'GDCUENTA';
                DBEdit24.DataField     := 'GDSUBCUENTA';
                DBEdit25.DataField     := 'GDAUXILIAR';
                DBEdit26.DataField     := 'GDAUXILIAR1';
                DBEdit27.DataField     := 'GDAUXILIAR2';

                DBEdit13.DataField     := 'VDCUENTA';
                DBEdit14.DataField     := 'VDSUBCUENTA';
                DBEdit15.DataField     := 'VDAUXILIAR';
                DBEdit16.DataField     := 'VDAUXILIAR1';
                DBEdit17.DataField     := 'VDAUXILIAR2';

                DBEdit18.DataField     := 'DACUENTA';
                DBEdit19.DataField     := 'DASUBCUENTA';
                DBEdit20.DataField     := 'DAAUXILIAR';
                DBEdit21.DataField     := 'DAAUXILIAR1';
                DBEdit22.DataField     := 'DAAUXILIAR2';

                DBEdit28.DataField     := 'VALORORIGINAL';
                DBEdit29.DataField     := 'DEPRECIACIONACUMULADA';
                DBEdit30.DataField     := 'VALORDEDESECHO';
                Bit_Nuevo.Enabled     := False;
                Dtm.TBL_ACTIVOFIJO.Post;
                Dtm.Conexionesa.Commit;
                Except
                Dtm.Conexionesa.Rollback;
                End;
           END;
           Dtm.TBL_Maximo.Close;

end;

procedure TFrm_ActivoFijo.Bit_EliminarClick(Sender: TObject);
begin
  IF Dtm.TBL_ACTIVOFIJO.State IN [dsEdit, dsInsert] THEN
    BEGIN
    if MessageDlg('Desea Eliminar Registro',mtConfirmation, [mbYES, mbNO], 0) = mrYes then
       BEGIN
          Dtm.TBL_ACTIVOFIJO.EDIT;
          Dtm.TBL_ACTIVOFIJO.DELETE;
       END;
    END
     ELSE
      BEGIN
        APPLICATION.MessageBox('Registro no está en modo editado','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
      END;
end;

procedure TFrm_ActivoFijo.Bit_SalirClick(Sender: TObject);
begin
 Close;
end;

procedure TFrm_ActivoFijo.Bit_GrabarClick(Sender: TObject);
begin
     Dtm.TBL_ACTIVOFIJO.EDIT;
     Dtm.TBL_ACTIVOFIJOFECHASERVICIO.AsDateTime := FECHASERVICIO.DATE;
     Dtm.TBL_ACTIVOFIJOFECHARETIRO.AsDateTime   := FECHARETIRO.DATE;
     Dtm.TBL_ACTIVOFIJOFECHAULTIMADEPRECIACION.AsDateTime := FECHAULTIMADEPRECIACION.DATE;
     Dtm.TBL_ACTIVOFIJO.POST;
     Bit_Nuevo.Enabled      := True;
     DBEdit1.DataField     := '';
     DBEdit2.DataField     := '';
     DBComboBox1.DataField := '';
     DBEdit5.DataField     := '';
     DBEdit6.DataField     := '';
     DBComboBox2.DataField := '';
     DBEdit8.DataField     := '';
     DBEdit9.DataField     := '';
     DBEdit12.DataField    := '';
     DBEdit23.DataField    := '';
     DBEdit24.DataField    := '';
     DBEdit25.DataField    := '';
     DBEdit26.DataField    := '';
     DBEdit27.DataField    := '';
     DBEdit13.DataField    := '';
     DBEdit14.DataField    := '';
     DBEdit15.DataField    := '';
     DBEdit16.DataField    := '';
     DBEdit17.DataField    := '';
     DBEdit18.DataField    := '';
     DBEdit19.DataField    := '';
     DBEdit20.DataField    := '';
     DBEdit21.DataField    := '';
     DBEdit22.DataField    := '';
     DBEdit28.DataField    := '';
     DBEdit29.DataField    := '';
     DBEdit30.DataField    := '';
 end;

procedure TFrm_ActivoFijo.Bit_BuscarClick(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarActivoFijo.WBUSCAR.Clear;
     BuscarActivoFijo.SHOWMODAL;
  IF BuscarActivoFijo.ModalResult = MROK THEN
     BEGIN
     IF Dtm.TBL_ACTIVOFIJO.Locate('CODIGO',Dtm.TBL_CONSULTA.FieldByName('CODIGO').Value,[]) THEN
        BEGIN
          Dtm.TBL_ACTIVOFIJO.EDIT;
          DBEdit1.DataField     := 'CODIGO';
          DBEdit2.DataField     := 'DESCRIPCION';
          DBComboBox1.DataField := 'ESTADO';
          DBEdit5.DataField     := 'LOCALIZACION';
          DBEdit6.DataField     := 'SERIE';
          DBComboBox2.DataField := 'TIPODEPRECIACION';
          DBEdit8.DataField     := 'VIDAUTIL';
          DBEdit9.DataField     := 'PORCENTAJE';
          DBEdit12.DataField    := 'DEPRECIACIONDISPONIBLE';
          DBEdit23.DataField     := 'GDCUENTA';
          DBEdit24.DataField     := 'GDSUBCUENTA';
          DBEdit25.DataField     := 'GDAUXILIAR';
          DBEdit26.DataField     := 'GDAUXILIAR1';
          DBEdit27.DataField     := 'GDAUXILIAR2';
          DBEdit13.DataField     := 'VDCUENTA';
          DBEdit14.DataField     := 'VDSUBCUENTA';
          DBEdit15.DataField     := 'VDAUXILIAR';
          DBEdit16.DataField     := 'VDAUXILIAR1';
          DBEdit17.DataField     := 'VDAUXILIAR2';
          DBEdit18.DataField     := 'DACUENTA';
          DBEdit19.DataField     := 'DASUBCUENTA';
          DBEdit20.DataField     := 'DAAUXILIAR';
          DBEdit21.DataField     := 'DAAUXILIAR1';
          DBEdit22.DataField     := 'DAAUXILIAR2';
          DBEdit28.DataField     := 'VALORORIGINAL';
          DBEdit29.DataField     := 'DEPRECIACIONACUMULADA';
          DBEdit30.DataField     := 'VALORDEDESECHO';
          FECHASERVICIO.DATE     := Dtm.TBL_ACTIVOFIJOFECHASERVICIO.AsDateTime;
          FECHARETIRO.DATE       := Dtm.TBL_ACTIVOFIJOFECHARETIRO.AsDateTime;
          FECHAULTIMADEPRECIACION.DATE := Dtm.TBL_ACTIVOFIJOFECHAULTIMADEPRECIACION.AsDateTime;
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

procedure TFrm_ActivoFijo.DepreciacinAcumulada1Click(Sender: TObject);
begin
     Dtm.TBL_CONSULTA.SQL.Clear;
     BuscarCatalogoContabilidad.WBUSCAR.Clear;
     BuscarCatalogoContabilidad.SHOWMODAL;
  IF BuscarCatalogoContabilidad.ModalResult = MROK THEN
     BEGIN
        IF Dtm.TBL_CONTABILIDAD.Locate('GRUPO;SUBGRUPO;CUENTA;SUBCUENTA;AUXILIAR1;AUXILIAR2',
           VarArrayOf([Dtm.TBL_CONSULTA.FieldByName('GRUPO').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('SUBGRUPO').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('CUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('SUBCUENTA').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR1').AsString,
                       Dtm.TBL_CONSULTA.FieldByName('AUXILIAR2').AsString]),[]) THEN

           BEGIN
            Dtm.TBL_CONTABILIDAD.Edit;
            DBEdit24.DataField := 'DACUENTA';
            DBEdit25.DataField := 'DASUBCUENTA';
            DBEdit26.DataField := 'DAAUXILIAR';
            DBEdit27.DataField := 'DAAUXILIAR1';
            DBEdit28.DataField := 'DAAUXILIAR2';
            IF (Dtm.TBL_CONTABILIDADGrupo.AsString = 'Pasivo') AND (Dtm.TBL_CONTABILIDADTipo.AsString = 'Detalle') THEN
               BEGIN
                Dtm.TBL_ACTIVOFIJODACUENTA.Value    := Dtm.TBL_CONSULTA['CUENTA'];
                Dtm.TBL_ACTIVOFIJODASUBCUENTA.Value := Dtm.TBL_CONSULTA['SUBCUENTA'];
                Dtm.TBL_ACTIVOFIJODAAUXILIAR.Value  := Dtm.TBL_CONSULTA['AUXILIAR'];
                Dtm.TBL_ACTIVOFIJODAAUXILIAR1.Value := Dtm.TBL_CONSULTA['AUXILIAR1'];
                Dtm.TBL_ACTIVOFIJODAAUXILIAR2.Value := Dtm.TBL_CONSULTA['AUXILIAR2'];
               END
               ELSE
               BEGIN
               APPLICATION.MessageBox('Debe Selecional una Cuenta Detalle y Activo','A v i s o',MB_DEFBUTTON1 + MB_IconWarning);
               END;
           END;

     END;

end;

end.
