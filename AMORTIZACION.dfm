object Frm_Amortizacion: TFrm_Amortizacion
  Left = 192
  Top = 124
  BorderStyle = bsSizeToolWin
  Caption = 'Kerensoft - Tabla de Amortizaci'#243'n '
  ClientHeight = 316
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 2
    Top = 2
    Width = 354
    Height = 293
  end
  object Label1: TLabel
    Left = 15
    Top = 23
    Width = 77
    Height = 13
    Caption = 'Monto Pr'#233'stamo'
  end
  object Label2: TLabel
    Left = 15
    Top = 46
    Width = 26
    Height = 13
    Caption = 'Plazo'
  end
  object Label3: TLabel
    Left = 15
    Top = 69
    Width = 24
    Height = 13
    Caption = 'Tasa'
  end
  object Label4: TLabel
    Left = 15
    Top = 95
    Width = 63
    Height = 13
    Caption = 'Tipo de Tasa'
  end
  object Label5: TLabel
    Left = 192
    Top = 75
    Width = 46
    Height = 13
    Caption = 'D'#237'a Pago'
  end
  object Label6: TLabel
    Left = 15
    Top = 117
    Width = 92
    Height = 13
    Caption = 'Fecha de Prestamo'
  end
  object Label7: TLabel
    Left = 192
    Top = 51
    Width = 49
    Height = 13
    Caption = 'Modalidad'
  end
  object CoolBar1: TCoolBar
    Left = 360
    Top = 2
    Width = 52
    Height = 293
    Align = alCustom
    Bands = <
      item
        Control = CoolBar2
        ImageIndex = -1
        MinHeight = 45
        Width = 287
      end>
    Vertical = True
    object CoolBar2: TCoolBar
      Left = 0
      Top = 11
      Width = 45
      Height = 278
      Bands = <>
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 3
        Width = 37
        Height = 37
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
        Left = 1
        Top = 39
        Width = 37
        Height = 37
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
      end
      object SpeedButton6: TSpeedButton
        Left = 1
        Top = 119
        Width = 37
        Height = 37
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
      object Bit_Printe: TSpeedButton
        Left = 1
        Top = 76
        Width = 37
        Height = 37
        Hint = 'Printer'
        Flat = True
        Glyph.Data = {
          C6060000424DC6060000000000003600000028000000250000000F0000000100
          18000000000090060000C40E0000C40E000000000000000000001DE6B51DE6B5
          1DE6B51DE6B5C09E79B5844EB3824BB3814BB3814BB3824BB5844EC09E791DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5C0
          9E79B5844EB3824BB3814BB3814BB3824BB5844EC09E791DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B500DCDCDCCCCCCCCCCCCCCCCCCCBA854BFFFFFCFFFFF5FF
          FFF4FFFFF4FFFFF5FFFFFCBA854BCCCCCCCCCCCCCCCCCCDCDCDC1DE6B51DE6B5
          1DE6B5DCDCDCCCCCCCCCCCCCCCCCCCBA854BFFFFFCFFFFF5FFFFF4FFFFF4FFFF
          F5FFFFFCBA854BCCCCCCCCCCCCCCCCCCDCDCDC1DE6B51DE6B5009A9A9A818181
          8181827F8386BD8546FFFFF7FFF3DAFFF2D9FFF2D9FFF3DAFFFFF7BD85467F83
          868181828181819A9A9A1DE6B51DE6B51DE6B59A9A9A8181818181827F8386BD
          8546FFFFF7FFF3DAFFF2D9FFF2D9FFF3DAFFFFF7BD85467F8386818182818181
          9A9A9A1DE6B51DE6B500818181D5D2D1CBC9C97D7C7C676768A8A6A8A4A2A4A3
          A2A3A3A2A3A4A2A4A8A6A86767687D7C7CCBC9C9D5D2D18181811DE6B51DE6B5
          1DE6B5818181D5D2D1CBC9C97D7C7C676768A8A6A8A4A2A4A3A2A3A3A2A3A4A2
          A4A8A6A86767687D7C7CCBC9C9D5D2D18181811DE6B51DE6B5007F7F7FDAD7D6
          C2BFBEC8C5C4AFACACAFACABADAAAAADAAAAADAAAAADAAAAAFACABAFACACC8C5
          C4C2BFBEDAD7D67F7F7F1DE6B51DE6B51DE6B57F7F7FDAD7D6C2BFBEC8C5C4AF
          ACACAFACABADAAAAADAAAAADAAAAADAAAAAFACABAFACACC8C5C4C2BFBEDAD7D6
          7F7F7F1DE6B51DE6B5007E7E7EE1E0DFBDBBB992908E7B79777D7B787D7B787D
          7B787D7B787D7B787D7B787B797792908EBDBBB9E1E0DF7E7E7E1DE6B51DE6B5
          1DE6B57E7E7EE1E0DFBDBBB992908E7B79777D7B787D7B787D7B787D7B787D7B
          787D7B787B797792908EBDBBB9E1E0DF7E7E7E1DE6B51DE6B5007D7D7DEDEBEB
          B8B5B36462616B69686C6A696C6A696C6A696C6A696C6A696C6A696B69686462
          61B8B5B3EDEBEB7D7D7D1DE6B51DE6B51DE6B57D7D7DEDEBEBB8B5B36462616B
          69686C6A696C6A696C6A696C6A696C6A696C6A696B6968646261B8B5B3EDEBEB
          7D7D7D1DE6B51DE6B5007C7C7DF9F8F8F3F4F29491909B98979C99989C99989C
          99989C99989C99989C99989B9897949190F3F4F2F9F8F87C7C7D1DE6B51DE6B5
          1DE6B57C7C7DF9F8F8F3F4F29491909B98979C99989C99989C99989C99989C99
          989C99989B9897949190F3F4F2F9F8F87C7C7D1DE6B51DE6B5007C7C7DF4F3F2
          D3D1D0827F7E888685898686898685898685898685898685898686888685827F
          7ED3D1D0F4F3F27C7C7D1DE6B51DE6B51DE6B57C7C7DF4F3F2D3D1D0827F7E88
          8685898686898685898685898685898685898686888685827F7ED3D1D0F4F3F2
          7C7C7D1DE6B51DE6B5007E7E7EFFFFFFFFFFFF6D6B6A706F6F6C6B6B6A68676A
          68676A68676A68676C6B6B706F6F6D6B6AFFFFFFFFFFFF7E7E7E1DE6B51DE6B5
          1DE6B57E7E7EFFFFFFFFFFFF6D6B6A706F6F6C6B6B6A68676A68676A68676A68
          676C6B6B706F6F6D6B6AFFFFFFFFFFFF7E7E7E1DE6B51DE6B500A9A9A97F7F7F
          7F7F80808387BF8648FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BF86488083
          877F7F807F7F7FA9A9A91DE6B51DE6B51DE6B5A9A9A97F7F7F7F7F80808387BF
          8648FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BF86488083877F7F807F7F7F
          A9A9A91DE6B51DE6B5001DE6B51DE6B51DE6B575777ABA8347FFFFF34CB1224C
          B1224CB1224CB122FFFFF3BA834775777A1DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B575777ABA8347FFFFFF241CED241CED241CED241C
          EDFFFFFFBA834775777A1DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B5B78349FFFFF44CB1224CB1224CB1224CB122FFFFF4B783491DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B7
          8349FFFFFF241CED241CED241CED241CEDFFFFFFB783491DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B5B7854EFFFFFDFFFFF5FF
          FEF4FFFEF4FFFFF5FFFFFDB7854E1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B5B7854EFFFFFDFFFFF5FFFEF4FFFEF4FFFF
          F5FFFFFDB7854E1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B5CEAE8AB5844FB3824BB3814BB3814BB3824BB5844FCEAE8A1DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5CE
          AE8AB5844FB3824BB3814BB3814BB3824BB5844FCEAE8A1DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B500}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Bit_PrinteClick
      end
    end
  end
  object MONTOPRESTAMO: TEdit
    Left = 135
    Top = 23
    Width = 202
    Height = 21
    TabOrder = 1
    Text = '1000000'
  end
  object PLAZO: TEdit
    Left = 135
    Top = 46
    Width = 50
    Height = 21
    TabOrder = 2
    Text = '12'
  end
  object TASA: TEdit
    Left = 135
    Top = 69
    Width = 49
    Height = 21
    TabOrder = 3
    Text = '24'
  end
  object MODALIDAD: TComboBox
    Left = 248
    Top = 46
    Width = 89
    Height = 21
    ItemIndex = 4
    TabOrder = 4
    Text = 'Mensual'
    Items.Strings = (
      'Anual'
      'Semestral'
      'Trimestral'
      'Cuatrimestral'
      'Mensual'
      'Semanal'
      'Diario')
  end
  object TIPOTASA: TComboBox
    Left = 136
    Top = 93
    Width = 201
    Height = 21
    ItemIndex = 0
    TabOrder = 5
    Text = 'Cuota Variable (Insoluto)'
    Items.Strings = (
      'Cuota Variable (Insoluto)'
      'Couta Fija (Insoluto)'
      'Cuota Fija (Absoluto)'
      'Vencimiento')
  end
  object DIAPAGO: TComboBox
    Left = 248
    Top = 69
    Width = 89
    Height = 21
    ItemIndex = 1
    TabOrder = 6
    Text = '2'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31')
  end
  object FechaPrestamo: TDateTimePicker
    Left = 136
    Top = 116
    Width = 200
    Height = 21
    Date = 41418.665918391210000000
    Time = 41418.665918391210000000
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 456
    Top = 64
    Width = 793
    Height = 577
    Caption = 'Panel1'
    TabOrder = 8
    Visible = False
    object Frr_Amortizacion: TQuickRep
      Left = 8
      Top = 8
      Width = 794
      Height = 1123
      DataSet = Dtm.TBL_CONSULTA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 129
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          341.312500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBText1: TQRDBText
          Left = 16
          Top = 7
          Width = 70
          Height = 17
          Size.Values = (
            44.979166666666670000
            42.333333333333330000
            18.520833333333330000
            185.208333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'COMPANIA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object DIRECCION: TQRExprMemo
          Left = 16
          Top = 33
          Width = 433
          Height = 89
          Size.Values = (
            235.479166666666700000
            42.333333333333330000
            87.312500000000000000
            1145.645833333333000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          RemoveBlankLines = False
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          Color = clWhite
          Lines.Strings = (
            '{DIRECCION}')
          Transparent = False
          FontSize = 10
        end
        object QRLabel14: TQRLabel
          Left = 536
          Top = 16
          Width = 123
          Height = 20
          Size.Values = (
            52.916666666666670000
            1418.166666666667000000
            42.333333333333330000
            325.437500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'AMORTIZACION'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 12
        end
        object QRLabel15: TQRLabel
          Left = 538
          Top = 48
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1423.458333333333000000
            127.000000000000000000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel16: TQRLabel
          Left = 539
          Top = 72
          Width = 31
          Height = 17
          Size.Values = (
            44.979166666666670000
            1426.104166666667000000
            190.500000000000000000
            82.020833333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Hora'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRSysData1: TQRSysData
          Left = 592
          Top = 48
          Width = 36
          Height = 17
          Size.Values = (
            44.979166666666670000
            1566.333333333333000000
            127.000000000000000000
            95.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          Data = qrsDate
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRSysData2: TQRSysData
          Left = 593
          Top = 73
          Width = 37
          Height = 17
          Size.Values = (
            44.979166666666670000
            1568.979166666667000000
            193.145833333333300000
            97.895833333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          Data = qrsTime
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 264
        Width = 718
        Height = 24
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          63.500000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRLabel6: TQRLabel
          Left = 9
          Top = 3
          Width = 51
          Height = 17
          Size.Values = (
            44.979166666666670000
            23.812500000000000000
            7.937500000000000000
            134.937500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Periodo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 103
          Top = 3
          Width = 46
          Height = 17
          Size.Values = (
            44.979166666666670000
            272.520833333333300000
            7.937500000000000000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Capital'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 182
          Top = 3
          Width = 38
          Height = 17
          Size.Values = (
            44.979166666666670000
            481.541666666666700000
            7.937500000000000000
            100.541666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Cuota'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 264
          Top = 3
          Width = 44
          Height = 17
          Size.Values = (
            44.979166666666670000
            698.500000000000000000
            7.937500000000000000
            116.416666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Interes'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel10: TQRLabel
          Left = 359
          Top = 3
          Width = 38
          Height = 17
          Size.Values = (
            44.979166666666670000
            949.854166666666700000
            7.937500000000000000
            100.541666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Saldo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel11: TQRLabel
          Left = 668
          Top = 3
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1767.416666666667000000
            7.937500000000000000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel13: TQRLabel
          Left = 420
          Top = 3
          Width = 88
          Height = 17
          Size.Values = (
            44.979166666666670000
            1111.250000000000000000
            7.937500000000000000
            232.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Interes Acum.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel12: TQRLabel
          Left = 516
          Top = 3
          Width = 90
          Height = 17
          Size.Values = (
            44.979166666666670000
            1365.250000000000000000
            7.937500000000000000
            238.125000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Capital Acum.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
      end
      object QRBand3: TQRBand
        Left = 38
        Top = 288
        Width = 718
        Height = 25
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          66.145833333333340000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText14: TQRDBText
          Left = 468
          Top = 3
          Width = 136
          Height = 17
          Size.Values = (
            44.979166666666670000
            1238.250000000000000000
            7.937500000000000000
            359.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'CAPITALACUMULADO'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 370
          Top = 3
          Width = 138
          Height = 17
          Size.Values = (
            44.979166666666670000
            978.958333333333300000
            7.937500000000000000
            365.125000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'INTERESACUMULADO'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText11: TQRDBText
          Left = 261
          Top = 3
          Width = 136
          Height = 17
          Size.Values = (
            44.979166666666670000
            690.562500000000000000
            7.937500000000000000
            359.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'CAPITALACUMULADO'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 10
          Top = 2
          Width = 60
          Height = 17
          Size.Values = (
            44.979166666666670000
            26.458333333333330000
            5.291666666666667000
            158.750000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'PERIODO'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText8: TQRDBText
          Left = 98
          Top = 2
          Width = 54
          Height = 17
          Size.Values = (
            44.979166666666670000
            259.291666666666700000
            5.291666666666667000
            142.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'CAPITAL'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText9: TQRDBText
          Left = 176
          Top = 3
          Width = 45
          Height = 17
          Size.Values = (
            44.979166666666670000
            465.666666666666700000
            7.937500000000000000
            119.062500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'CUOTA'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText10: TQRDBText
          Left = 251
          Top = 3
          Width = 56
          Height = 17
          Size.Values = (
            44.979166666666670000
            664.104166666666700000
            7.937500000000000000
            148.166666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'INTERES'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText12: TQRDBText
          Left = 621
          Top = 3
          Width = 89
          Height = 17
          Size.Values = (
            44.979166666666670000
            1643.062500000000000000
            7.937500000000000000
            235.479166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'FECHACUOTA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRBand4: TQRBand
        Left = 38
        Top = 313
        Width = 718
        Height = 27
        Frame.DrawTop = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          71.437500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
      end
      object ChildBand1: TQRChildBand
        Left = 38
        Top = 167
        Width = 718
        Height = 97
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          256.645833333333400000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRBand1
        PrintOrder = cboAfterParent
        object QRLabel1: TQRLabel
          Left = 8
          Top = 4
          Width = 112
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            10.583333333333330000
            296.333333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Monto Solicitado:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 8
          Top = 22
          Width = 41
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            58.208333333333330000
            108.479166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Plazo:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 8
          Top = 40
          Width = 35
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            105.833333333333300000
            92.604166666666670000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Tasa:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 8
          Top = 77
          Width = 72
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            203.729166666666700000
            190.500000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Modalidad:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 8
          Top = 58
          Width = 87
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            153.458333333333300000
            230.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Tipo de Tasa:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 160
          Top = 4
          Width = 121
          Height = 17
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            10.583333333333330000
            320.145833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'MONTOPRESTAMO'
          Mask = '###,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 160
          Top = 22
          Width = 43
          Height = 17
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            58.208333333333330000
            113.770833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'PLAZO'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 160
          Top = 40
          Width = 35
          Height = 17
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            105.833333333333300000
            92.604166666666670000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'TASA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 160
          Top = 58
          Width = 64
          Height = 17
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            153.458333333333300000
            169.333333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'TIPOTASA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 160
          Top = 76
          Width = 77
          Height = 17
          Size.Values = (
            44.979166666666670000
            423.333333333333300000
            201.083333333333300000
            203.729166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'MODALIDAD'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 297
    Width = 417
    Height = 19
    Panels = <>
  end
end
