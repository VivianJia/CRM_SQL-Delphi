unit configfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, mainfrm, Grids, DBGrids;

type
  Tsystemconfigfrm = class(TForm)
    PageControl1: TPageControl;
    ��������: TTabSheet;
    �˻�����: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Button4: TButton;
    Button6: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button7: TButton;
    �����޸�: TTabSheet;
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
  //�������û�
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  //�����汾Ӧע��Ҫ�ȼ�¼��ǰ��¼�û�����Ϣ����ʱӦ�ж��Ƿ�Ϊϵͳ����Ա������������ʱ�жϣ����ð�ťΪ������״̬
  if(edit4.Text = '') or (edit5.Text = '')then
  begin
    application.MessageBox('�û���/���벻��Ϊ��','������ʾ',64); 
    exit;
  end;
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.SQL.Add('insert into userinfo values('''+edit4.Text+''','''+edit5.Text+''',''U'')');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('���û������ɹ���Ȩ��Ϊ��ͨ�û�','������ʾ',64); 
  end
  else
  begin
  application.MessageBox('���һ�£�����ȷ��','������ʾ',64); 
  exit;
  end;
end;

procedure Tsystemconfigfrm.Button5Click(Sender: TObject);
begin
  //ȡ��������������
  systemconfigfrm.Hide;

end;

procedure Tsystemconfigfrm.Button6Click(Sender: TObject);

  //����ϵͳ����������������İ汾֧�ֹ���
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
  application.MessageBox('ϵͳ���óɹ�','������ʾ',64);

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
        application.MessageBox('�û��������ڣ���ȷ��','������ʾ',64);
        exit; 
    end;

  //�����汾Ӧע��Ҫ�ȼ�¼��ǰ��¼�û�����Ϣ����ʱӦ�ж��Ƿ�Ϊϵͳ����Ա������������ʱ�жϣ����ð�ťΪ������״̬
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('delete from userinfo where username = '''+edit4.Text+'''');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('ע���ɹ������û������н���ϵͳ��Ȩ��','������ʾ',64); 
  end
  else
  begin
  application.MessageBox('���һ�£�����ȷ��','������ʾ',64); 
  exit;
  end;
end;

procedure Tsystemconfigfrm.Button8Click(Sender: TObject);
  //�޸�����
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
        application.MessageBox('�û��������ڣ���ȷ��','������ʾ',64);
        exit; 
    end;

  //�����汾Ӧע��Ҫ�ȼ�¼��ǰ��¼�û�����Ϣ����ʱӦ�ж��Ƿ�Ϊϵͳ����Ա������������ʱ�жϣ����ð�ťΪ������״̬
  if (edit5.Text =  edit6.text) then
  begin
  DataModule3.adoquery1.Close;
  DataModule3.adoquery1.SQL.Clear;
  DataModule3.adoquery1.SQL.Add('update userinfo set userPwd = '''+edit1.Text+
  ''' where username = '''+edit2.Text+'''');
  DataModule3.adoquery1.ExecSQL;
  application.MessageBox('��������Ч�������μ�','������ʾ',64); 
  end
  else
  begin
  application.MessageBox('���һ�£�����ȷ��','������ʾ',64);
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
