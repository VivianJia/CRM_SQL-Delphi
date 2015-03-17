object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 388
  Width = 411
  object bankClient: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=wn;Initial Catalog=.;Data Source=.;Use Procedur' +
      'e for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation' +
      ' ID=VIVIAN_JIA-PC;Use Encryption for Data=False;Tag with column ' +
      'collation when possible=False'
    DefaultDatabase = '.'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 152
    Top = 8
  end
  object bankClientQ1: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Rebirthday')
    Left = 96
    Top = 104
  end
  object ADOQuery2: TADOQuery
    Connection = bankClient
    Parameters = <>
    Left = 16
    Top = 104
  end
  object dsp1: TDataSetProvider
    DataSet = ADODataSet1
    Left = 336
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = bankClientQ1
    Left = 104
    Top = 192
  end
  object ADODataSet1: TADODataSet
    Connection = bankClient
    Parameters = <>
    Left = 240
    Top = 104
  end
  object ADOQuery1: TADOQuery
    Connection = bankClient
    Parameters = <>
    Left = 160
    Top = 104
  end
  object client: TDataSource
    DataSet = vmclient
    Left = 312
    Top = 192
  end
  object vmclient: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vm_client')
    Left = 312
    Top = 104
  end
  object vmaccout: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vm_account')
    Left = 24
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = vmaccout
    Left = 96
    Top = 336
  end
  object vmmemo: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vm_memo'
      'select * from vm_ann')
    Left = 248
    Top = 336
  end
  object memo: TDataSource
    DataSet = vmmemo
    Left = 320
    Top = 336
  end
  object vmann: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vm_ann')
    Left = 248
    Top = 280
  end
  object DataSource3: TDataSource
    DataSet = vmann
    Left = 320
    Top = 288
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery3
    Left = 120
    Top = 272
  end
  object ADOQuery3: TADOQuery
    Connection = bankClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sysconfig')
    Left = 48
    Top = 264
  end
end
