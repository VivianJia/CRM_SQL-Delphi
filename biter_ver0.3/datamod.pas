unit datamod;

interface

uses
  SysUtils, Classes, DBClient, DSConnect, DB, ADODB, Provider;

type
  TDataModule3 = class(TDataModule)
    bankClient: TADOConnection;
    bankClientQ1: TADOQuery;
    ADOQuery2: TADOQuery;
    dsp1: TDataSetProvider;
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    client: TDataSource;
    vmclient: TADOQuery;
    vmaccout: TADOQuery;
    DataSource2: TDataSource;
    vmmemo: TADOQuery;
    memo: TDataSource;
    vmann: TADOQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ADOQuery3: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{$R *.dfm}

end.
