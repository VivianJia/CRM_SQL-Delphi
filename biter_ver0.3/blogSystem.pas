unit blogSystem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls,mainfrm,ADODB,datamod, DB;

type
  Tblogfrm = class(TForm)
    PageControl1: TPageControl;
    生日提醒: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    RichEdit1: TRichEdit;
    DateTimePicker3: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    节日查询: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    纪念日: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DateTimePicker4: TDateTimePicker;
    RichEdit2: TRichEdit;
    Edit2: TEdit;
    DateTimePicker6: TDateTimePicker;
    备忘: TTabSheet;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid2: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label5: TLabel;
    DBGrid3: TDBGrid;
    Label6: TLabel;
    Label17: TLabel;
    DBGrid4: TDBGrid;
    PageControl2: TPageControl;
    allmemo: TTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    Edit3: TEdit;
    RichEdit3: TRichEdit;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBGrid5: TDBGrid;
    TabSheet2: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    DBGrid6: TDBGrid;
    Button11: TButton;
    Button12: TButton;
    TabSheet3: TTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DateTimePicker9: TDateTimePicker;
    RichEdit4: TRichEdit;
    Edit4: TEdit;
    DateTimePicker10: TDateTimePicker;
    DBGrid7: TDBGrid;
    TabSheet4: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBGrid8: TDBGrid;
    Button13: TButton;
    Button14: TButton;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Label35: TLabel;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Label36: TLabel;
    ComboBox11: TComboBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DateTimePicker8: TDateTimePicker;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  blogfrm: Tblogfrm;

implementation

{$R *.dfm}
//查询所有提醒备忘
procedure Tblogfrm.Button14Click(Sender: TObject);
begin
  datamodule3.vmmemo.SQL.Clear;
  datamodule3.vmmemo.SQL.Add('select distinct 提醒类型,添加时间,备注,提醒开始,过期时间 from vm_memo');
  datamodule3.vmmemo.Open;
end;

