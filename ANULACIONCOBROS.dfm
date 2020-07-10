object Frm_AnulacionCobros: TFrm_AnulacionCobros
  Left = 145
  Top = 178
  BorderStyle = bsSizeToolWin
  Caption = 'Kerensoft - Registro Anulaci'#242'n de Cobros'
  ClientHeight = 453
  ClientWidth = 703
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
  object Bevel5: TBevel
    Left = 0
    Top = 0
    Width = 657
    Height = 432
  end
  object Panel2: TPanel
    Left = 40
    Top = 136
    Width = 217
    Height = 209
    TabOrder = 2
    Visible = False
    object RepCobros1: TQuickRep
      Left = 8
      Top = 6
      Width = 793
      Height = 483
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
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        1278.000000000000000000
        50.000000000000000000
        2098.000000000000000000
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
      object QRBand2: TQRBand
        Left = 38
        Top = 19
        Width = 717
        Height = 126
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          333.375000000000000000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBText30: TQRDBText
          Left = 560
          Top = 70
          Width = 45
          Height = 17
          Size.Values = (
            44.979166666666670000
            1481.666666666667000000
            185.208333333333300000
            119.062500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'FECHA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRLabel33: TQRLabel
          Left = 496
          Top = 69
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1312.333333333333000000
            182.562500000000000000
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
        object QRLabel35: TQRLabel
          Left = 264
          Top = 16
          Width = 85
          Height = 20
          Size.Values = (
            52.916666666666660000
            698.500000000000000000
            42.333333333333340000
            224.895833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'QRLabel35'
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
        object QRLabel40: TQRLabel
          Left = 496
          Top = 91
          Width = 41
          Height = 17
          Size.Values = (
            44.979166666666670000
            1312.333333333333000000
            240.770833333333300000
            108.479166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Recibo'
          Color = clWhite
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRDBText38: TQRDBText
          Left = 559
          Top = 91
          Width = 76
          Height = 17
          Size.Values = (
            44.979166666666670000
            1479.020833333333000000
            240.770833333333300000
            201.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'SECUENCIA'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRExprMemo1: TQRExprMemo
          Left = 11
          Top = 69
          Width = 385
          Height = 52
          Size.Values = (
            137.583333333333300000
            29.104166666666670000
            182.562500000000000000
            1018.645833333333000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          RemoveBlankLines = False
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          Color = clWhite
          Lines.Strings = (
            '{Nombre} {Apellido}'
            '{Direccion}'
            '{Sector}')
          Transparent = False
          FontSize = 10
        end
      end
      object QRBand7: TQRBand
        Left = 38
        Top = 145
        Width = 717
        Height = 24
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          63.500000000000000000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRShape14: TQRShape
          Left = 0
          Top = -1
          Width = 716
          Height = 25
          Size.Values = (
            66.145833333333340000
            0.000000000000000000
            -2.645833333333333000
            1894.416666666667000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel41: TQRLabel
          Left = 11
          Top = 2
          Width = 47
          Height = 17
          Size.Values = (
            44.979166666666670000
            29.104166666666670000
            5.291666666666667000
            124.354166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Pagar'#233
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
        object QRLabel42: TQRLabel
          Left = 480
          Top = 2
          Width = 100
          Height = 17
          Size.Values = (
            44.979166666666670000
            1270.000000000000000000
            5.291666666666667000
            264.583333333333400000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha de cobro'
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
        object QRLabel43: TQRLabel
          Left = 656
          Top = 2
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1735.666666666667000000
            5.291666666666667000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Monto'
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
        object QRLabel44: TQRLabel
          Left = 376
          Top = 2
          Width = 33
          Height = 17
          Size.Values = (
            44.979166666666670000
            994.833333333333400000
            5.291666666666667000
            87.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Mora'
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
      object QRBand8: TQRBand
        Left = 38
        Top = 169
        Width = 717
        Height = 31
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          82.020833333333340000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText39: TQRDBText
          Left = 11
          Top = 6
          Width = 56
          Height = 17
          Size.Values = (
            44.979166666666670000
            29.104166666666670000
            15.875000000000000000
            148.166666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'PAGARE'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText40: TQRDBText
          Left = 482
          Top = 8
          Width = 54
          Height = 17
          Size.Values = (
            44.979166666666670000
            1275.291666666667000000
            21.166666666666670000
            142.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'FECHAS'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText41: TQRDBText
          Left = 664
          Top = 8
          Width = 31
          Height = 17
          Size.Values = (
            44.979166666666670000
            1756.833333333333000000
            21.166666666666670000
            82.020833333333340000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'Pago'
          Mask = 'RD$##,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText42: TQRDBText
          Left = 375
          Top = 8
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            992.187500000000000000
            21.166666666666670000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'MORA'
          Mask = 'RD$##,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRBand9: TQRBand
        Left = 38
        Top = 200
        Width = 717
        Height = 76
        Frame.DrawTop = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          201.083333333333300000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr4: TQRExpr
          Left = 530
          Top = 56
          Width = 168
          Height = 17
          Size.Values = (
            44.979166666666670000
            1402.291666666667000000
            148.166666666666700000
            444.500000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          Expression = 'SUM(PAGO - DESCUENTO)'
          Mask = '##,###,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel45: TQRLabel
          Left = 12
          Top = 6
          Width = 33
          Height = 17
          Size.Values = (
            44.979166666666670000
            31.750000000000000000
            15.875000000000000000
            87.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Total'
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
        object QRExpr5: TQRExpr
          Left = 339
          Top = 6
          Width = 77
          Height = 17
          Size.Values = (
            44.979166666666670000
            896.937500000000000000
            15.875000000000000000
            203.729166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          Expression = 'SUM(MORA)'
          Mask = 'RD$##,###,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRExpr6: TQRExpr
          Left = 622
          Top = 8
          Width = 76
          Height = 17
          Size.Values = (
            44.979166666666670000
            1645.708333333333000000
            21.166666666666670000
            201.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          Expression = 'SUM(PAGO)'
          Mask = 'RD$##,###,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel46: TQRLabel
          Left = 536
          Top = 6
          Width = 58
          Height = 17
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            15.875000000000000000
            153.458333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'SubTotal'
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
        object QRLabel47: TQRLabel
          Left = 536
          Top = 32
          Width = 67
          Height = 17
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            84.666666666666680000
            177.270833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Descuento'
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
        object QRLabel48: TQRLabel
          Left = 536
          Top = 56
          Width = 33
          Height = 17
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            148.166666666666700000
            87.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Total'
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
        object QRDBText43: TQRDBText
          Left = 617
          Top = 32
          Width = 81
          Height = 17
          Size.Values = (
            44.979166666666670000
            1632.479166666667000000
            84.666666666666680000
            214.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'DESCUENTO'
          Mask = '##,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRChildBand1: TQRChildBand
        Left = 38
        Top = 276
        Width = 717
        Height = 39
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          103.187500000000000000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRBand9
        PrintOrder = cboAfterParent
        object QRLabel49: TQRLabel
          Left = 20
          Top = 16
          Width = 92
          Height = 17
          Size.Values = (
            44.979166666666670000
            52.916666666666660000
            42.333333333333340000
            243.416666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Entregado Por'
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
        object QRLabel50: TQRLabel
          Left = 456
          Top = 16
          Width = 83
          Height = 17
          Size.Values = (
            44.979166666666670000
            1206.500000000000000000
            42.333333333333340000
            219.604166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Recibido Por'
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
      object QRBand10: TQRBand
        Left = 38
        Top = 315
        Width = 717
        Height = 40
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          105.833333333333300000
          1897.062500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRDBText44: TQRDBText
          Left = 325
          Top = 12
          Width = 66
          Height = 17
          Size.Values = (
            44.979166666666670000
            859.895833333333400000
            31.750000000000000000
            174.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taCenter
          AlignToBand = True
          Color = clWhite
          DataField = 'MENSAJE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
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
  object PageControl1: TPageControl
    Left = 3
    Top = 1
    Width = 652
    Height = 429
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 643
        Height = 336
      end
      object Bevel3: TBevel
        Left = 429
        Top = 31
        Width = 214
        Height = 69
      end
      object Bevel2: TBevel
        Left = 0
        Top = 103
        Width = 643
        Height = 3
      end
      object Label6: TLabel
        Left = 435
        Top = 39
        Width = 33
        Height = 13
        Caption = 'Fecha '
      end
      object Label14: TLabel
        Left = 14
        Top = 113
        Width = 51
        Height = 13
        Caption = 'Secuencia'
      end
      object Label17: TLabel
        Left = 14
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label18: TLabel
        Left = 14
        Top = 30
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label19: TLabel
        Left = 14
        Top = 52
        Width = 37
        Height = 13
        Caption = 'Apellido'
      end
      object Label20: TLabel
        Left = 14
        Top = 79
        Width = 39
        Height = 13
        Caption = 'Balance'
      end
      object Label21: TLabel
        Left = 230
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label5: TLabel
        Left = 435
        Top = 59
        Width = 43
        Height = 13
        Caption = 'Cobrador'
      end
      object Bevel6: TBevel
        Left = 345
        Top = 355
        Width = 298
        Height = 45
      end
      object Label1: TLabel
        Left = 496
        Top = 380
        Width = 30
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 496
        Top = 360
        Width = 46
        Height = 13
        Caption = 'Sub Total'
      end
      object Label2: TLabel
        Left = 438
        Top = 80
        Width = 34
        Height = 13
        Caption = 'Recibo'
      end
      object FECHA1: TDateTimePicker
        Left = 499
        Top = 34
        Width = 140
        Height = 21
        Date = 37211.995050231490000000
        Time = 37211.995050231490000000
        Color = clWhite
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 81
        Top = 112
        Width = 91
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CONTDEBITOCOBRO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 277
        Top = 79
        Width = 148
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CLIENTE
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 79
        Top = 79
        Width = 146
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CLIENTE
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 79
        Top = 31
        Width = 346
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CLIENTE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 79
        Top = 8
        Width = 82
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CLIENTE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 79
        Top = 56
        Width = 346
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = clWhite
        DataSource = Dtm.DTS_CLIENTE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 499
        Top = 55
        Width = 140
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        DataSource = Dtm.DTS_CONTDEBITOCOBRO
        KeyField = 'CODIGO'
        ListField = 'Nombre'
        ListSource = Dtm.DTS_COBRADOR
        TabOrder = 3
      end
      object Dbg_DebitoCobro: TDBGrid
        Left = 0
        Top = 135
        Width = 644
        Height = 217
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = Dbg_DebitoCobroCellClick
        OnDrawColumnCell = Dbg_DebitoCobroDrawColumnCell
        OnDblClick = Dbg_DebitoCobroDblClick
        OnEditButtonClick = Dbg_DebitoCobroEditButtonClick
        OnKeyDown = Dbg_DebitoCobroKeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'PAGARE'
            ReadOnly = True
            Title.Caption = 'Cuota'
            Width = 69
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'FECHAPAGARE'
            ReadOnly = True
            Title.Caption = 'Fecha'
            Width = 96
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'DEBE'
            ReadOnly = True
            Title.Caption = 'D'#233'bito'
            Width = 119
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'HABER'
            ReadOnly = True
            Title.Caption = 'Cr'#233'dito'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDITO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Title.Caption = 'Aplicado'
            Width = 116
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'IMPORTE'
            ReadOnly = True
            Title.Caption = 'Importe'
            Width = 92
            Visible = True
          end>
      end
      object COMENTARIO: TRichEdit
        Left = 0
        Top = 355
        Width = 342
        Height = 44
        Hint = 'Comentarios'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Zoom = 100
      end
      object IMPORTE: TEdit
        Left = 549
        Top = 377
        Width = 93
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 12
      end
      object SUBTOTAL: TEdit
        Left = 549
        Top = 356
        Width = 93
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        TabOrder = 11
      end
      object DBEdit1: TDBEdit
        Left = 499
        Top = 77
        Width = 140
        Height = 21
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataSource = Dtm.DTS_CONTDEBITOCOBRO
        ReadOnly = True
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pendientes'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Dbg_Pendientes: TDBGrid
        Left = 0
        Top = 1
        Width = 643
        Height = 397
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = Dbg_PendientesDrawColumnCell
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FACTURA'
            Title.Caption = 'Factura'
            Width = 55
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'PAGARE'
            Title.Caption = 'Pagar'#233
            Width = 60
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FECHAVENCE'
            Title.Caption = 'Fecha Vence'
            Width = 93
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'DEBE'
            Title.Caption = 'Debito'
            Width = 91
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'HABER'
            Title.Caption = 'Haber'
            Width = 92
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'RESULTADO'
            Title.Caption = 'Pendiente'
            Width = 89
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ESTATUS'
            Title.Caption = 'Estatus'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHACOBRO'
            Title.Caption = 'Fecha Cobro'
            Width = 69
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pagadas'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Dbg_Pagados: TDBGrid
        Left = 0
        Top = 1
        Width = 645
        Height = 398
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = Dbg_PagadosDrawColumnCell
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FACTURA'
            Title.Caption = 'Factura'
            Width = 49
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'PAGARE'
            Title.Caption = 'Pagare'
            Width = 52
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FECHAVENCE'
            Title.Caption = 'Fecha Vence'
            Width = 69
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'DEBE'
            Title.Caption = 'Debe'
            Width = 58
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'HABER'
            Title.Caption = 'Haber'
            Width = 53
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'MORA'
            Title.Caption = 'Mora'
            Width = 51
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'PAGO'
            Title.Caption = 'Pago'
            Width = 49
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 60
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha Pago'
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'RECIBO_1'
            Title.Caption = 'Anulado'
            Width = 57
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FECHA_1'
            Title.Caption = 'Fecha Anula'
            Width = 65
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cr'#233'dito'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Dbg_Credito: TDBGrid
        Left = -1
        Top = 1
        Width = 644
        Height = 397
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = Dbg_CreditoDrawColumnCell
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'PAGARE'
            Title.Caption = 'Pagar'#233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FACTURA'
            Title.Caption = 'Factura'
            Width = 96
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'FECHAPAGARE'
            Title.Caption = 'Fecha Vence'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 77
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'DEBE'
            Title.Caption = 'Debe'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HABER'
            Title.Caption = 'Haber'
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'CREDITO'
            Title.Caption = 'Cr'#233'dito'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Caption = 'Fecha'
            Width = 79
            Visible = True
          end>
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 658
    Top = 0
    Width = 39
    Height = 432
    Align = alCustom
    Bands = <
      item
        Control = CoolBar2
        ImageIndex = -1
        MinHeight = 35
        Width = 426
      end>
    Vertical = True
    object CoolBar2: TCoolBar
      Left = 0
      Top = 11
      Width = 35
      Height = 417
      Bands = <>
      object SpeedButton1: TSpeedButton
        Left = 2
        Top = 2
        Width = 27
        Height = 25
        Hint = 'Ayuda'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
      end
      object Bit_Buscar: TSpeedButton
        Left = 2
        Top = 27
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
        OnClick = Bit_BuscarClick
      end
      object Bit_Grabar: TSpeedButton
        Left = 1
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
        Enabled = False
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
      object Bit_Eliminar: TSpeedButton
        Left = 2
        Top = 105
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
        OnClick = Bit_EliminarClick
      end
      object Bit_Asentar: TSpeedButton
        Left = 2
        Top = 135
        Width = 27
        Height = 25
        Hint = 'Asentar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          D6090000424DD609000000000000360000002800000025000000160000000100
          180000000000A0090000C40E0000C40E000000000000000000001DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B5DCDCDC
          CCCCCCCCCCCCCCCCCCDFDFDFE7E7E7D2D2D2CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCD2D2D2E5E5E51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5E5E5E5D2
          D2D2CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD2D2D2E5E5E51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B500EDEDED9F9F9F8A8A8B8A8B8B898A8AA3A3A3AEAEAE8F
          8F8F6F6F6F5A5A598E8F8F8A8A8A8888888F8F90ABABABD0D0D01DE6B51DE6B5
          1DE6B51DE6B51DE6B5D0D0D0AAAAAA8F8F8F8787888989898A8A8A898A8A8888
          888F8F90ABABABD0D0D01DE6B51DE6B51DE6B51DE6B51DE6B500B7B7B7A7A6A5
          DBDAD7C1BDBBB1AEAB92919277777683818092908F908D8CA6A2A0B9B7B5D2CF
          CDC5C4C39999989090901DE6B51DE6B51DE6B51DE6B51DE6B5909090979796CC
          CBCAE1E0DEB9B6B5A29E9CB9B7B5D2CFCDC5C4C39999989090901DE6B51DE6B5
          1DE6B51DE6B51DE6B500919191C6C5C4D1D0CECACAC7B8B5B3AAA8A58B8A8A9E
          9B999592906A6A69A4A19E6E6C6BCECCCAE1E0DEC3C2C08989891DE6B51DE6B5
          1DE6B51DE6B51DE6B5898989BFBDBAE9E8E5DDDCDB6C6C6BA19E9C6D6B6BCECC
          CAE1E0DEC3C2C08989891DE6B51DE6B51DE6B51DE6B51DE6B5008A8A8A908E8B
          8B8986C9C7C5C4C2C0BCBAB8898A8A605F5E9F9D9CBDBAB9A29F9CB8B6B4CECC
          CA878686C7C4C28888881DE6B51DE6B51DE6B51DE6B51DE6B5888888C1BFBC8D
          8C8CDDDCDBB7B4B3A19E9CB8B6B4CECCCA878686C7C4C28888881DE6B51DE6B5
          1DE6B51DE6B51DE6B500888889B6B3B2C4C2C0C1BFBDD1CFCDC1BEBC878888A3
          A19FC2C0BF706F6EA29F9C6D6B6BCECCCAE1E0DEC6C4C18888881DE6B51DE6B5
          1DE6B51DE6B51DE6B5888888C1BEBCE8E8E5DDDCDB6C6C6BA19E9C6D6B6BCECC
          CAE1E0DEC6C4C18888881DE6B51DE6B51DE6B51DE6B51DE6B500868687E8E7E7
          B9B7B5B8B7B4DDDCDBC6C3C1868787615F5FDAD8D7B9B6B5A19E9CB8B6B4CFCD
          CA878786C6C4C28888881DE6B51DE6B51DE6B51DE6B51DE6B5888888C1BEBC8D
          8C8CDDDCDBB7B4B3A19E9CB8B6B4CFCDCA878786C6C4C28888881DE6B51DE6B5
          1DE6B51DE6B51DE6B500868687F2F1EFEEEDEBB1ADABE9E9E9CCCAC8848485BF
          BDBBE1E0DF6D6C6BA19E9C6D6B6ACECCCAE1E0DEC6C4C18888881DE6B51DE6B5
          1DE6B51DE6B51DE6B5888888C1BFBCE9E9E6DDDCDB6C6C6BA19E9C6E6C6BCFCD
          CBE1E0DEC6C4C28888881DE6B51DE6B51DE6B51DE6B51DE6B500939494ACA8A7
          B0ADABBBB8B6EBEBEBB9B8B58786867F7E7DDDDCDBB5B1B09E9A98B4B2B0CDCB
          C9878685C6C4C18888881DE6B51DE6B51DE6B51DE6B51DE6B5898989C3C0BE91
          9090E1E0DFB9B6B5A19E9CB9B6B4D2D0CD8B8A89C9C6C48989891DE6B51DE6B5
          1DE6B51DE6B51DE6B500D6D6D6999897B2AEACE7E5E4DDDCDA919191ACABAAE7
          E6E5D7D8D7AFACAC989594AEADACC8C7C6DCDCDAC4C2BF8787881DE6B51DE6B5
          1DE6B51DE6B51DE6B58A8A8AACAAA9A2A2A18181818484858586878485858282
          83A0A09FAFAEAC8A8A8A1DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B5B0B0B0
          8889898B8C8C8B8B8B848484CAC6C6ECEAE6F2EFE9EFF2F8F0F4FAEFF3F9EEF1
          F6E7E8EBCCCBCA8787871DE6B51DE6B51DE6B51DE6B51DE6B58A8A8A929191C3
          C2C1D5D3D2B2AEAD999693B1AEACC5C4C2BABABA92929189898A1DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B5868686ECECEB8E
          8782CCAA79A0752DA77C39B78944C5974DC5A371E6E6E68687881DE6B51DE6B5
          1DE6B51DE6B51DE6B5888888C3C1BEE7E6E5EDECEBF2F2F2F8F7F8FBFCFBFCFC
          FBF6F5F4CBCAC8898A8A1DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B51DE6B5878888E9E9E7747679D6B994EBB356E0A544E3AB4EE9AF
          51A47534DDDEDE8888891DE6B51DE6B51DE6B51DE6B51DE6B5878787E1DFDED4
          D2D0CDCBC9CECCCACDCBC9CDCBC9CCCAC8D9D8D6F7F5F58889891DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B59393939F9E9FC6
          C7C9EAE3D9FFD28DD6962ADD9F38BC8129A6937AA0A1A59394941DE6B51DE6B5
          1DE6B51DE6B51DE6B5888888C8C5C3C3C1BFC3C1BF898785C2C0BE898784C2C0
          BDC2C0BEC7C4C28888881DE6B51DE6B51DE6B51DE6B51DE6B5001DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B5C3C3C39596977F848DEBD1B0DC9E36CE8B1E9462
          1F969CA5C3C4C51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5B0B0B0989797AE
          ABA9B7B4B2DAD9D8D9D8D7D9D9D8BFBDBAADABA8989797B0B0B01DE6B51DE6B5
          1DE6B51DE6B51DE6B5001DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B5F9E8CDCB8000D08809E9D0A81DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B5D5D5D5A9AAAA878787A0A09F9F9F9EA0A09F8D8D
          8DA9A9A9D5D5D51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B500}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = Bit_AsentarClick
      end
      object Bit_Printe: TSpeedButton
        Left = 2
        Top = 160
        Width = 27
        Height = 25
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
        OnClick = Bit_PrinteClick
      end
      object Bit_Close: TSpeedButton
        Left = 1
        Top = 219
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
        OnClick = Bit_CloseClick
      end
      object Bit_SubMenu: TSpeedButton
        Left = 2
        Top = 188
        Width = 27
        Height = 25
        Hint = 'Herramientas'
        Flat = True
        Glyph.Data = {
          A6080000424DA608000000000000360000002800000028000000120000000100
          18000000000070080000C40E0000C40E000000000000000000001DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B5FEFDFD6252494F3F334F3F3364554C
          FEFEFE1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B51DE6B5FEFDFD6252494F3F334F3F3364554CFEFEFE1D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          ECEBE9D1CDC9FDFDFDCECAC6514438D8D5D2D7D3D1504335D1CDCAFDFDFDCFCB
          C8EEECEB1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5ECEBE9D1
          CDC9FDFDFDCECAC6514438D8D5D2D7D3D1504335D1CDCAFDFDFDCFCBC8EEECEB
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5F9F8F871655C5040345D4F
          44504335958A84FFFFFFFFFFFF9287815144385D4C4150403473685DF9F9F91D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B5F9F8F871655C5040345D4F44504335
          958A84FFFFFFFFFFFF9287815144385D4C4150403473685DF9F9F91DE6B51DE6
          B51DE6B51DE6B51DE6B5FEFEFE8A7F776A5C51EEEDECC7C2BEDAD6D4FFFFFFFF
          FFFFFFFFFFFFFFFFD8D5D2C8C3BFEEECEB6858508C837A1DE6B51DE6B51DE6B5
          1DE6B51DE6B5FEFEFE8A7F776A5C51EEEDECC7C2BEDAD6D4FFFFFFFFFFFFFFFF
          FFFFFFFFD8D5D2C8C3BFEEECEB6858508C837A1DE6B51DE6B51DE6B51DE6B51D
          E6B5F7F7F66155489E968EFFFFFFFFFFFFFFFFFFE4E2E0ABA49EACA59FE5E2E1
          FFFFFFFFFFFFFFFFFF9B928A64554CF9F8F81DE6B51DE6B51DE6B51DE6B5F7F7
          F66155489E968EFFFFFFFFFFFFFFFFFFE4E2E0ABA49EACA59FE5E2E1FFFFFFFF
          FFFFFFFFFF9B928A64554CF9F8F81DE6B51DE6B51DE6B51DE6B5FFFFFFCAC5C1
          504335EEEDECFFFFFFC6C1BD685C51B4AEA9B3ACA7695B51C9C4C1FFFFFFECEA
          E9524034CDC9C51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5CAC5C1504335EE
          EDECFFFFFFC6C1BD685C51B4AEA9B3ACA7695B51C9C4C1FFFFFFECEAE9524034
          CDC9C51DE6B51DE6B51DE6B51DE6B51DE6B5FFFFFFB7B0AB564739FCFBFBFEFE
          FE6456494CB1224CB1224CB1224CB12266584DFFFFFFFAFAF9544239B9B3AE1D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B5B7B0AB564739FCFBFBFEFEFE645649
          241CED241CED241CED241CED66584DFFFFFFFAFAF9544239B9B3AE1DE6B51DE6
          B51DE6B51DE6B51DE6B5857A71564739B2ABA5FFFFFFF5F4F466584D4CB1224C
          B1224CB1224CB122615548F8F7F7FFFFFFB0A8A3534638887D751DE6B51DE6B5
          1DE6B51DE6B5857A71564739B2ABA5FFFFFFF5F4F466584D241CED241CED241C
          ED241CED615548F8F7F7FFFFFFB0A8A3534638887D751DE6B51DE6B51DE6B51D
          E6B573685DA8A09AFFFFFFFFFFFFFFFFFF6C5F554CB1224CB1224CB1224CB122
          6C6155FFFFFFFFFFFFFFFFFFA59D96786B611DE6B51DE6B51DE6B51DE6B57368
          5DA8A09AFFFFFFFFFFFFFFFFFF6C5F55241CED241CED241CED241CED6C6155FF
          FFFFFFFFFFFFFFFFA59D96786B611DE6B51DE6B51DE6B51DE6B59F9690786B61
          DBD8D5F5F4F3FFFFFFDAD6D466594C958C85958D8566594CDBD8D5FFFFFFF5F4
          F3DBD8D5766860A39A941DE6B51DE6B51DE6B51DE6B59F9690786B61DBD8D5F5
          F4F3FFFFFFDAD6D466594C958C85958D8566594CDBD8D5FFFFFFF5F4F3DBD8D5
          766860A39A941DE6B51DE6B51DE6B51DE6B5D0CCC9645649504335695B51F4F3
          F2FFFFFFF7F6F5CBC6C2C9C4C1F7F6F5FFFFFFF3F1F166594C50433564554CD3
          CFCC1DE6B51DE6B51DE6B51DE6B5D0CCC9645649504335695B51F4F3F2FFFFFF
          F7F6F5CBC6C2C9C4C1F7F6F5FFFFFFF3F1F166594C50433564554CD3CFCC1DE6
          B51DE6B51DE6B51DE6B51DE6B51DE6B5F9F9F9685C51A79F99FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFA49C956A5E54FAFAF91DE6B51DE6B51DE6B51DE6B5
          1DE6B51DE6B51DE6B51DE6B5F9F9F9685C51A79F99FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFA49C956A5E54FAFAF91DE6B51DE6B51DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B56F6259B2ABA6FFFFFFEAE8E69C938D9D948DEBE9E8
          FFFFFFAFA8A274675D1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B56F6259B2ABA6FFFFFFEAE8E69C938D9D948DEBE9E8FFFFFFAF
          A8A274675D1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5
          1DE6B57F746A544239938A82645649786B61766A6163554D9389815144388177
          6D1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B57F
          746A544239938A82645649786B61766A6163554D93898151443881776D1DE6B5
          1DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5D4D0
          CD81776D8E847CFCFCFCFCFBFB8C8179837870D6D2CF1DE6B51DE6B51DE6B51D
          E6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B51DE6B5D4D0CD81776D
          8E847CFCFCFCFCFBFB8C8179837870D6D2CF1DE6B51DE6B51DE6B51DE6B51DE6
          B51DE6B51DE6B51DE6B5}
        NumGlyphs = 2
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 703
    Height = 19
    Panels = <>
  end
  object Panel6: TPanel
    Left = 968
    Top = 200
    Width = 281
    Height = 217
    TabOrder = 4
    Visible = False
    object Grupo5: TQuickRep
      Left = 10
      Top = 4
      Width = 785
      Height = 495
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
      Page.PaperSize = Custom
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        1309.687500000000000000
        50.000000000000000000
        2076.979166666667000000
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
      object QRBand25: TQRBand
        Left = 38
        Top = 19
        Width = 709
        Height = 179
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          473.604166666666700000
          1875.895833333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBText94: TQRDBText
          Left = 594
          Top = 78
          Width = 76
          Height = 17
          Size.Values = (
            44.979166666666670000
            1571.625000000000000000
            206.375000000000000000
            201.083333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
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
        object QRLabel26: TQRLabel
          Left = 506
          Top = 33
          Width = 139
          Height = 26
          Size.Values = (
            68.791666666666680000
            1338.791666666667000000
            87.312500000000000000
            367.770833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'RECIBO NULO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 16
        end
        object QRLabel12: TQRLabel
          Left = 508
          Top = 57
          Width = 165
          Height = 20
          Frame.DrawTop = True
          Frame.Width = 2
          Size.Values = (
            52.916666666666670000
            1344.083333333333000000
            150.812500000000000000
            436.562500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = '                                         '
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
        object QRLabel3: TQRLabel
          Left = 506
          Top = 77
          Width = 69
          Height = 17
          Size.Values = (
            44.979166666666670000
            1338.791666666667000000
            203.729166666666700000
            182.562500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Secuencia'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 594
          Top = 95
          Width = 43
          Height = 18
          Size.Values = (
            47.625000000000000000
            1571.625000000000000000
            251.354166666666700000
            113.770833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRSysData1: TQRSysData
          Left = 594
          Top = 115
          Width = 53
          Height = 18
          Size.Values = (
            47.625000000000000000
            1571.625000000000000000
            304.270833333333300000
            140.229166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          Data = qrsPageNumber
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 506
          Top = 115
          Width = 37
          Height = 17
          Size.Values = (
            44.979166666666670000
            1338.791666666667000000
            304.270833333333300000
            97.895833333333320000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'P'#225'gina'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
        object QRLabel6: TQRLabel
          Left = 506
          Top = 95
          Width = 40
          Height = 17
          Size.Values = (
            44.979166666666670000
            1338.791666666667000000
            251.354166666666700000
            105.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Fecha'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRDBText10: TQRDBText
          Left = 16
          Top = 7
          Width = 87
          Height = 20
          Size.Values = (
            52.916666666666670000
            42.333333333333330000
            18.520833333333330000
            230.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'COMPANIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 12
        end
        object QRDBText11: TQRDBText
          Left = 16
          Top = 29
          Width = 433
          Height = 78
          Size.Values = (
            206.375000000000000000
            42.333333333333340000
            76.729166666666680000
            1145.645833333333000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          Color = clWhite
          DataSet = Dtm.TBL_COMPANIA
          DataField = 'DIRECCION'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRExprMemo2: TQRExprMemo
          Left = 15
          Top = 109
          Width = 435
          Height = 62
          Size.Values = (
            164.041666666666700000
            39.687500000000000000
            288.395833333333400000
            1150.937500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          RemoveBlankLines = False
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            'Cliente : {Codigo} {Nombre} {Apellido}'
            '              {Direccion}, {Sector}'
            '              {Telefono}'
            '')
          ParentFont = False
          Transparent = False
          FontSize = 10
        end
      end
      object QRBand26: TQRBand
        Left = 38
        Top = 198
        Width = 709
        Height = 24
        Frame.DrawTop = True
        Frame.DrawBottom = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          63.500000000000000000
          1875.895833333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRLabel124: TQRLabel
          Left = 16
          Top = 2
          Width = 49
          Height = 17
          Size.Values = (
            44.979166666666670000
            42.333333333333330000
            5.291666666666667000
            129.645833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Factura'
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
        object QRLabel128: TQRLabel
          Left = 613
          Top = 3
          Width = 47
          Height = 17
          Size.Values = (
            44.979166666666670000
            1621.895833333333000000
            7.937500000000000000
            124.354166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Cr'#233'dito'
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
        object QRLabel1: TQRLabel
          Left = 184
          Top = 2
          Width = 38
          Height = 17
          Size.Values = (
            44.979166666666670000
            486.833333333333300000
            5.291666666666667000
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
        object QRLabel2: TQRLabel
          Left = 304
          Top = 2
          Width = 45
          Height = 17
          Size.Values = (
            44.979166666666670000
            804.333333333333200000
            5.291666666666667000
            119.062500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Recibo'
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
      object QRBand27: TQRBand
        Left = 38
        Top = 222
        Width = 709
        Height = 20
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          52.916666666666670000
          1875.895833333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText106: TQRDBText
          Left = 606
          Top = 2
          Width = 55
          Height = 17
          Size.Values = (
            44.979166666666670000
            1603.375000000000000000
            5.291666666666667000
            145.520833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'CREDITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Mask = '##,###,###.00'
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 9
        end
        object QRDBText95: TQRDBText
          Left = 14
          Top = 2
          Width = 56
          Height = 16
          Size.Values = (
            42.333333333333330000
            37.041666666666670000
            5.291666666666667000
            148.166666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'FACTURA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 9
        end
        object QRDBText9: TQRDBText
          Left = 184
          Top = 0
          Width = 56
          Height = 17
          Size.Values = (
            44.979166666666670000
            486.833333333333300000
            0.000000000000000000
            148.166666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'PAGARE'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 304
          Top = 0
          Width = 50
          Height = 17
          Size.Values = (
            44.979166666666670000
            804.333333333333200000
            0.000000000000000000
            132.291666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataField = 'RECIBO'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRBand28: TQRBand
        Left = 38
        Top = 242
        Width = 709
        Height = 78
        Frame.DrawTop = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          206.375000000000000000
          1875.895833333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr13: TQRExpr
          Left = 574
          Top = 3
          Width = 89
          Height = 17
          Size.Values = (
            44.979166666666670000
            1518.708333333333000000
            7.937500000000000000
            235.479166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          Expression = 'SUM(CREDITO)'
          Mask = '##,###,###.00'
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 9
        end
        object QRLabel131: TQRLabel
          Left = 469
          Top = 2
          Width = 62
          Height = 17
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            5.291666666666667000
            164.041666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Sub-Total'
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
        object QRLabel132: TQRLabel
          Left = 469
          Top = 38
          Width = 33
          Height = 17
          Size.Values = (
            44.979166666666670000
            1240.895833333333000000
            100.541666666666700000
            87.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Total'
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
        object QRDBText8: TQRDBText
          Left = 613
          Top = 40
          Width = 48
          Height = 17
          Size.Values = (
            44.979166666666670000
            1621.895833333333000000
            105.833333333333300000
            127.000000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = Dtm.TBL_CONSULTA
          DataField = 'MONTO'
          Mask = '##,###,###.00'
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRBand1: TQRBand
        Left = 38
        Top = 320
        Width = 709
        Height = 40
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          105.833333333333300000
          1875.895833333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbGroupFooter
        object QRLabel134: TQRLabel
          Left = 40
          Top = 3
          Width = 136
          Height = 17
          Frame.DrawTop = True
          Size.Values = (
            44.979166666666670000
            105.833333333333300000
            7.937500000000000000
            359.833333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Entregado Por           '
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
        object QRLabel133: TQRLabel
          Left = 510
          Top = 3
          Width = 150
          Height = 17
          Frame.DrawTop = True
          Size.Values = (
            44.979166666666670000
            1349.375000000000000000
            7.937500000000000000
            396.875000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Recibido por                 '
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
  object PopupMenu1: TPopupMenu
    Left = 309
    Top = 84
    object Buscar1: TMenuItem
      Caption = 'Buscar'
    end
    object Agregar1: TMenuItem
      Caption = 'Agregar'
    end
  end
end
