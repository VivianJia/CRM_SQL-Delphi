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
//��ȷ��ѯ����
procedure Tconditionqueryfrm.Button1Click(Sender: TObject);
 //��ѯ
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
  conditionqueryfrm.ComboBox1.Items.Add('��');

  conditionqueryfrm.ComboBox1.Items.Add('Ů');

  conditionqueryfrm.ComboBox2.Items.Add('�ܾ���');
  conditionqueryfrm.ComboBox2.Items.Add('���³�');
  conditionqueryfrm.ComboBox2.Items.Add('���񲿼��');
  conditionqueryfrm.ComboBox2.Items.Add('�����ֳ�');

  //�����İ汾��Ӧ�ÿ�����ʾ�����пͻ���λ���ƣ����Զ�����
   conditionqueryfrm.ComboBox3.Items.Add('������ú̿��');
  conditionqueryfrm.ComboBox3.Items.Add('�����п����');
  conditionqueryfrm.ComboBox3.Items.Add('������ũ��');
  conditionqueryfrm.ComboBox3.Items.Add('�������̲ݾ�');

   conditionqueryfrm.ComboBox4.Items.Add('��ҵ');      //ע��Ҫת�� C
  conditionqueryfrm.ComboBox4.Items.Add('����');       //ע��Ҫת�� P

  //�����İ汾��Ӧ�ÿ�����ʾ����λ���еĿͻ�������
  conditionqueryfrm.ComboBox5.Items.Add('01');
  conditionqueryfrm.ComboBox5.Items.Add('02');
end;

end.
