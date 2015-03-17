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
//û��ѡ���˺�   ��ʾ����
  if account.Text = '' then
 begin
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account');
  datamodule3.vmaccout.Open;
 end
 //ѡ�����˺�
 else
 begin
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where �˺� = '''+account.Text+'''');
  datamodule3.vmaccout.Open;

   //ѡ���˽�������
  trantype:=self.ComboBox1.Text;
  i:=self.ComboBox1.ItemIndex;
  trantype:=self.ComboBox1.Items.Strings[i];
   if(trantype = '����') then
   begin
     trantype := 'I';
   end;
     trantype := 'O';
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where �������� = '''+trantype+'''');
  datamodule3.vmaccout.Open;
  date1 :=  datetostr(DateTimePicker1.DateTime) ;

  date2 :=  datetostr(DateTimePicker2.DateTime) ;
  //ѡ��������
  if(DateTimePicker1.DateTime <> 1900/01/01) and (DateTimePicker2.DateTime = 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where �������� > '''+date1+'''');
  datamodule3.vmaccout.Open;
    //ѡ��������
  if(DateTimePicker1.DateTime = 1900/01/01) and (DateTimePicker2.DateTime <> 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where �������� < '''+date2+'''');
  datamodule3.vmaccout.Open;
    //ѡ��������
  if(DateTimePicker1.DateTime <> 1900/01/01) and (DateTimePicker2.DateTime <> 1900/01/01) then
  datamodule3.vmaccout.SQL.Clear;
  datamodule3.vmaccout.SQL.Add('select distinct * from vm_account where �������� > '''+date1+''' and �������� < '''+date2+'''');
  datamodule3.vmaccout.Open;
 end;


end;

procedure Taccuratequeryfrm.Button2Click(Sender: TObject);
begin
  //����������
  accuratequeryfrm.Hide;
end;

procedure Taccuratequeryfrm.FormShow(Sender: TObject);
begin
    accuratequeryfrm.combobox1.Items.Add('����');    //ת��ΪI
    accuratequeryfrm.combobox1.Items.Add('֧��');    //ת��ΪO
end;

end.
