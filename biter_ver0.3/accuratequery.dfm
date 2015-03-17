object accuratequeryfrm: Taccuratequeryfrm
  Left = 0
  Top = 0
  Width = 707
  Height = 502
  AutoScroll = True
  Caption = #23458#25143#32463#29702#21161#25163' '#26597#35810#36134#25143
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
    Left = 24
    Top = 8
    Width = 48
    Height = 13
    Caption = #23458#25143#36134#21495
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 48
    Height = 13
    Caption = #20132#26131#31867#22411
  end
  object Label3: TLabel
    Left = 312
    Top = 8
    Width = 48
    Height = 13
    Caption = #36215#22987#26085#26399
  end
  object Label4: TLabel
    Left = 312
    Top = 56
    Width = 48
    Height = 13
    Caption = #32456#27490#26085#26399
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 83
    Width = 673
    Height = 343
    DataSource = DataModule3.DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #36134#21495
        ImeName = #22995#21517
        Visible = True
      end
      item
        Expanded = False
        FieldName = #20132#26131#26085#26399
        Visible = True
      end
      item
        Expanded = False
        FieldName = #20132#26131#31867#22411
        Visible = True
      end
      item
        Expanded = False
        FieldName = #22995#21517
        Visible = True
      end>
  end
  object account: TEdit
    Left = 78
    Top = 5
    Width = 203
    Height = 21
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 400
    Top = 8
    Width = 186
    Height = 21
    Date = 2.437102465279168000
    Time = 2.437102465279168000
    TabOrder = 2
  end
  object DateTimePicker2: TDateTimePicker
    Left = 400
    Top = 56
    Width = 186
    Height = 21
    Date = 2.437102465279168000
    Time = 2.437102465279168000
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 78
    Top = 53
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 4
  end
  object Button1: TButton
    Left = 592
    Top = 8
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 592
    Top = 52
    Width = 75
    Height = 25
    Caption = #36820#22238
    TabOrder = 6
    OnClick = Button2Click
  end
end
