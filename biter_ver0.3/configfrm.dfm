﻿object systemconfigfrm: Tsystemconfigfrm
  Left = 0
  Top = 0
  Caption = #23458#25143#32463#29702#21161#25163' '#31995#32479#35774#32622
  ClientHeight = 366
  ClientWidth = 570
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
  object PageControl1: TPageControl
    Left = -7
    Top = 0
    Width = 569
    Height = 367
    ActivePage = 基本设置
    TabOrder = 0
    object 基本设置: TTabSheet
      Caption = #22522#26412#35774#32622
      object Label1: TLabel
        Left = 40
        Top = 40
        Width = 60
        Height = 13
        Caption = #24320#26426#33258#21551#21160
      end
      object Label2: TLabel
        Left = 40
        Top = 88
        Width = 48
        Height = 13
        Caption = #21151#33021#28909#38190
      end
      object Label10: TLabel
        Left = 128
        Top = 88
        Width = 132
        Height = 13
        Caption = #24744#21487#20197#36890#36807#28857#20987#26356#25913#28909#38190
      end
      object Label3: TLabel
        Left = 16
        Top = 3
        Width = 132
        Height = 13
        Caption = #24744#21487#20197#36873#25321#19981#21516#30340#36873#39033#21345
      end
      object Button6: TButton
        Left = 344
        Top = 288
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 0
        OnClick = Button6Click
      end
      object ComboBox1: TComboBox
        Left = 128
        Top = 37
        Width = 145
        Height = 21
        TabOrder = 1
        Text = #40664#35748
      end
      object hotbutton: TDBGrid
        Left = 128
        Top = 107
        Width = 320
        Height = 158
        DataSource = DataModule3.DataSource4
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'quickbuttonname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'buttonfunction'
            Visible = True
          end>
      end
    end
    object 账户管理: TTabSheet
      Caption = #36134#25143#31649#29702
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 64
        Top = 56
        Width = 36
        Height = 13
        Caption = #29992#25143#21517
      end
      object Label5: TLabel
        Left = 64
        Top = 104
        Width = 24
        Height = 13
        Caption = #21475#20196
      end
      object Label6: TLabel
        Left = 64
        Top = 152
        Width = 48
        Height = 13
        Caption = #30830#35748#21475#20196
      end
      object Label11: TLabel
        Left = 16
        Top = 3
        Width = 132
        Height = 13
        Caption = #24744#21487#20197#36873#25321#19981#21516#30340#36873#39033#21345
      end
      object Button4: TButton
        Left = 280
        Top = 288
        Width = 75
        Height = 25
        Caption = #21019#24314#26032#29992#25143
        TabOrder = 0
        OnClick = Button4Click
      end
      object Button7: TButton
        Left = 370
        Top = 288
        Width = 75
        Height = 25
        Caption = #27880#38144#29992#25143
        TabOrder = 1
        OnClick = Button7Click
      end
      object Edit4: TEdit
        Left = 136
        Top = 53
        Width = 177
        Height = 21
        TabOrder = 2
      end
      object Edit5: TEdit
        Left = 136
        Top = 101
        Width = 177
        Height = 21
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 136
        Top = 149
        Width = 177
        Height = 21
        TabOrder = 4
      end
    end
    object 口令修改: TTabSheet
      Caption = #21475#20196#20462#25913
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label7: TLabel
        Left = 56
        Top = 56
        Width = 36
        Height = 13
        Caption = #29992#25143#21517
      end
      object Label8: TLabel
        Left = 56
        Top = 104
        Width = 36
        Height = 13
        Caption = #26032#21475#20196
      end
      object Label9: TLabel
        Left = 56
        Top = 152
        Width = 48
        Height = 13
        Caption = #30830#35748#21475#20196
      end
      object Label12: TLabel
        Left = 16
        Top = 3
        Width = 132
        Height = 13
        Caption = #24744#21487#20197#36873#25321#19981#21516#30340#36873#39033#21345
      end
      object Button8: TButton
        Left = 344
        Top = 288
        Width = 75
        Height = 25
        Caption = #20462#25913#23494#30721
        TabOrder = 0
        OnClick = Button8Click
      end
      object Edit1: TEdit
        Left = 136
        Top = 53
        Width = 177
        Height = 21
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 136
        Top = 101
        Width = 177
        Height = 21
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 136
        Top = 149
        Width = 177
        Height = 21
        TabOrder = 3
      end
    end
  end
  object Button1: TButton
    Left = 464
    Top = 312
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 1
    OnClick = Button5Click
  end
end