//添加纪念日提醒
procedure Tblogfrm.Button15Click(Sender: TObject);
begin
    if(edit2.Text = '') then
    begin
      application.MessageBox('温馨提示：相关客户姓名不能为空','操作提示',64);
      exit;
    end;
  datamodule3.adoquery2.SQL.Clear;
  datamodule3.adoquery2.SQL.Add('insert into memoblog(reminderType,Date,reminderID,begintime,terminal,reminderRemark,username) values(''F'','''+datetostr(now())+''',''F2'', '''+datetostr(DateTimePicker4.Date)+''', '''+datetostr(DateTimePicker8.Date)+''', '''+RichEdit2.Text+''',''wn'')');
  datamodule3.adoquery2.SQL.Add('insert into anniverary(relation,anniverary,reminderType,ID'+') values('''+edit2.Text+''','''+datetostr(DateTimePicker6.Date)+''',''F'',''F7'')');

  datamodule3.adoquery2.ExecSQL;
    application.MessageBox('恭喜您，添加成功','操作提示',64);
end;

procedure Tblogfrm.Button16Click(Sender: TObject);
begin
  DBGrid1.SelectedRows.Delete;
//  datamodule3.adoquery2.SQL.Clear;
//  datamodule3.adoquery2.SQL.Add('delete from memoblog where ');
//  datamodule3.adoquery2.SQL.Add('insert into anniverary(relation,anniverary,reminderType,ID'+') values('''+edit2.Text+''','''+datetostr(DateTimePicker6.Date)+''',''F'',''F7'')');

//  datamodule3.adoquery2.ExecSQL;
  application.MessageBox('温馨提示：日志已删除','操作提示',64);
  //bug01 实际并未对数据库进行操作
end;

procedure Tblogfrm.Button19Click(Sender: TObject);
begin
  datamodule3.bankClientQ1.SQL.Clear;
  datamodule3.bankClientQ1.SQL.Add('select distinct * from Rebirthday');
  datamodule3.bankClientQ1.Open;

end;
//添加数据
procedure Tblogfrm.Button1Click(Sender: TObject);
var
name:string;
i:integer;
begin
//  name:=combobox2.Text;
//    i := combobox2.ItemIndex;
//    name:=combobox2.Items.Strings[i];
    if(edit1.Text = '') then
    begin
      application.MessageBox('温馨提示：姓名不能为空','操作提示',64);
       exit;
    end;

  datamodule3.adoquery2.SQL.Clear;
  datamodule3.adoquery2.SQL.Add('insert into memoblog(reminderType,Date,reminderID,begintime,terminal,reminderRemark,username) values(''B'','''+datetostr(now())+''',''B2'', '''+datetostr(DateTimePicker2.Date)+''', '''+datetostr(DateTimePicker3.Date)+''', '''+RichEdit1.Text+''',''wn'')');
  datamodule3.adoquery2.SQL.Add('insert into birthday(cName,birthday,reminderType,ID'+') values('''+edit1.Text+''','''+datetostr(DateTimePicker1.Date)+''',''B'',''B3'')');

  datamodule3.adoquery2.ExecSQL;
  application.MessageBox('恭喜您，添加成功','操作提示',64);
end;

procedure Tblogfrm.Button20Click(Sender: TObject);
begin
//显示所有纪念日提醒
//bug 视图创建问题
  datamodule3.vmann.SQL.Clear;
  datamodule3.vmann.SQL.Add('select distinct 纪念日,相关人,提醒开始,过期时间,备注 from vm_ann');
  datamodule3.vmann.Open;
end;

procedure Tblogfrm.Button2Click(Sender: TObject);
begin
//删除数据
  DBGrid1.SelectedRows.Delete;
end;

procedure Tblogfrm.Button3Click(Sender: TObject);
begin
   blogfrm.Hide;

end;

procedure Tblogfrm.Button4Click(Sender: TObject);
begin
 //查询
 datamodule3.bankClientQ1.SQL.Clear;
  datamodule3.bankClientQ1.SQL.Add('select distinct * from vmfestival');
  datamodule3.bankClientQ1.Open;
end;

procedure Tblogfrm.Button5Click(Sender: TObject);
begin
   blogfrm.Hide;

end;

procedure Tblogfrm.Button7Click(Sender: TObject);
begin
    blogfrm.Hide;

end;

procedure Tblogfrm.Button9Click(Sender: TObject);
begin
  blogfrm.Hide;

end;

procedure Tblogfrm.ComboBox1Change(Sender: TObject);
begin
  //组合框改变的时候
end;

procedure Tblogfrm.FormShow(Sender: TObject);
var
  I: Integer;
begin
   blogfrm.combobox11.Items.Add('生日');  //B
   blogfrm.combobox11.Items.Add('节日');  //F
   blogfrm.combobox11.Items.Add('纪念日'); //A

   blogfrm.combobox1.Items.Add('1');
   blogfrm.combobox1.Items.Add('2');
   blogfrm.combobox1.Items.Add('3');
   blogfrm.combobox1.Items.Add('4');
   blogfrm.combobox1.Items.Add('5');
   blogfrm.combobox1.Items.Add('6');
   blogfrm.combobox1.Items.Add('7');
   blogfrm.combobox1.Items.Add('8');
   blogfrm.combobox1.Items.Add('9');
   blogfrm.combobox1.Items.Add('10');
   blogfrm.combobox1.Items.Add('11');
   blogfrm.combobox1.Items.Add('12');
   blogfrm.combobox10.Items.Add('1');
   blogfrm.combobox10.Items.Add('2');
   blogfrm.combobox10.Items.Add('3');
   blogfrm.combobox10.Items.Add('4');
   blogfrm.combobox10.Items.Add('5');
   blogfrm.combobox10.Items.Add('6');
   blogfrm.combobox10.Items.Add('7');
   blogfrm.combobox10.Items.Add('8');
   blogfrm.combobox10.Items.Add('9');
   blogfrm.combobox10.Items.Add('10');
   blogfrm.combobox10.Items.Add('11');
   blogfrm.combobox10.Items.Add('12');

  datamodule3.vmann.SQL.Clear;
  datamodule3.vmann.SQL.Add('select distinct 纪念日,相关人,提醒开始,过期时间,备注 from vm_ann');
  datamodule3.vmann.Open;
   for I := 0 to 30 do
   begin
    blogfrm.combobox8.Items.Add(inttostr(I+1));
   end;

   for I := 0 to 30 do
   begin
    blogfrm.combobox2.Items.Add(inttostr(I+1));
   end;

   for I := 1900 to 2012 do
   begin
    blogfrm.combobox9.Items.Add(inttostr(I));
   end;

  //显示所有生日提醒
  datamodule3.bankClientQ1.SQL.Clear;
  datamodule3.bankClientQ1.SQL.Add('select distinct * from Rebirthday');
  datamodule3.bankClientQ1.Open;
  //显示所有节日
  datamodule3.bankClientQ1.SQL.Clear;
  datamodule3.bankClientQ1.SQL.Add('select distinct * from vmfestival');
  datamodule3.bankClientQ1.Open;
  //显示所有memo
  datamodule3.vmmemo.SQL.Clear;
  datamodule3.vmmemo.SQL.Add('select distinct 提醒类型,添加时间,备注,提醒开始,过期时间 from vm_memo');
  datamodule3.vmmemo.Open;
end;
end.
