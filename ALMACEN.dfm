object Frm_Almacen: TFrm_Almacen
  Left = 199
  Top = 281
  BorderStyle = bsSizeToolWin
  Caption = 'Kerensoft - Registro de Almacen'
  ClientHeight = 287
  ClientWidth = 465
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 417
    Height = 267
  end
  object PageControl1: TPageControl
    Left = 2
    Top = 4
    Width = 413
    Height = 261
    ActivePage = TabSheet1
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel2: TBevel
        Left = 0
        Top = 1
        Width = 403
        Height = 231
      end
      object Label1: TLabel
        Left = 24
        Top = 23
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 24
        Top = 50
        Width = 56
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label3: TLabel
        Left = 24
        Top = 79
        Width = 53
        Height = 13
        Caption = 'Comentario'
      end
      object DBEdit1: TDBEdit
        Left = 89
        Top = 23
        Width = 89
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_ALMACEN
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 89
        Top = 46
        Width = 305
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_ALMACEN
        TabOrder = 1
      end
      object DBRichEdit1: TDBRichEdit
        Left = 89
        Top = 69
        Width = 305
        Height = 153
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataSource = Dtm.DTS_ALMACEN
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 2
        Zoom = 100
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Compras'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 1
        Width = 404
        Height = 231
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'PEDIDO'
            Title.Caption = 'Pedido'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Title.Caption = 'Costo'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Caption = 'Cantidad'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha'
            Width = 78
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ventas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 1
        Width = 404
        Height = 231
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FACTURA'
            Title.Caption = 'Factura'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIOVENTA'
            Title.Caption = 'Precio'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Caption = 'Cantidad'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha'
            Width = 132
            Visible = True
          end>
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 420
    Top = 0
    Width = 39
    Height = 267
    Align = alCustom
    Bands = <
      item
        Control = CoolBar2
        ImageIndex = -1
        MinHeight = 35
        Width = 261
      end>
    Vertical = True
    object CoolBar2: TCoolBar
      Left = 0
      Top = 11
      Width = 35
      Height = 252
      Bands = <>
      object Bit_Help: TSpeedButton
        Left = 2
        Top = 2
        Width = 27
        Height = 25
        Hint = 'Ayuda'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFE1E1E1CECECECCCCCCCCCCCCCCCCCCCECECEE1E1E1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CCCCCCBC8B62AF5E1AAD5912AD
          5912AD5912AF5E1ABC8B62CCCCCCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1
          C4AE9BAD5A13CA8A48E0AD6EE6B87CE6B77BE6B87CE0AD6ECA8A48AD5A13C4AE
          9BF1F1F1FFFFFFFFFFFFFFFFFFC4AE9BB16019DAA464E2B173E0AE6FDEAB6ADD
          A866DEAB6AE0AE6FE2B173DAA464B16019C4AE9BFFFFFFFFFFFFE1E1E1AE5B14
          D89F5EDFAC6BDDA968DCA764DAA25DFFFFFFDAA25DDCA764DDA968DFAC6BD89F
          5EAE5B14E1E1E1FFFFFFBD8D63C5823EDCA766DAA362D9A260D8A15ED69C56FF
          FFFFD69C56D8A15ED9A260DAA362DCA766C5823EBD8D63FFFFFFB05F1BD59C58
          D9A05CD79E5AD79E5AD79D58D59952D3954AD4984FD69C57D79E5AD79E5AD9A0
          5CD59C58B05F1BFFFFFFAF5B15D79F5AD49A55D49954D49954D49852D19349FF
          FFFFDDB07AD1934AD39752D49954D49A55D79F5AAF5B15FFFFFFAE5B14DAA769
          D2954DD2954DD2954DD1934BCF8F44EED7BDFFFFFFD9A467D09147D2944CD295
          4DDAA769AE5B14FFFFFFAE5A13DEAF78CE8E46CF8F47CD8D44CC8A3FCC893ECA
          8536F4E5D4FFFFFFCC883CCE8E46CE8E46DEAF78AE5A13FFFFFFAF5F19E4BE96
          CC893DCC893ECA8436FFFFFFD0924DC88030D19653FFFFFFC88232CC893ECC89
          3DE4BE96AF5F19FFFFFFD0A076D5A67BD9A86FC88334C57E2CFFFFFFEDD9C1C1
          741DEDD8BFFFFFFFC57D2BC88334D9A86FD5A67BD0A076FFFFFFFFFFFFB15E19
          E8CBAED7A167C37824DBAF7FFFFFFFFFFFFFFFFFFFDBAF7FC37824D7A167E8CB
          AEB15E19FFFFFFFFFFFFFFFFFFE9D3BFB76C2CE4C3A0E0B98DCD8E48C0741FBF
          6E15C0741FCD8E48E0B98DE4C3A0B76C2CE9D3BFFFFFFFFFFFFFFFFFFFFFFFFF
          E9D3BFB15E1ACC9360E2C09CE9CEB0E9CDAFE9CEB0E2C09CCC9360B15E1AE9D3
          BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0A076B15E18AD5810AD
          580FAD5810B15E18D0A076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton2: TSpeedButton
        Left = 2
        Top = 26
        Width = 27
        Height = 25
        Hint = 'Buscar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
          B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
          B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
          0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
          55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
          55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
          55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
          5555575FFF755555555557000075555555555577775555555555}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object Bit_Grabar: TSpeedButton
        Left = 2
        Top = 52
        Width = 27
        Height = 25
        Hint = 'Grabar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33666688888886633377777777777773F666668888888
          66637F3337F3FF37F37F66666886688866637F3337F77F37F37F666668866888
          66637F3337F77FF7F37F66666888888866637F3337777777337F666666666666
          66637F3FFFFFFFFFFF7F66666666666666637F77777777777F7F666FFFFFFFFF
          66637F7F333333337F7F666FFFFFFFFF66637F7F333333337F7F666FFFFFFFFF
          66637F7F333333337F7F666FFFFFFFFF66637F7F333333337F7F666FFFFFFFFF
          66637F7F333333337F7F666FFFFFFFFF68637F7F33333333777F666FFFFFFFFF
          6663737FFFFFFFFF7F7366699999999966333777777777777733}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Bit_GrabarClick
      end
      object Bit_Nuevo: TSpeedButton
        Left = 2
        Top = 77
        Width = 27
        Height = 25
        Hint = 'Nuevo'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Bit_NuevoClick
      end
      object SpeedButton4: TSpeedButton
        Left = 2
        Top = 109
        Width = 27
        Height = 25
        Hint = 'Eliminar'
        Flat = True
        Glyph.Data = {
          36060000424D360600000000000036000000280000001F000000100000000100
          18000000000000060000C40E0000C40E000000000000000000001DE6B51DE6B5
          F4F4F4DDDDDDCECECECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCECECEDDDD
          DDF4F4F41DE6B51DE6B51DE6B5F4F4F4DDDDDDCECECECCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCECECEDDDDDDF4F4F41DE6B51DE6B50000001DE6B5E8E8E8
          C7C6C3BBB7AFB2ACA0AFA99DAEA99CAEA89CAEA89CAEA89CAFA99DB2ACA0BBB7
          AFC7C6C3E8E8E81DE6B5E8E8E8C7C6C3BBB7AFB2ACA0AFA99DAEA99CAEA89CAE
          A89CAEA89CAFA99DB2ACA0BBB7AFC7C6C3E8E8E81DE6B50000001DE6B5C1BEB9
          B4ADA2C2BBB0D0C7BEDFD5CDE6DCD4EDE1DBEFE4DDE7DDD6E1D6CFD1C9BFC3BC
          B1B4AEA2C1BEB91DE6B51DE6B5B4ADA2C2BBB0D0C7BEDFD5CDE6DCD4EDE1DBEF
          E4DDE7DDD6E1D6CFD1C9BFC3BCB1B4AEA2C1BEB91DE6B50000001DE6B5B1AB9F
          C7C0B6CFC7BED5CCC3DBD2C9E2D8D0E9DDD7EBE0D9E3D9D2DDD3CBD6CEC5D1C9
          C0C9C2B9B1AB9F1DE6B5B1AB9FC7C0B6CFC7BED5CCC3DBD2C9E2D8D0E9DDD7EB
          E0D9E3D9D2DDD3CBD6CEC5D1C9C0C9C2B9B1AB9F1DE6B50000001DE6B5B1AB9F
          C9C0B8CDC5BCD4CBC2DAD1C8E1D7CFE7DCD5EADFD8E2D8D1DCD2CAD5CDC4CFC7
          BECAC3B9B1AB9F1DE6B5B1AB9FC9C0B8CDC5BCD4CBC2DAD1C8E1D7CFE7DCD5EA
          DFD8E2D8D1DCD2CAD5CDC4CFC7BECAC3B9B1AB9F1DE6B50000001DE6B5B0AB9E
          C8BFB7CBC3BAD2C9C0D8CFC5DFD5CDE9DFD8E9DDD6E0D6CFDAD0C8D3CBC2CEC6
          BDC9C2B7B0AA9E1DE6B5B0AB9EC8BFB7CBC3BAD2C9C0D8CFC5DFD5CDE9DFD8E9
          DDD6E0D6CFDAD0C8D3CBC2CEC6BDC9C2B7B0AA9E1DE6B50000001DE6B5B0AA9E
          C9C2B9E2DDD4F5EFE9FFFBF4FEFAF3FDF9F2FDF9F2FDFAF3FFFBF4F6F0E8E4DD
          D5CBC4BAB0AA9E1DE6B5B0AA9EC9C2B9E2DDD4F5EFE9FFFBF4FEFAF3FDF9F2FD
          F9F2FDFAF3FFFBF4F6F0E8E4DDD5CBC4BAB0AA9E1DE6B50000001DE6B5C1BDB6
          F9F4EED7D0C8C6BEB6BEB5ABC2B9AFC7BCB4C8BEB5C3B9B1BFB6ACC7BFB7D8D1
          C9F9F5EDC1BDB61DE6B5C1BDB6F9F4EED7D0C8C6BEB6BEB5ABC2B9AFC7BCB4C8
          BEB5C3B9B1BFB6ACC7BFB7D8D1C9F9F5EDC1BDB61DE6B50000001DE6B5BBB7AF
          A3998FB6AEA4C8BFB6D8CFC7E3D9D1EADED8ECE1DAE4DAD3DAD1C9CAC1B8B8AF
          A6A49C92BBB7AF1DE6B5BBB7AFA3998FB6AEA4C8BFB6D8CFC7E3D9D1EADED8EC
          E1DAE4DAD3DAD1C9CAC1B8B8AFA6A49C92BBB7AF1DE6B50000001DE6B5B1AB9F
          CAC1B9CEC7BE4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
          22CBC4BAB1AB9F1DE6B5B1AB9FCAC1B9CEC7BE241CED241CED241CED241CED24
          1CED241CED241CED241CED241CEDCBC4BAB1AB9F1DE6B50000001DE6B5B1AB9E
          C8BFB7CBC3BA4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
          22C9C2B8B0AB9E1DE6B5B1AB9EC8BFB7CBC3BA241CED241CED241CED241CED24
          1CED241CED241CED241CED241CEDC9C2B8B0AB9E1DE6B50000001DE6B5B0AA9D
          C7C0B8E1DBD2F3EDE6FDF9F2FCF8F1FBF7F0FBF7F0FCF8F1FDF8F2F4EEE6E2DB
          D3CAC3B9AFAA9D1DE6B5B0AA9DC7C0B8E1DBD2F3EDE6FDF9F2FCF8F1FBF7F0FB
          F7F0FCF8F1FDF8F2F4EEE6E2DBD3CAC3B9AFAA9D1DE6B50000001DE6B5AEA89C
          FBF5EFEEE7DEE3DCD3DDD5CCDDD5CBDDD4CBDDD4CBDDD4CBDDD5CBE3DCD3EEE7
          DEFBF6EFAEA89C1DE6B5AEA89CFBF5EFEEE7DEE3DCD3DDD5CCDDD5CBDDD4CBDD
          D4CBDDD4CBDDD5CBE3DCD3EEE7DEFBF6EFAEA89C1DE6B50000001DE6B5AFA99D
          E1D8CEE1D8CEDFD6CCDFD6CBDFD5CBDFD5CBDFD5CBDFD5CBDFD6CBDFD6CCE1D8
          CEE1D8CEAFA99D1DE6B5AFA99DE1D8CEE1D8CEDFD6CCDFD6CBDFD5CBDFD5CBDF
          D5CBDFD5CBDFD6CBDFD6CCE1D8CEE1D8CEAFA99D1DE6B50000001DE6B5DCDAD4
          B6B0A4D2CABFE2D9D0EFE7DDEEE6DCEEE6DCEEE6DCEEE6DCEFE7DDE2D9D0D2CA
          BFB6B0A4DCDAD41DE6B5DCDAD4B6B0A4D2CABFE2D9D0EFE7DDEEE6DCEEE6DCEE
          E6DCEEE6DCEFE7DDE2D9D0D2CABFB6B0A4DCDAD41DE6B50000001DE6B51DE6B5
          EFEEEBCBC7BFB2ACA1AEA89CAEA89CAEA89CAEA89CAEA89CAEA89CB2ACA1CBC7
          BFEFEEEB1DE6B51DE6B51DE6B5EFEEEBCBC7BFB2ACA1AEA89CAEA89CAEA89CAE
          A89CAEA89CAEA89CB2ACA1CBC7BFEFEEEB1DE6B51DE6B5000000}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object SpeedButton6: TSpeedButton
        Left = 2
        Top = 134
        Width = 27
        Height = 25
        Hint = 'Salir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 268
    Width = 465
    Height = 19
    Panels = <>
  end
end
