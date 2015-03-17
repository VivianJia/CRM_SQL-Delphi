object blogfrm: Tblogfrm
  Left = 0
  Top = 0
  Width = 657
  Height = 543
  AutoScroll = True
  Caption = #23458#25143#32463#29702#21161#25163' '#26085#24535#31995#32479
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
    Left = 0
    Top = 0
    Width = 641
    Height = 505
    ActivePage = 纪念日
    TabOrder = 0
    object 生日提醒: TTabSheet
      Caption = #29983#26085#25552#37266
      object Label1: TLabel
        Left = 3
        Top = 43
        Width = 48
        Height = 13
        Caption = #35774#32622#25552#37266
      end
      object Label2: TLabel
        Left = 16
        Top = 3
        Width = 24
        Height = 13
        Caption = #22995#21517
      end
      object Label3: TLabel
        Left = 276
        Top = 3
        Width = 48
        Height = 13
        Caption = #20986#29983#24180#20221
      end
      object Label4: TLabel
        Left = 276
        Top = 43
        Width = 24
        Height = 13
        Caption = #22791#27880
      end
      object Label5: TLabel
        Left = 3
        Top = 88
        Width = 48
        Height = 13
        Caption = #36807#26399#26102#38388
      end
      object Label6: TLabel
        Left = 3
        Top = 109
        Width = 60
        Height = 16
        Caption = #29983#26085#25552#37266
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 352
        Top = 3
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 57
        Top = 43
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 56
        Top = 3
        Width = 186
        Height = 21
        TabOrder = 2
      end
      object RichEdit1: TRichEdit
        Left = 353
        Top = 40
        Width = 185
        Height = 34
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        TabOrder = 3
      end
      object DateTimePicker3: TDateTimePicker
        Left = 57
        Top = 80
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 4
      end
      object Button1: TButton
        Left = 432
        Top = 97
        Width = 67
        Height = 25
        Caption = #30830#23450#28155#21152
        TabOrder = 5
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 505
        Top = 97
        Width = 49
        Height = 25
        Caption = #21024#38500
        TabOrder = 6
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 560
        Top = 97
        Width = 49
        Height = 25
        Caption = #21462#28040
        TabOrder = 7
        OnClick = Button3Click
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 128
        Width = 630
        Height = 346
        DataSource = DataModule3.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
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
            FieldName = #20986#29983#26085#26399
            Visible = True
          end
          item
            Expanded = False
            FieldName = #24320#22987#26102#38388
            Visible = True
          end
          item
            Expanded = False
            FieldName = #36807#26399#26102#38388
            Visible = True
          end
          item
            Expanded = False
            FieldName = #22791#27880
            Visible = True
          end>
      end
      object Button19: TButton
        Left = 352
        Top = 97
        Width = 67
        Height = 25
        Caption = #26174#31034#25152#26377
        TabOrder = 9
        OnClick = Button19Click
      end
    end
    object 节日查询: TTabSheet
      Caption = #33410#26085#26597#35810
      ImageIndex = 1
      object Label7: TLabel
        Left = 24
        Top = 3
        Width = 24
        Height = 13
        Caption = #26376#20221
      end
      object Label8: TLabel
        Left = 133
        Top = 3
        Width = 12
        Height = 13
        Caption = #26085
      end
      object Label17: TLabel
        Left = 3
        Top = 53
        Width = 60
        Height = 16
        Caption = #33410#26085#22823#20840
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 54
        Top = 3
        Width = 73
        Height = 21
        TabOrder = 0
        Text = #26376
        OnChange = ComboBox1Change
      end
      object ComboBox2: TComboBox
        Left = 151
        Top = 3
        Width = 73
        Height = 21
        TabOrder = 1
        Text = #26085
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 72
        Width = 614
        Height = 409
        DataSource = DataModule3.DataSource1
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #26085#26399
            Visible = True
          end
          item
            Expanded = False
            FieldName = #33410#26085#21517
            Visible = True
          end>
      end
      object Button4: TButton
        Left = 380
        Top = 41
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 542
        Top = 41
        Width = 75
        Height = 25
        Caption = #36820#22238
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button18: TButton
        Left = 461
        Top = 41
        Width = 75
        Height = 25
        Caption = #28155#21152#21040#25552#37266
        TabOrder = 5
      end
    end
    object 纪念日: TTabSheet
      Caption = #32426#24565#26085
      ImageIndex = 2
      object Label9: TLabel
        Left = 253
        Top = 35
        Width = 36
        Height = 13
        Caption = #25552#37266#25105
      end
      object Label10: TLabel
        Left = 10
        Top = 43
        Width = 48
        Height = 13
        Caption = #35774#32622'    '#22312
      end
      object Label11: TLabel
        Left = 296
        Top = 16
        Width = 24
        Height = 13
        Caption = #22791#27880
      end
      object Label13: TLabel
        Left = 10
        Top = 65
        Width = 48
        Height = 13
        Caption = #30456#20851#23458#25143
      end
      object Label14: TLabel
        Left = 16
        Top = 16
        Width = 36
        Height = 13
        Caption = #32426#24565#26085
      end
      object Label35: TLabel
        Left = 3
        Top = 116
        Width = 75
        Height = 16
        Caption = #32426#24565#26085#25552#37266
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 10
        Top = 90
        Width = 48
        Height = 13
        Caption = #36807#26399#26102#38388
      end
      object DateTimePicker4: TDateTimePicker
        Left = 64
        Top = 35
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 0
      end
      object RichEdit2: TRichEdit
        Left = 326
        Top = 13
        Width = 304
        Height = 70
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 64
        Top = 62
        Width = 186
        Height = 21
        TabOrder = 2
      end
      object DateTimePicker6: TDateTimePicker
        Left = 64
        Top = 8
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 3
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 131
        Width = 627
        Height = 332
        DataSource = DataModule3.DataSource3
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #32426#24565#26085
            Visible = True
          end
          item
            Expanded = False
            FieldName = #30456#20851#20154
            Visible = True
          end
          item
            Expanded = False
            FieldName = #25552#37266#24320#22987
            Visible = True
          end
          item
            Expanded = False
            FieldName = #36807#26399#26102#38388
            Visible = True
          end
          item
            Expanded = False
            FieldName = #22791#27880
            Visible = True
          end>
      end
      object Button15: TButton
        Left = 432
        Top = 100
        Width = 67
        Height = 25
        Caption = #30830#23450#28155#21152
        TabOrder = 5
        OnClick = Button15Click
      end
      object Button16: TButton
        Left = 505
        Top = 100
        Width = 49
        Height = 25
        Caption = #21024#38500
        TabOrder = 6
        OnClick = Button16Click
      end
      object Button17: TButton
        Left = 560
        Top = 100
        Width = 49
        Height = 25
        Caption = #21462#28040
        TabOrder = 7
        OnClick = Button3Click
      end
      object DateTimePicker8: TDateTimePicker
        Left = 64
        Top = 89
        Width = 186
        Height = 21
        Date = 40882.794259467590000000
        Time = 40882.794259467590000000
        TabOrder = 8
      end
      object Button20: TButton
        Left = 351
        Top = 100
        Width = 75
        Height = 25
        Caption = #26174#31034#25152#26377
        TabOrder = 9
        OnClick = Button20Click
      end
    end
    object 备忘: TTabSheet
      Caption = #22791#24536
      ImageIndex = 4
      object Label12: TLabel
        Left = 24
        Top = 24
        Width = 12
        Height = 13
        Caption = #24180
      end
      object Label15: TLabel
        Left = 216
        Top = 24
        Width = 12
        Height = 13
        Caption = #26085
      end
      object Label16: TLabel
        Left = 119
        Top = 24
        Width = 12
        Height = 13
        Caption = #26376
      end
      object DBGrid2: TDBGrid
        Left = 24
        Top = 60
        Width = 593
        Height = 417
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button9: TButton
        Left = 488
        Top = 19
        Width = 75
        Height = 25
        Caption = #36820#22238
        TabOrder = 1
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 392
        Top = 19
        Width = 75
        Height = 25
        Caption = #26597#30475
        TabOrder = 2
      end
      object ComboBox3: TComboBox
        Left = 234
        Top = 21
        Width = 73
        Height = 21
        TabOrder = 3
        Text = 'ComboBox1'
      end
      object ComboBox4: TComboBox
        Left = 42
        Top = 21
        Width = 73
        Height = 21
        TabOrder = 4
        Text = 'ComboBox1'
      end
      object ComboBox5: TComboBox
        Left = 137
        Top = 21
        Width = 73
        Height = 21
        TabOrder = 5
        Text = 'ComboBox1'
      end
      object PageControl2: TPageControl
        Left = -8
        Top = -28
        Width = 641
        Height = 505
        ActivePage = TabSheet4
        TabOrder = 6
        object allmemo: TTabSheet
          Caption = #20840#37096#22791#24536
          object Label18: TLabel
            Left = 3
            Top = 43
            Width = 48
            Height = 13
            Caption = #35774#32622#25552#37266
          end
          object Label19: TLabel
            Left = 16
            Top = 3
            Width = 24
            Height = 13
            Caption = #22995#21517
          end
          object Label20: TLabel
            Left = 276
            Top = 3
            Width = 48
            Height = 13
            Caption = #20986#29983#24180#20221
          end
          object Label21: TLabel
            Left = 288
            Top = 43
            Width = 24
            Height = 13
            Caption = #22791#27880
          end
          object Label22: TLabel
            Left = 3
            Top = 88
            Width = 48
            Height = 13
            Caption = #36807#26399#26102#38388
          end
          object Label23: TLabel
            Left = 3
            Top = 109
            Width = 60
            Height = 16
            Caption = #20840#37096#25552#37266
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DateTimePicker5: TDateTimePicker
            Left = 352
            Top = 3
            Width = 186
            Height = 21
            Date = 40882.794259467590000000
            Time = 40882.794259467590000000
            TabOrder = 0
          end
          object DateTimePicker7: TDateTimePicker
            Left = 57
            Top = 43
            Width = 186
            Height = 21
            Date = 40882.794259467590000000
            Time = 40882.794259467590000000
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 56
            Top = 3
            Width = 186
            Height = 21
            TabOrder = 2
            Text = 'Edit1'
          end
          object RichEdit3: TRichEdit
            Left = 352
            Top = 30
            Width = 185
            Height = 34
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'RichEdit1')
            ParentFont = False
            TabOrder = 3
          end
          object Button6: TButton
            Left = 432
            Top = 97
            Width = 67
            Height = 25
            Caption = #30830#23450#28155#21152
            TabOrder = 4
          end
          object Button7: TButton
            Left = 505
            Top = 97
            Width = 49
            Height = 25
            Caption = #21024#38500
            TabOrder = 5
          end
          object Button8: TButton
            Left = 560
            Top = 97
            Width = 49
            Height = 25
            Caption = #21462#28040
            TabOrder = 6
            OnClick = Button3Click
          end
          object DBGrid5: TDBGrid
            Left = 3
            Top = 128
            Width = 630
            Height = 346
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet2: TTabSheet
          Caption = #33410#26085#26597#35810
          ImageIndex = 1
          object Label24: TLabel
            Left = 24
            Top = 24
            Width = 24
            Height = 13
            Caption = #26376#20221
          end
          object Label25: TLabel
            Left = 168
            Top = 24
            Width = 12
            Height = 13
            Caption = #26085
          end
          object Label26: TLabel
            Left = 3
            Top = 53
            Width = 60
            Height = 16
            Caption = #33410#26085#22823#20840
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ComboBox6: TComboBox
            Left = 72
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 0
            Text = 'ComboBox1'
          end
          object ComboBox7: TComboBox
            Left = 216
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 1
            Text = 'ComboBox1'
          end
          object DBGrid6: TDBGrid
            Left = 3
            Top = 72
            Width = 614
            Height = 409
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object Button11: TButton
            Left = 392
            Top = 19
            Width = 75
            Height = 25
            Caption = #26597#35810
            TabOrder = 3
          end
          object Button12: TButton
            Left = 488
            Top = 19
            Width = 75
            Height = 25
            Caption = #36820#22238
            TabOrder = 4
            OnClick = Button5Click
          end
        end
        object TabSheet3: TTabSheet
          Caption = #32426#24565#26085
          ImageIndex = 2
          object Label27: TLabel
            Left = 253
            Top = 35
            Width = 36
            Height = 13
            Caption = #25552#37266#25105
          end
          object Label28: TLabel
            Left = 10
            Top = 35
            Width = 48
            Height = 13
            Caption = #35774#32622'    '#22312
          end
          object Label29: TLabel
            Left = 320
            Top = 35
            Width = 24
            Height = 13
            Caption = #22791#27880
          end
          object Label30: TLabel
            Left = 309
            Top = 3
            Width = 48
            Height = 13
            Caption = #30456#20851#23458#25143
          end
          object Label31: TLabel
            Left = 16
            Top = 16
            Width = 36
            Height = 13
            Caption = #32426#24565#26085
          end
          object DateTimePicker9: TDateTimePicker
            Left = 64
            Top = 35
            Width = 186
            Height = 21
            Date = 40882.794259467590000000
            Time = 40882.794259467590000000
            TabOrder = 0
          end
          object RichEdit4: TRichEdit
            Left = 363
            Top = 27
            Width = 193
            Height = 54
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'RichEdit1')
            ParentFont = False
            TabOrder = 1
          end
          object Edit4: TEdit
            Left = 363
            Top = 0
            Width = 186
            Height = 21
            TabOrder = 2
            Text = 'Edit1'
          end
          object DateTimePicker10: TDateTimePicker
            Left = 64
            Top = 8
            Width = 186
            Height = 21
            Date = 40882.794259467590000000
            Time = 40882.794259467590000000
            TabOrder = 3
          end
          object DBGrid7: TDBGrid
            Left = 16
            Top = 177
            Width = 593
            Height = 297
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet4: TTabSheet
          Caption = #20840#37096#22791#24536
          ImageIndex = 4
          object Label32: TLabel
            Left = 107
            Top = 24
            Width = 12
            Height = 13
            Caption = #24180
          end
          object Label33: TLabel
            Left = 299
            Top = 24
            Width = 12
            Height = 13
            Caption = #26085
          end
          object Label34: TLabel
            Left = 202
            Top = 24
            Width = 12
            Height = 13
            Caption = #26376
          end
          object Label36: TLabel
            Left = 423
            Top = 25
            Width = 48
            Height = 13
            Caption = #25552#37266#31867#22411
          end
          object Label37: TLabel
            Left = 24
            Top = 24
            Width = 72
            Height = 13
            Caption = #22791#24536#28155#21152#26102#38388
          end
          object Label38: TLabel
            Left = 24
            Top = 66
            Width = 60
            Height = 16
            Caption = #20840#37096#22791#24536
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBGrid8: TDBGrid
            Left = 3
            Top = 88
            Width = 630
            Height = 389
            DataSource = DataModule3.memo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = #28155#21152#26102#38388
                Visible = True
              end
              item
                Expanded = False
                FieldName = #25552#37266#31867#22411
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = #22791#27880
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = #25552#37266#24320#22987
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = #36807#26399#26102#38388
                Width = 70
                Visible = True
              end>
          end
          object Button13: TButton
            Left = 528
            Top = 57
            Width = 75
            Height = 25
            Caption = #36820#22238
            TabOrder = 1
            OnClick = Button9Click
          end
          object Button14: TButton
            Left = 432
            Top = 57
            Width = 75
            Height = 25
            Caption = #26597#30475
            TabOrder = 2
            OnClick = Button14Click
          end
          object ComboBox8: TComboBox
            Left = 317
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 3
            Text = #26085
          end
          object ComboBox9: TComboBox
            Left = 125
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 4
            Text = #24180
          end
          object ComboBox10: TComboBox
            Left = 220
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 5
            Text = #26376
          end
          object ComboBox11: TComboBox
            Left = 477
            Top = 21
            Width = 73
            Height = 21
            TabOrder = 6
            Text = #25552#37266#31867#22411
          end
        end
      end
    end
  end
end
