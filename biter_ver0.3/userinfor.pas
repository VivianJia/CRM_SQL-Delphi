unit userinfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,datamod;

type
  Tuserinforfrm = class(TForm)
    PageControl1: TPageControl;
    ������Ϣ: TTabSheet;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Edit19: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  userinforfrm: Tuserinforfrm;

implementation

uses mainfrm;

{$R *.dfm}
//����û�������Ϣ
procedure Tuserinforfrm.Button1Click(Sender: TObject);
var
   gender:string;
   i:integer;
    edu:string;
   j:integer;
begin
    gender:=combobox2.Text;
    i := combobox2.ItemIndex;
    gender:=combobox2.Items.Strings[i];
    if(gender <> '��') and (gender <> 'Ů') then
    begin
      application.MessageBox('�Ա���Ϊ��Ŷ','��ʾ',64);
       exit;
    end;
    if(edit2.Text = '') then
    begin
       application.MessageBox('���������ӹ���Ա����õ��û���','��ʾ',64);
       exit;
    end;

    edu:=combobox1.Text;
    j := combobox1.ItemIndex;
    edu:=combobox1.Items.Strings[j];

    DataModule3.adoquery1.Close;
    DataModule3.adoquery1.SQL.Clear;
    DataModule3.adoquery1.SQL.Add('insert into manager(MName, MGendar,MNum,MPosition, Mbirthday,MBranchNum,MTele,MAddress,MEduction,MColledge,MMaiger,username '+') values('''+edit1.Text+''','''+gender+''','''+edit3.Text+''','''+edit4.Text+''','''+datetostr(DateTimePicker1.Date)+''','''+edit6.Text+''','''+edit7.Text+''','''+edit8.Text+''','''+edu+''','''+edit19.Text+''','''+edit9.Text+''','''+edit2.Text+''')');
    DataModule3.adoquery1.ExecSQL;
    application.MessageBox('�޸ĳɹ�,���ĸ��Ի�������Ч','������ʾ',64);
end;

procedure Tuserinforfrm.Button2Click(Sender: TObject);
begin
  userinforfrm.Hide;
end;

procedure Tuserinforfrm.FormShow(Sender: TObject);
begin
  userinforfrm.ComboBox2.Items.Add('��');

  userinforfrm.ComboBox2.Items.Add('Ů');
  userinforfrm.ComboBox1.Items.Add('����');
  userinforfrm.ComboBox1.Items.Add('��ר');
  userinforfrm.ComboBox1.Items.Add('��ѧ');
  userinforfrm.ComboBox1.Items.Add('��ר');
end;

end.
