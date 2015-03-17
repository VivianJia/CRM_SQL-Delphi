unit accuratequery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls, mainfrm;

type
  Taccuratequeryfrm = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    account: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  accuratequeryfrm: Taccuratequeryfrm;

implementation

{$R *.dfm}

  uses datamod;

procedure Taccuratequeryfrm.Button1Click(Sender: TObject);
var
trantype:string;
i:integer;
date1:string;
date2:string;
begin
//没有选择账号   显示所有
  if account.Text = '' then
 begin
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account');
  datamodule3.vmaccout.Open;
 end
 //选择了账号
 else
 begin
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where 账号 = '''+account.Text+'''');
  datamodule3.vmaccout.Open;

   //选择了交易类型
  trantype:=self.ComboBox1.Text;
  i:=self.ComboBox1.ItemIndex;
  trantype:=self.ComboBox1.Items.Strings[i];
   if(trantype = '存入') then
   begin
     trantype := 'I';
   end;
     trantype := 'O';
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where 交易类型 = '''+trantype+'''');
  datamodule3.vmaccout.Open;
  date1 :=  datetostr(DateTimePicker1.DateTime) ;

  date2 :=  datetostr(DateTimePicker2.DateTime) ;
  //选择了日期
  if(DateTimePicker1.DateTime <> 1900/01/01) and (DateTimePicker2.DateTime = 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where 交易日期 > '''+date1+'''');
  datamodule3.vmaccout.Open;
    //选择了日期
  if(DateTimePicker1.DateTime = 1900/01/01) and (DateTimePicker2.DateTime <> 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where 交易日期 < '''+date2+'''');
  datamodule3.vmaccout.Open;
    //选择了日期
  if(DateTimePicker1.DateTime <> 1900/01/01) and (DateTimePicker2.DateTime <> 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where 交易日期 > '''+date1+''' and 交易日期 < '''+date2+'''');
  datamodule3.vmaccout.Open;
 end;


end;

procedure Taccuratequeryfrm.Button2Click(Sender: TObject);
begin
  //返回主界面
  accuratequeryfrm.Hide;
end;

procedure Taccuratequeryfrm.FormShow(Sender: TObject);
begin
    accuratequeryfrm.combobox1.Items.Add('存入');    //转换为I
    accuratequeryfrm.combobox1.Items.Add('支出');    //转换为O
end;

end.
