object Form1: TForm1
  Left = 62
  Top = 72
  AlphaBlendValue = 250
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Molator 0.7... de la Se'#241'orita Pepis'
  ClientHeight = 468
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 24
    Top = 305
    Width = 55
    Height = 13
    Caption = 'Reactivo 5:'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 687
    Height = 435
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Calculos'
      object SpeedButton1: TSpeedButton
        Left = 456
        Top = 168
        Width = 41
        Height = 25
        Hint = 'Calcular Rto teorico'
        Caption = '----->'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 3
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 1
        OnClick = SpeedButton1Click
      end
      object GBox: TGroupBox
        Left = 8
        Top = 68
        Width = 441
        Height = 253
        Caption = 'Reactivos'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 44
          Width = 49
          Height = 13
          Caption = 'P. Partida:'
        end
        object Label2: TLabel
          Left = 8
          Top = 65
          Width = 55
          Height = 13
          Caption = 'Reactivo 1:'
        end
        object Label3: TLabel
          Left = 8
          Top = 87
          Width = 55
          Height = 13
          Caption = 'Reactivo 2:'
        end
        object Label4: TLabel
          Left = 8
          Top = 109
          Width = 55
          Height = 13
          Caption = 'Reactivo 3:'
        end
        object Label5: TLabel
          Left = 8
          Top = 131
          Width = 55
          Height = 13
          Caption = 'Reactivo 4:'
        end
        object Label6: TLabel
          Left = 8
          Top = 153
          Width = 55
          Height = 13
          Caption = 'Reactivo 5:'
        end
        object Label7: TLabel
          Left = 8
          Top = 207
          Width = 62
          Height = 13
          Caption = 'Disolvente 1:'
        end
        object Label8: TLabel
          Left = 96
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object Label9: TLabel
          Left = 176
          Top = 24
          Width = 26
          Height = 13
          Caption = 'M.W.'
        end
        object Label10: TLabel
          Left = 216
          Top = 24
          Width = 36
          Height = 13
          Caption = 'd (g/ml)'
        end
        object Label11: TLabel
          Left = 272
          Top = 24
          Width = 12
          Height = 13
          Caption = 'eq'
        end
        object LEscala: TLabel
          Left = 336
          Top = 24
          Width = 27
          Height = 13
          Caption = 'mg/ul'
        end
        object Lmmol: TLabel
          Left = 392
          Top = 24
          Width = 24
          Height = 13
          Caption = 'mmol'
        end
        object Label14: TLabel
          Left = 220
          Top = 208
          Width = 39
          Height = 13
          Caption = 'ml/mmol'
        end
        object Lml: TLabel
          Left = 388
          Top = 208
          Width = 10
          Height = 13
          Caption = 'ml'
        end
        object Label13: TLabel
          Left = 8
          Top = 175
          Width = 55
          Height = 13
          Caption = 'Reactivo 6:'
        end
        object Label15: TLabel
          Left = 8
          Top = 231
          Width = 62
          Height = 13
          Caption = 'Disolvente 2:'
        end
        object Label18: TLabel
          Left = 220
          Top = 232
          Width = 39
          Height = 13
          Caption = 'ml/mmol'
        end
        object Label19: TLabel
          Left = 388
          Top = 232
          Width = 10
          Height = 13
          Caption = 'ml'
        end
        object Mol1: TEdit
          Left = 182
          Top = 40
          Width = 45
          Height = 21
          TabOrder = 0
        end
        object Mol2: TEdit
          Left = 182
          Top = 61
          Width = 45
          Height = 21
          TabOrder = 1
        end
        object Mol3: TEdit
          Left = 182
          Top = 83
          Width = 45
          Height = 21
          TabOrder = 2
        end
        object Mol4: TEdit
          Left = 182
          Top = 105
          Width = 45
          Height = 21
          TabOrder = 3
        end
        object Mol5: TEdit
          Left = 182
          Top = 127
          Width = 45
          Height = 21
          TabOrder = 4
        end
        object Mol6: TEdit
          Left = 182
          Top = 149
          Width = 45
          Height = 21
          TabOrder = 5
        end
        object Mol8: TEdit
          Left = 182
          Top = 203
          Width = 35
          Height = 21
          TabOrder = 6
        end
        object Den1: TEdit
          Left = 228
          Top = 40
          Width = 35
          Height = 21
          TabOrder = 7
        end
        object Den2: TEdit
          Left = 228
          Top = 61
          Width = 35
          Height = 21
          TabOrder = 8
        end
        object Den3: TEdit
          Left = 228
          Top = 83
          Width = 35
          Height = 21
          TabOrder = 9
        end
        object Den4: TEdit
          Left = 228
          Top = 105
          Width = 35
          Height = 21
          TabOrder = 10
        end
        object Den5: TEdit
          Left = 228
          Top = 127
          Width = 35
          Height = 21
          TabOrder = 11
        end
        object Den6: TEdit
          Left = 228
          Top = 149
          Width = 35
          Height = 21
          TabOrder = 12
        end
        object SpinButton1: TSpinButton
          Left = 296
          Top = 40
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq1
          TabOrder = 13
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object eq1: TEdit
          Left = 264
          Top = 40
          Width = 30
          Height = 21
          TabOrder = 14
          Text = '1'
        end
        object eq2: TEdit
          Left = 264
          Top = 61
          Width = 30
          Height = 21
          TabOrder = 15
          Text = '1'
        end
        object eq3: TEdit
          Left = 264
          Top = 83
          Width = 30
          Height = 21
          TabOrder = 16
          Text = '1'
        end
        object eq4: TEdit
          Left = 264
          Top = 105
          Width = 30
          Height = 21
          TabOrder = 17
          Text = '1'
        end
        object eq5: TEdit
          Left = 264
          Top = 127
          Width = 30
          Height = 21
          TabOrder = 18
          Text = '1'
        end
        object eq6: TEdit
          Left = 264
          Top = 149
          Width = 30
          Height = 21
          TabOrder = 19
          Text = '1'
        end
        object SpinButton2: TSpinButton
          Left = 296
          Top = 61
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq2
          TabOrder = 20
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object SpinButton3: TSpinButton
          Left = 296
          Top = 83
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq3
          TabOrder = 21
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object SpinButton4: TSpinButton
          Left = 296
          Top = 105
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq4
          TabOrder = 22
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object SpinButton5: TSpinButton
          Left = 296
          Top = 127
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq5
          TabOrder = 23
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object SpinButton6: TSpinButton
          Left = 296
          Top = 149
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq6
          TabOrder = 24
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object Panel1: TPanel
          Left = 317
          Top = 16
          Width = 4
          Height = 185
          TabOrder = 25
        end
        object mg1: TEdit
          Left = 328
          Top = 40
          Width = 50
          Height = 21
          TabOrder = 26
          OnKeyPress = mg1KeyPress
        end
        object mg2: TEdit
          Tag = 2
          Left = 328
          Top = 61
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 27
          OnClick = mg2Click
          OnMouseDown = mg2MouseDown
        end
        object mg3: TEdit
          Tag = 2
          Left = 328
          Top = 83
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 28
        end
        object mg4: TEdit
          Tag = 2
          Left = 328
          Top = 105
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 29
        end
        object mg5: TEdit
          Tag = 2
          Left = 328
          Top = 127
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 30
        end
        object mg6: TEdit
          Tag = 2
          Left = 328
          Top = 149
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 31
        end
        object mg8: TEdit
          Tag = 2
          Left = 328
          Top = 203
          Width = 57
          Height = 21
          TabOrder = 32
        end
        object mmol1: TEdit
          Left = 379
          Top = 40
          Width = 50
          Height = 21
          TabOrder = 33
        end
        object mmol2: TEdit
          Left = 379
          Top = 61
          Width = 50
          Height = 21
          TabOrder = 34
        end
        object mmol3: TEdit
          Left = 379
          Top = 83
          Width = 50
          Height = 21
          TabOrder = 35
        end
        object mmol4: TEdit
          Left = 379
          Top = 105
          Width = 50
          Height = 21
          TabOrder = 36
        end
        object mmol5: TEdit
          Left = 379
          Top = 127
          Width = 50
          Height = 21
          TabOrder = 37
        end
        object mmol6: TEdit
          Left = 379
          Top = 149
          Width = 50
          Height = 21
          TabOrder = 38
        end
        object ComboBoxPP: TComboBox
          Left = 64
          Top = 40
          Width = 117
          Height = 21
          DropDownCount = 12
          ItemHeight = 13
          TabOrder = 39
          OnChange = ComboBoxPPChange
        end
        object CBNom2: TComboBox
          Tag = 1
          Left = 64
          Top = 61
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 40
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object CBNom3: TComboBox
          Tag = 2
          Left = 64
          Top = 83
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 41
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object CBNom4: TComboBox
          Tag = 3
          Left = 64
          Top = 105
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 42
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object CBNom5: TComboBox
          Tag = 4
          Left = 64
          Top = 127
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 43
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object CBNom6: TComboBox
          Tag = 5
          Left = 64
          Top = 149
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 44
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object nom7: TEdit
          Left = 72
          Top = 203
          Width = 109
          Height = 21
          TabOrder = 45
        end
        object CBNom7: TComboBox
          Tag = 6
          Left = 64
          Top = 171
          Width = 117
          Height = 21
          ItemHeight = 13
          TabOrder = 46
          Text = 'CBNom2'
          OnChange = CBNom2Change
        end
        object Mol7: TEdit
          Left = 182
          Top = 171
          Width = 45
          Height = 21
          TabOrder = 47
        end
        object Den7: TEdit
          Left = 228
          Top = 171
          Width = 35
          Height = 21
          TabOrder = 48
        end
        object eq7: TEdit
          Left = 264
          Top = 171
          Width = 30
          Height = 21
          TabOrder = 49
          Text = '1'
        end
        object SpinButton8: TSpinButton
          Left = 296
          Top = 171
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eq7
          TabOrder = 50
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
        object mg7: TEdit
          Tag = 2
          Left = 328
          Top = 171
          Width = 50
          Height = 21
          PopupMenu = PopupMenu
          TabOrder = 51
        end
        object mmol7: TEdit
          Left = 379
          Top = 171
          Width = 50
          Height = 21
          TabOrder = 52
        end
        object Nom8: TEdit
          Left = 72
          Top = 227
          Width = 109
          Height = 21
          TabOrder = 53
        end
        object Mol9: TEdit
          Left = 182
          Top = 227
          Width = 35
          Height = 21
          TabOrder = 54
        end
        object mg9: TEdit
          Tag = 2
          Left = 328
          Top = 227
          Width = 57
          Height = 21
          TabOrder = 55
        end
      end
      object GroupBox3: TGroupBox
        Left = 504
        Top = 68
        Width = 169
        Height = 253
        Caption = 'P. Final'
        TabOrder = 1
        object Label16: TLabel
          Left = 72
          Top = 64
          Width = 12
          Height = 13
          Caption = 'eq'
        end
        object Labelfinal: TLabel
          Left = 8
          Top = 120
          Width = 145
          Height = 13
          AutoSize = False
          Caption = '100% ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PfinalNom: TLabeledEdit
          Left = 8
          Top = 40
          Width = 153
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 0
        end
        object Pfinalmw: TLabeledEdit
          Left = 8
          Top = 80
          Width = 49
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'M.W.'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 1
        end
        object eqF: TEdit
          Left = 72
          Top = 80
          Width = 30
          Height = 21
          TabOrder = 2
          Text = '1'
        end
        object SpinButton7: TSpinButton
          Left = 104
          Top = 80
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          FocusControl = eqF
          TabOrder = 3
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = SpinButton1DownClick
          OnUpClick = SpinButton1UpClick
        end
      end
      object refcuaderno: TLabeledEdit
        Left = 88
        Top = 24
        Width = 97
        Height = 21
        EditLabel.Width = 69
        EditLabel.Height = 13
        EditLabel.Caption = 'Ref. Cuaderno'
        EditLabel.Layout = tlCenter
        LabelPosition = lpLeft
        LabelSpacing = 5
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reactivos'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 329
        Height = 193
        Caption = 'Productos de partida'
        TabOrder = 0
        object SavePP: TSpeedButton
          Left = 300
          Top = 156
          Width = 20
          Height = 20
          Hint = 'Guardar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            0707070707070707070707070707000000000000000000000007070707070007
            07A4A4A4A4000707000707070707000707A400A4A40007070007070707070007
            07A4A4A4A4000707000707070000000707070707070707070007070700070000
            00000000000000070007070700070000FFFFFFFFFFFFFF070007070700000000
            FFFFFFFFFFFFFF070007070700000000FFFFFFFFFFFFFF070007070000000000
            FFFFFFFFFFFFFF000007070000000000FFFFFFFFFFFFFF07070707000000FFFF
            FFFFFFFFFF0700070707070000000000000000000000000707070700FFFFFFFF
            FFFFFF0700070707070707000000000000000000000707070707}
          ParentShowHint = False
          ShowHint = True
          OnClick = SavePPClick
        end
        object UpdatePP: TSpeedButton
          Left = 300
          Top = 124
          Width = 20
          Height = 20
          Hint = 'Modificar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0200000000000000000000000000000202020000000000000000000000000202
            0202020000000000000000000000020200FA0202000000000000000000000200
            0000FA02020000000000000000000000000000FA020200000000000000000000
            00000000FA02000000000000000000000000000000FA00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = UpdatePPClick
        end
        object DeletePP: TSpeedButton
          Left = 300
          Top = 92
          Width = 20
          Height = 20
          Hint = 'Eliminar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000F90000000000F90000
            000000000000000000000000F9F9F900000000000000F90000000000F9F9F900
            0000000000F900000000000000F9F9F900000000F9F90000000000000000F9F9
            F90000F9F900000000000000000000F9F9F9F9F9000000000000000000000000
            F9F9F9000000000000000000000000F9F9F9F9F900000000000000000000F9F9
            F90000F90000000000000000F9F9F9F900000000F9F90000000000F9F9F9F900
            0000000000F9F900000000F9F9000000000000000000F9F90000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = DeletePPClick
        end
        object EnombrePP: TLabeledEdit
          Left = 8
          Top = 156
          Width = 177
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 0
        end
        object EmwPP: TLabeledEdit
          Left = 192
          Top = 156
          Width = 49
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'M.W.'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 1
        end
        object EdenPP: TLabeledEdit
          Left = 248
          Top = 156
          Width = 49
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Densidad'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 2
        end
        object GridPP: TStringGrid
          Left = 8
          Top = 16
          Width = 289
          Height = 121
          ColCount = 4
          DefaultColWidth = 5
          DefaultRowHeight = 16
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          TabOrder = 3
          OnDrawCell = GridPPDrawCell
          OnSelectCell = GridPPSelectCell
          ColWidths = (
            5
            171
            39
            48)
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 208
        Width = 641
        Height = 193
        Caption = 'Reactivos'
        TabOrder = 1
        object SaveR: TSpeedButton
          Left = 564
          Top = 156
          Width = 20
          Height = 20
          Hint = 'Guardar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            0707070707070707070707070707000000000000000000000007070707070007
            07A4A4A4A4000707000707070707000707A400A4A40007070007070707070007
            07A4A4A4A4000707000707070000000707070707070707070007070700070000
            00000000000000070007070700070000FFFFFFFFFFFFFF070007070700000000
            FFFFFFFFFFFFFF070007070700000000FFFFFFFFFFFFFF070007070000000000
            FFFFFFFFFFFFFF000007070000000000FFFFFFFFFFFFFF07070707000000FFFF
            FFFFFFFFFF0700070707070000000000000000000000000707070700FFFFFFFF
            FFFFFF0700070707070707000000000000000000000707070707}
          ParentShowHint = False
          ShowHint = True
          OnClick = SaveRClick
        end
        object UpdateR: TSpeedButton
          Left = 588
          Top = 156
          Width = 20
          Height = 20
          Hint = 'Modificar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0200000000000000000000000000000202020000000000000000000000000202
            0202020000000000000000000000020200FA0202000000000000000000000200
            0000FA02020000000000000000000000000000FA020200000000000000000000
            00000000FA02000000000000000000000000000000FA00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = UpdateRClick
        end
        object DeleteR: TSpeedButton
          Left = 612
          Top = 156
          Width = 20
          Height = 20
          Hint = 'Eliminar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000F90000000000F90000
            000000000000000000000000F9F9F900000000000000F90000000000F9F9F900
            0000000000F900000000000000F9F9F900000000F9F90000000000000000F9F9
            F90000F9F900000000000000000000F9F9F9F9F9000000000000000000000000
            F9F9F9000000000000000000000000F9F9F9F9F900000000000000000000F9F9
            F90000F90000000000000000F9F9F9F900000000F9F90000000000F9F9F9F900
            0000000000F9F900000000F9F9000000000000000000F9F90000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = DeleteRClick
        end
        object GridR: TStringGrid
          Left = 8
          Top = 16
          Width = 625
          Height = 121
          DefaultColWidth = 12
          DefaultRowHeight = 16
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          TabOrder = 0
          OnDrawCell = GridRDrawCell
          OnSelectCell = GridRSelectCell
          ColWidths = (
            12
            377
            76
            68
            69)
        end
        object EnombreR: TLabeledEdit
          Left = 8
          Top = 156
          Width = 329
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 1
        end
        object EmwR: TLabeledEdit
          Left = 344
          Top = 156
          Width = 73
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'M.W.'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 2
        end
        object EdenR: TLabeledEdit
          Left = 424
          Top = 156
          Width = 65
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Densidad'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 3
        end
        object EpurR: TLabeledEdit
          Left = 496
          Top = 156
          Width = 57
          Height = 21
          EditLabel.Width = 47
          EditLabel.Height = 13
          EditLabel.Caption = 'Pureza(%)'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 4
        end
      end
      object GroupBox4: TGroupBox
        Left = 344
        Top = 8
        Width = 329
        Height = 193
        Caption = 'Productos Finales'
        TabOrder = 2
        object SpeedButton2: TSpeedButton
          Left = 300
          Top = 156
          Width = 20
          Height = 20
          Hint = 'Guardar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            0707070707070707070707070707000000000000000000000007070707070007
            07A4A4A4A4000707000707070707000707A400A4A40007070007070707070007
            07A4A4A4A4000707000707070000000707070707070707070007070700070000
            00000000000000070007070700070000FFFFFFFFFFFFFF070007070700000000
            FFFFFFFFFFFFFF070007070700000000FFFFFFFFFFFFFF070007070000000000
            FFFFFFFFFFFFFF000007070000000000FFFFFFFFFFFFFF07070707000000FFFF
            FFFFFFFFFF0700070707070000000000000000000000000707070700FFFFFFFF
            FFFFFF0700070707070707000000000000000000000707070707}
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton3: TSpeedButton
          Left = 300
          Top = 124
          Width = 20
          Height = 20
          Hint = 'Modificar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0200000000000000000000000000000202020000000000000000000000000202
            0202020000000000000000000000020200FA0202000000000000000000000200
            0000FA02020000000000000000000000000000FA020200000000000000000000
            00000000FA02000000000000000000000000000000FA00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton4: TSpeedButton
          Left = 300
          Top = 92
          Width = 20
          Height = 20
          Hint = 'Eliminar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            0000000000000000000000000000000000000000000000F90000000000F90000
            000000000000000000000000F9F9F900000000000000F90000000000F9F9F900
            0000000000F900000000000000F9F9F900000000F9F90000000000000000F9F9
            F90000F9F900000000000000000000F9F9F9F9F9000000000000000000000000
            F9F9F9000000000000000000000000F9F9F9F9F900000000000000000000F9F9
            F90000F90000000000000000F9F9F9F900000000F9F90000000000F9F9F9F900
            0000000000F9F900000000F9F9000000000000000000F9F90000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
        end
        object StringGrid1: TStringGrid
          Left = 8
          Top = 16
          Width = 289
          Height = 121
          ColCount = 4
          DefaultColWidth = 5
          DefaultRowHeight = 16
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
          TabOrder = 0
          OnSelectCell = GridPPSelectCell
          ColWidths = (
            5
            171
            39
            48)
        end
        object LabeledEdit1: TLabeledEdit
          Left = 8
          Top = 156
          Width = 177
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvRaised
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 1
        end
        object LabeledEdit2: TLabeledEdit
          Left = 192
          Top = 156
          Width = 49
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'M.W.'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 2
        end
        object LabeledEdit3: TLabeledEdit
          Left = 248
          Top = 156
          Width = 49
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Densidad'
          LabelPosition = lpAbove
          LabelSpacing = 3
          TabOrder = 3
        end
      end
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 687
    Height = 33
    Align = alTop
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 110
      Height = 48
      Align = alNone
      Caption = 'ToolBar1'
      EdgeBorders = []
      Images = ImageList1
      TabOrder = 0
      object ToolButtonNew: TToolButton
        Left = 0
        Top = 2
        Hint = 'Nuevos Datos'
        Caption = 'ToolButtonNew'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButtonNewClick
      end
      object ToolButton4: TToolButton
        Left = 23
        Top = 2
        Hint = 'Guardar Datos'
        Caption = 'ToolButton4'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton4Click
      end
      object ToolButton1: TToolButton
        Left = 46
        Top = 2
        Hint = 'Abrir Datos'
        Caption = 'ToolButton1'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Left = 69
        Top = 2
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 77
        Top = 2
        Hint = 'Ayuda'
        Caption = 'ToolButton6'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton6Click
      end
    end
    object ToolBar2: TToolBar
      Left = 145
      Top = 2
      Width = 120
      Height = 48
      Align = alNone
      Caption = 'ToolBar1'
      EdgeBorders = []
      Images = ImageList1
      TabOrder = 1
      object Label17: TLabel
        Left = 0
        Top = 2
        Width = 32
        Height = 22
        Caption = 'Escala'
        Layout = tlCenter
      end
      object ToolButton2: TToolButton
        Left = 32
        Top = 2
        Width = 8
        Caption = 'ToolButton2'
        Style = tbsSeparator
      end
      object CBEscala: TComboBox
        Left = 40
        Top = 2
        Width = 49
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'mg-ul'
        OnChange = CBEscalaChange
        Items.Strings = (
          'mg/ul'
          'g/ml'
          'Kg/L')
      end
    end
  end
  object ImageList1: TImageList
    Left = 472
    Top = 24
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000008000800080008000FFFFFF00FFFFFF00C0C0C000808080000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000008080000000000000000000000000000000000080808000FFFF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C0008080800000000000000000000000000000000000000000008000
      800080008000FFFFFF00FFFFFF000000000000000000C0C0C000C0C0C0008080
      800000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000080808000FFFFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF00000000008080800000000000808080008000800080008000FFFF
      FF00FFFFFF000000000000000000800080008000800000000000C0C0C000C0C0
      C00080808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000080808000FFFFFF0000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C0000000000080808000000000008080800080008000FFFFFF000000
      000000000000800080008000800080008000800080008000800000000000C0C0
      C000C0C0C000808080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000000000000000000080808000FFFFFF0000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF0000FF
      FF00000000008080800080808000000000008080800000000000000000008000
      800080008000800080000080800000FFFF008000800080008000800080000000
      0000C0C0C000C0C0C0008080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      00000080800000808000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF0080808000000000008080800080008000800080008000
      8000800080008000800080008000008080008000800080008000800080008000
      800000000000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800000FFFF0080808000000000000000000080008000FFFFFF008000
      80008000800080008000800080008000800000FFFF0000FFFF00800080008000
      800080008000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000080808000FFFFFF0000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
      FF00C0C0C00000FFFF008080800000000000000000000000000080008000FFFF
      FF0080008000800080008000800080008000800080000080800000FFFF0000FF
      FF0080008000800080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000080808000FFFFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000008000
      8000FFFFFF00800080008000800080008000008080008000800000FFFF0000FF
      FF0080008000800080008000800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000008080000000000000000000000000008080800000FFFF0000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF0000FFFF0080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      000080008000FFFFFF00800080008000800000FFFF0000FFFF0000FFFF008000
      800080008000800080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000000000000000000008080800000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080008000FFFFFF00800080008000800080008000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000FFFFFF008000800080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFE3FC007C001E000F81F
      C0078001C000E00FC0078001C0008007C007800180000003C007800180000001
      C007800100000000C007800100000001C007800100008001C00780018000C001
      C00780018000E000C00F80018001F000C01F8001C07FF803C03F8001E0FFFC0F
      FFFF8001FFFFFE3FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ppartida: TMlbc
    CSVSeparator = ';'
    Distinct = False
    QuoteSeparator = '"'
    BeginningOfFile = False
    EndOfFile = False
    Left = 504
    Top = 24
  end
  object reactivos: TMlbc
    CSVSeparator = ';'
    Distinct = False
    QuoteSeparator = '"'
    BeginningOfFile = True
    EndOfFile = True
    Left = 536
    Top = 24
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'Mlr'
    Filter = 'Archivos de Molator  (*.Mol)|*.Mlr;'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Left = 568
    Top = 24
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'Mlr'
    Filter = 'Archivos de Molator  (*.Mol)|*.Mlr'
    Left = 600
    Top = 24
  end
  object PopupMenu: TPopupMenu
    MenuAnimation = [maRightToLeft]
    OnPopup = PopupMenuPopup
    Left = 424
    Top = 24
    object N01: TMenuItem
      Caption = '1 Decimal'
      RadioItem = True
      OnClick = N01Click
    end
    object N21: TMenuItem
      Caption = '2 Decimales'
      RadioItem = True
    end
    object N31: TMenuItem
      Caption = '3 Decimales'
    end
    object N41: TMenuItem
      Caption = '4 Decimales'
    end
  end
end
