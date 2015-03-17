unit conditionquery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,mainfrm, Grids, DBGrids, StdCtrls, ComCtrls;

type
  Tconditionqueryfrm = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox5: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  conditionqueryfrm: Tconditionqueryfrm;

implementation
uses
datamod;
{$R *.dfm}
//精确查询函数
procedure Tconditionqueryfrm.Button1Click(Sender: TObject);
 //查询
begin
  datamodule3.vmclient.SQL.Clear;
  datamodule3.vmclient.SQL.Add('select distinct * from vm_client');
  datamodule3.vmclient.Open;

end;

procedure Tconditionqueryfrm.Button2Click(Sender: TObject);
begin
  conditionqueryfrm.Hide;
end;

procedure Tconditionqueryfrm.FormShow(Sender: TObject);
begin
  conditionqueryfrm.ComboBox1.Items.Add('男');

  conditionqueryfrm.ComboBox1.Items.Add('女');

  conditionqueryfrm.ComboBox2.Items.Add('总经理');
  conditionqueryfrm.ComboBox2.Items.Add('董事长');
  conditionqueryfrm.ComboBox2.Items.Add('财务部监管');
  conditionqueryfrm.ComboBox2.Items.Add('财政局长');

  //升级的版本中应该可以显示出所有客户单位名称，并自动更新
   conditionqueryfrm.ComboBox3.Items.Add('韩城市煤炭局');
  conditionqueryfrm.ComboBox3.Items.Add('韩城市矿务局');
  conditionqueryfrm.ComboBox3.Items.Add('韩城市农行');
  conditionqueryfrm.ComboBox3.Items.Add('韩城市烟草局');

   conditionqueryfrm.ComboBox4.Items.Add('企业');      //注意要转成 C
  conditionqueryfrm.ComboBox4.Items.Add('个人');       //注意要转成 P

  //升级的版本中应该可以显示出单位所有的客户经理工号
  conditionqueryfrm.ComboBox5.Items.Add('01');
  conditionqueryfrm.ComboBox5.Items.Add('02');
end;

end.
