object Frr_CobroNoAsentado: TFrr_CobroNoAsentado
  Left = 192
  Top = 107
  BorderStyle = bsSizeToolWin
  Caption = 'Kerensoft - Asiento de Cobro'
  ClientHeight = 185
  ClientWidth = 283
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
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 249
    Height = 175
    Shape = bsFrame
  end
  object FECHA1: TDateTimePicker
    Left = 4
    Top = 3
    Width = 115
    Height = 21
    Date = 39118.671121770840000000
    Time = 39118.671121770840000000
    TabOrder = 0
  end
  object FECHA2: TDateTimePicker
    Left = 120
    Top = 3
    Width = 125
    Height = 21
    Date = 39118.671167164350000000
    Time = 39118.671167164350000000
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 166
    Width = 283
    Height = 19
    Panels = <>
  end
  object CoolBar1: TCoolBar
    Left = 251
    Top = 0
    Width = 39
    Height = 175
    Align = alCustom
    Bands = <
      item
        Control = CoolBar2
        ImageIndex = -1
        MinHeight = 35
        Width = 169
      end>
    Vertical = True
    object CoolBar2: TCoolBar
      Left = 0
      Top = 11
      Width = 35
      Height = 160
      Bands = <>
      object SpeedButton1: TSpeedButton
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
      object Bit_Buscar: TSpeedButton
        Left = 2
        Top = 27
        Width = 27
        Height = 25
        Hint = 'Buscar'
        Enabled = False
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
      object Bit_Pantalla: TSpeedButton
        Left = 2
        Top = 52
        Width = 27
        Height = 25
        Hint = 'Pantalla'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000F3F3F3CCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFCFCFFFFF
          FFFFFFFFFFFFFFFFFFFFE8DCCDB98954B88956B78854B5854FB4834CB4834CB4
          834CB4834CB4834CB58550BA8E5DFFFFFFFFFFFFFFFFFFFFFFFFC9C0B7BA8851
          FFDFAAB5834CFFF7ECFDF1E2FCEFE1FCEFE1FCEFE1FDF1E2FFF8EDB5854FCCCC
          CCDCDCDCFFFFFFFFFFFF888F97C3CBD458606DB58349FFF2E3F7E4CEF6E2CCF6
          E2CBF5E2CBF6E4CEFEF1E2B28149B68651BFA07CFFFFFFFFFFFFEDE5DBBC8951
          A97B3CB4824AFDF0E0FEF9F1FFFFFFFFFFFFFFFFFFFEF8F0FCEEDEB07C43FFFD
          F4B68651CCCCCCDCDCDCC9C1B8BB8850FFE1A2B38048FDF0E2FFFFFF949697C5
          C6C7C2C4C5FFFFFFFCEFE0AE7A41FFF9EDB3824BB68651BF9F7B888F97C3CBD5
          58606DB58249FEF2E5FEF6ECFFFFFFFFFFFFFFFFFFFDF5EBFCF1E3AE7A40FFF8
          EBB17E46FFFDF4B68651EDE5DCBC8952A77F37B5814AFFF5EBF2D6B5F3D8B7F3
          D8B7F2D6B5F1D5B4FEF3E9AE7A40FFF8EDAF7C43FFF9EEB5844EC9C1B8BB8851
          FBD38DB48049FFFAF2F2D6B3AA763DCEA77ACCA477F1D4B1FFF8EFAE7A40FFFA
          EEAF7C43FFF8EDB5844E888F97C2CAD3565D6AB58047FFFEF8F0CFAAF2D1AEF2
          D2AEF1D0ACF0CEA9FFFDF6AE7A40FFFBF2AF7B42FFFAEFB5844EF2E9DEBA874F
          FFF6D7B48149FFFFFEFFFEF9FFFDF8FFFDF8FFFDF8FFFDF7FFFFFBAE7A40FFFE
          F6AF7B41FFFBF0B5844EFFFFFFD0B08CB88853B68651B2814AB17E46AF7B42AE
          793FAE793FAE793FAE793FC99B69FFFFFBAF7A41FFFCF4B4844EFFFFFFFFFFFF
          FFFFFFB78854FFF5DAB4824CFFFFFFFFFFFFFFFFFEFFFFFEFFFFFDFFFFFCFFFF
          FDAE7A40FFFFF8B4834DFFFFFFFFFFFFFFFFFFCFAF8CB78854B68651B3824BB2
          7F48B07C43AF7B41AF7A40AE7A40AE7A40C99B69FFFFFDB4834CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFB78854FFF5DAB4834CFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFFFFFFB5854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8CB88854B7
          8853B68550B5834DB4834CB4834CB4834CB4834CB5854FCEAE8A}
        ParentShowHint = False
        ShowHint = True
        OnClick = Bit_PantallaClick
      end
      object Bit_Printe: TSpeedButton
        Left = 2
        Top = 77
        Width = 27
        Height = 25
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
      end
      object SpeedButton6: TSpeedButton
        Left = 2
        Top = 102
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
  object Panel2: TPanel
    Left = 88
    Top = 40
    Width = 128
    Height = 140
    TabOrder = 4
    Visible = False
    object FactnoAsiento: TQuickRep
      Left = 4
      Top = 5
      Width = 816
      Height = 1056
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
      Page.PaperSize = Letter
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2794.000000000000000000
        100.000000000000000000
        2159.000000000000000000
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
        Width = 740
        Height = 132
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          349.250000000000000000
          1957.916666666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBText2: TQRDBText
          Left = 8
          Top = 11
          Width = 109
          Height = 25
          Size.Values = (
            66.145833333333330000
            21.166666666666670000
            29.104166666666670000
            288.395833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'COMPANIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 16
        end
        object QRDBText3: TQRDBText
          Left = 8
          Top = 35
          Width = 54
          Height = 22
          Size.Values = (
            58.208333333333330000
            21.166666666666670000
            92.604166666666670000
            142.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 8
          Top = 51
          Width = 39
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            134.937500000000000000
            103.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'CIUDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRLabel7: TQRLabel
          Left = 8
          Top = 69
          Width = 22
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            182.562500000000000000
            58.208333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Tel.'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 32
          Top = 71
          Width = 54
          Height = 17
          Size.Values = (
            44.979166666666670000
            84.666666666666670000
            187.854166666666700000
            142.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 8
        end
        object QRLabel8: TQRLabel
          Left = 8
          Top = 87
          Width = 28
          Height = 17
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            230.187500000000000000
            74.083333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'RNC'
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
        object QRDBText6: TQRDBText
          Left = 43
          Top = 87
          Width = 28
          Height = 17
          Size.Values = (
            44.979166666666670000
            113.770833333333300000
            230.187500000000000000
            74.083333333333330000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'RNC'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 260
          Top = 69
          Width = 220
          Height = 17
          Size.Values = (
            44.979166666666670000
            687.916666666666700000
            182.562500000000000000
            582.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taCenter
          AlignToBand = True
          AutoStretch = True
          Caption = 'REPORTE DE ASIENTO PENDIENTE'
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
        object QRLabel19: TQRLabel
          Left = 552
          Top = 16
          Width = 49
          Height = 17
          Size.Values = (
            44.979166666666670000
            1460.500000000000000000
            42.333333333333340000
            129.645833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'P'#225'gina :'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel26: TQRLabel
          Left = 552
          Top = 40
          Width = 49
          Height = 17
          Size.Values = (
            44.979166666666670000
            1460.500000000000000000
            105.833333333333300000
            129.645833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha  :'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRSysData5: TQRSysData
          Left = 608
          Top = 16
          Width = 46
          Height = 17
          Size.Values = (
            44.979166666666670000
            1608.666666666667000000
            42.333333333333340000
            121.708333333333400000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          Data = qrsPageNumber
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRSysData6: TQRSysData
          Left = 608
          Top = 40
          Width = 68
          Height = 17
          Size.Values = (
            44.979166666666670000
            1608.666666666667000000
            105.833333333333300000
            179.916666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          Data = qrsDateTime
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 341
          Top = 96
          Width = 58
          Height = 17
          Size.Values = (
            44.979166666666670000
            902.229166666666700000
            254.000000000000000000
            153.458333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taCenter
          AlignToBand = True
          Caption = 'QRLabel1'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 170
        Width = 740
        Height = 22
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333330000
          1957.916666666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRShape1: TQRShape
          Left = 1
          Top = 0
          Width = 737
          Height = 22
          Size.Values = (
            58.208333333333300000
            2.645833333333330000
            0.000000000000000000
            1949.979166666670000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Brush.Color = clSilver
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel27: TQRLabel
          Left = 307
          Top = 2
          Width = 68
          Height = 17
          Size.Values = (
            44.979166666666670000
            812.270833333333400000
            5.291666666666667000
            179.916666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Secuencia'
          Color = clSilver
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
        object QRLabel28: TQRLabel
          Left = 6
          Top = 2
          Width = 51
          Height = 17
          Size.Values = (
            44.979166666666670000
            15.875000000000000000
            5.291666666666667000
            134.937500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Nombre'
          Color = clSilver
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
        object QRLabel29: TQRLabel
          Left = 392
          Top = 2
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1037.166666666667000000
            5.291666666666667000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha'
          Color = clSilver
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
        object QRLabel30: TQRLabel
          Left = 482
          Top = 2
          Width = 73
          Height = 17
          Size.Values = (
            44.979166666666670000
            1275.291666666667000000
            5.291666666666667000
            193.145833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Documento'
          Color = clSilver
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
        object QRLabel31: TQRLabel
          Left = 683
          Top = 3
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1807.104166666667000000
            7.937500000000000000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Monto'
          Color = clSilver
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
        Top = 192
        Width = 740
        Height = 26
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          68.791666666666670000
          1957.916666666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText8: TQRDBText
          Left = 307
          Top = 4
          Width = 76
          Height = 17
          Size.Values = (
            44.979166666666670000
            812.270833333333400000
            10.583333333333330000
            201.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'SECUENCIA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText9: TQRDBText
          Left = 5
          Top = 4
          Width = 58
          Height = 17
          Size.Values = (
            44.979166666666670000
            13.229166666666670000
            10.583333333333330000
            153.458333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'NOMBRE'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText10: TQRDBText
          Left = 388
          Top = 4
          Width = 83
          Height = 17
          Size.Values = (
            44.979166666666670000
            1026.583333333333000000
            10.583333333333330000
            219.604166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'FECHAPAGO'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText28: TQRDBText
          Left = 476
          Top = 4
          Width = 84
          Height = 17
          Size.Values = (
            44.979166666666670000
            1259.416666666667000000
            10.583333333333330000
            222.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'DOCUMENTO'
          Mask = '##,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText1: TQRDBText
          Left = 619
          Top = 4
          Width = 104
          Height = 17
          Size.Values = (
            44.979166666666670000
            1637.770833333333000000
            10.583333333333330000
            275.166666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'MONTOPAGADO'
          Mask = '##,###,###.00'
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
        Top = 218
        Width = 740
        Height = 30
        Frame.DrawTop = True
        Frame.DrawBottom = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          79.375000000000000000
          1957.916666666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRLabel32: TQRLabel
          Left = 4
          Top = 8
          Width = 98
          Height = 17
          Size.Values = (
            44.979166666666670000
            10.583333333333330000
            21.166666666666670000
            259.291666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Total de ventas'
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
    end
  end
end
