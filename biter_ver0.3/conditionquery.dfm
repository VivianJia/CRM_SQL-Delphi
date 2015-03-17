object conditionqueryfrm: Tconditionqueryfrm
  Left = 0
  Top = 0
  Width = 762
  Height = 578
  AutoScroll = True
  Caption = #23458#25143#32463#29702#21161#25163' '#26465#20214#26597#35810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 24
    Height = 13
    Caption = #24615#21035
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 24
    Height = 13
    Caption = #32844#21153
  end
  object Label3: TLabel
    Left = 224
    Top = 8
    Width = 48
    Height = 13
    Caption = #24037#20316#21333#20301
  end
  object Label4: TLabel
    Left = 224
    Top = 38
    Width = 48
    Height = 13
    Caption = #23458#25143#31867#22411
  end
  object Label5: TLabel
    Left = 8
    Top = 72
    Width = 48
    Height = 13
    Caption = #20986#29983#26085#26399
  end
  object Label7: TLabel
    Left = 466
    Top = 11
    Width = 48
    Height = 13
    Caption = #23458#25143#32463#29702
  end
  object Label8: TLabel
    Left = 466
    Top = 38
    Width = 24
    Height = 13
    Caption = #22995#21517
  end
  object ComboBox1: TComboBox
    Left = 62
    Top = 5
    Width = 145
    Height = 21
    TabOrder = 0
    Text = #35831#36873#25321
  end
  object ComboBox2: TComboBox
    Left = 62
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 1
    Text = #35831#36873#25321
  end
  object ComboBox3: TComboBox
    Left = 288
    Top = 5
    Width = 145
    Height = 21
    TabOrder = 2
    Text = #35831#36873#25321
  end
  object ComboBox4: TComboBox
    Left = 288
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 3
    Text = #35831#36873#25321
  end
  object Button1: TButton
    Left = 512
    Top = 68
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 606
    Top = 67
    Width = 75
    Height = 25
    Caption = #36820#22238
    TabOrder = 5
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 62
    Top = 72
    Width = 145
    Height = 21
    Date = 40882.883044386570000000
    Time = 40882.883044386570000000
    TabOrder = 6
  end
  object ComboBox5: TComboBox
    Left = 520
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 7
    Text = #35831#36873#25321
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 99
    Width = 737
    Height = 446
    DataSource = DataModule3.client
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #22995#21517
        Visible = True
      end
      item
        Expanded = False
        FieldName = #21333#20301
        Visible = True
      end
      item
        Expanded = False
        FieldName = #32463#29702
        Visible = True
      end
      item
        Expanded = False
        FieldName = #32844#20301
        Visible = True
      end
      item
        Expanded = False
        FieldName = #23458#25143#31867#22411
        Visible = True
      end
      item
        Expanded = False
        FieldName = #20986#29983#26085#26399
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 520
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 9
  end
end
