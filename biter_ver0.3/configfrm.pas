unit configfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, mainfrm, Grids, DBGrids;

type
  Tsystemconfigfrm = class(TForm)
    PageControl1: TPageControl;
    基本设置: TTabSheet;
    账户管理: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Button4: TButton;
    Button6: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button7: TButton;
    口令修改: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button8: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label10: TLabel;
    hotbutton: TDBGrid;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  systemconfigfrm: Tsystemconfigfrm;

implementation

{$R *.dfm}
uses datamod;

procedure Tsystemconfigfrm.Button4Click(Sender: TObject);
begin
  //创建新用户
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  //升级版本应注意要先记录当前登录用户的信息，此时应判断是否为系统管理员，或者在启动时判断，设置按钮为不可用状态
  if(edit4.Text = '') or (edit5.Text = '')then
  begin
    application.MessageBox('用户名/密码不能为空','操作提示',64); 
    exit;
  end;
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.SQL.Add('insert into userinfo values('''+edit4.Text+''','''+edit5.Text+''',''U'')');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('新用户创建成功，权限为普通用户','操作提示',64); 
  end
  else
  begin
  application.MessageBox('口令不一致，请您确认','操作提示',64); 
  exit;
  end;
end;

procedure Tsystemconfigfrm.Button5Click(Sender: TObject);
begin
  //取消并返回主界面
  systemconfigfrm.Hide;

end;

procedure Tsystemconfigfrm.Button6Click(Sender: TObject);

  //设置系统基本参数。升级后的版本支持功能
  var
  i :integer;
  ison:string;
begin
  ison:=self.ComboBox1.Text;
  i:=self.ComboBox1.ItemIndex;
  ison:=self.ComboBox1.Items.Strings[i];
  
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
//  DataModule3.adoquery1.SQL.Add('insert into sysconfig(quickbutton '+') values('''+hotbutton.SelectedRows+''')');
  DataModule3.adoquery1.SQL.Add('update sysconfig set isRunningAfterStart = '''+ison+'''');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('系统设置成功','操作提示',64);

end;  


procedure Tsystemconfigfrm.Button7Click(Sender: TObject);
begin
    with DataModule3.ADOQuery2 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from userinfo where userName = :a and userPwd = :b');
      parameters.ParamByName('a').Value:=trim(edit5.Text);
      parameters.ParamByName('b').Value:=trim(edit6.Text);
      open;
    end;
    if DataModule3.ADOQuery2.RecordCount = 0 then
    begin
        application.MessageBox('用户名不存在，请确认','操作提示',64);
        exit; 
    end;

  //升级版本应注意要先记录当前登录用户的信息，此时应判断是否为系统管理员，或者在启动时判断，设置按钮为不可用状态
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('delete from userinfo where username = '''+edit4.Text+'''');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('注销成功，该用户不再有进入系统的权限','操作提示',64); 
  end
  else
  begin
  application.MessageBox('口令不一致，请您确认','操作提示',64); 
  exit;
  end;
end;

procedure Tsystemconfigfrm.Button8Click(Sender: TObject);
  //修改密码
  begin
  with DataModule3.ADOQuery2 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from userinfo where userName = :a and userPwd = :b');
      parameters.ParamByName('a').Value:=trim(edit5.Text);
      parameters.ParamByName('b').Value:=trim(edit6.Text);
      open;
    end;
  if DataModule3.ADOQuery2.RecordCount = 0 then
    begin
        application.MessageBox('用户名不存在，请确认','操作提示',64);
        exit; 
    end;

  //升级版本应注意要先记录当前登录用户的信息，此时应判断是否为系统管理员，或者在启动时判断，设置按钮为不可用状态
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('update userinfo set userPwd = '''+edit1.Text+
  ''' where username = '''+edit2.Text+'''');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('新密码生效，请您牢记','操作提示',64); 
  end
  else
  begin
  application.MessageBox('口令不一致，请您确认','操作提示',64);
  exit;
  end;
end;

procedure Tsystemconfigfrm.FormShow(Sender: TObject);
begin
  systemconfigfrm.ComboBox1.Items.Add('Y');
  systemconfigfrm.ComboBox1.Items.Add('N');

  datamodule3.adoquery3.SQL.Clear;
  datamodule3.adoquery3.SQL.Add('select distinct quickbuttonname,buttonfunction from sysconfig');
  datamodule3.adoquery3.Open;
end;

end.
