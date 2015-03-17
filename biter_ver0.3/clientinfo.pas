unit clientinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, mainfrm;

type
  Tclientinforfrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    TabSheet3: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ComboBox2: TComboBox;
    Edit18: TEdit;
    DateTimePicker2: TDateTimePicker;
    Edit19: TEdit;
    ComboBox3: TComboBox;
    RichEdit1: TRichEdit;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    Label19: TLabel;
    Edit20: TEdit;
    ComboBox1: TComboBox;
    edit4: TEdit;
    csrq: TEdit;
    Label20: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  clientinforfrm: Tclientinforfrm;

implementation

uses datamod;

{$R *.dfm}

//添加个人客户
procedure Tclientinforfrm.Button1Click(Sender: TObject);
var
  i :integer;
  gender:string;
begin
if (edit1.Text = '') or (edit6.Text = '')  then
  begin
       application.MessageBox('账号和姓名不能为空！','错误提示',64);
       exit;
  end;

  gender:=self.ComboBox1.Text;
  i:=self.ComboBox1.ItemIndex;
  gender:=self.ComboBox1.Items.Strings[i];
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('insert into client(cName, CAccount,CGender '+') values('''+edit1.Text+''','''+edit4.Text+''','''+gender+''')');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('添加成功,您可在查询界面中查询添加的客户信息','操作提示',64);

end;

procedure Tclientinforfrm.Button2Click(Sender: TObject);
begin
  clientinforfrm.Hide;
end;

procedure Tclientinforfrm.Button3Click(Sender: TObject);
//添加账户明细
var
  i :integer;
  trantype:string;
  tranatt:string;
  j:integer;
begin
if (edit18.Text = '') or (edit19.Text = '') then
  begin
       application.MessageBox('账号和交易金额等不能为空！','错误提示',64);
       exit;
  end;

  trantype:=self.ComboBox2.Text;
  i:=self.ComboBox2.ItemIndex;
  trantype:=self.ComboBox2.Items.Strings[i];
   if(trantype = '存入') then
   begin
     trantype := 'I';
   end;
     trantype := 'O';
  tranatt:=self.ComboBox3.Text;
  j:=self.ComboBox3.ItemIndex;
  tranatt:=self.ComboBox3.Items.Strings[j];


  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('insert into account(account,tranDate,tranType,tranAmount, tranAttribute '+') values('''+edit18.Text+''','''+datetostr(DateTimePicker2.Date)+''','''+trantype+''','''+edit19.Text+''','''+tranatt+''')');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('添加成功,您可在查询界面中查询添加的客户信息','操作提示',64);
end;

//添加企业客户
procedure Tclientinforfrm.Button5Click(Sender: TObject);
var
  i :integer;
  gender:string;
begin
if (edit9.Text = '') or (edit17.Text = '') or(edit14.Text = '') then
  begin
       application.MessageBox('账号/企业名/财务监管不能为空！','错误提示',64);
       exit;
  end;

  gender:=self.ComboBox1.Text;
  i:=self.ComboBox1.ItemIndex;
  gender:=self.ComboBox1.Items.Strings[i];
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('insert into client(CCompany, CAccount,CName '+') values('''+edit9.Text+''','''+edit17.Text+''','''+edit14.Text+''')');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('添加成功,您可在查询界面中查询添加的客户信息','操作提示',64);

end;

procedure Tclientinforfrm.FormShow(Sender: TObject);
begin
    clientinforfrm.combobox1.Items.Add('男');
    clientinforfrm.combobox1.Items.Add('女');
    clientinforfrm.combobox2.Items.Add('存入');
    clientinforfrm.combobox2.Items.Add('支出');
    clientinforfrm.combobox3.Items.Add('普通转账');
    clientinforfrm.combobox3.Items.Add('普通存款');
     clientinforfrm.combobox3.Items.Add('普通取款');
      clientinforfrm.combobox3.Items.Add('ATM存款');
       clientinforfrm.combobox3.Items.Add('ATM取款');
        clientinforfrm.combobox3.Items.Add('跨行转账');
end;

end.
