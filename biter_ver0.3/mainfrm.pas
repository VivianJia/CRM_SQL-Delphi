unit mainfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, jpeg, ExtCtrls;

  type
  Tmainfrm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N2: TMenuItem;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainfrm1: Tmainfrm1;


  implementation
  uses  aboutinfor,configfrm, conditionquery,accuratequery,blogSystem,userinfor,
  clientinfo,loginfrm;
{$R *.dfm}

//����������

procedure Tmainfrm1.FormShow(Sender: TObject);
begin
    application.CreateForm(Tlogin,login);
    login.ShowModal;
    login.free;
    N1.Enabled:=true;
//    mainfrm1.Show;
end;

//�û������޸�
procedure Tmainfrm1.N10Click(Sender: TObject);
begin
  systemconfigfrm.Show;
end;

//��������ϵͳ���������գ������� ���ѣ������Զ�����
procedure Tmainfrm1.N12Click(Sender: TObject);
begin
  blogfrm.Show;
end;

//���ղ�ѯ�����մ�ȫ
procedure Tmainfrm1.N13Click(Sender: TObject);
begin
  blogfrm.Show;
end;

//��ʷ��־������������ѣ����飬��־��
procedure Tmainfrm1.N14Click(Sender: TObject);
begin
   blogfrm.Show;

end;

//��������
procedure Tmainfrm1.N15Click(Sender: TObject);
begin
  helpfrm.Show;
end;

//�û���Ϣ����
procedure Tmainfrm1.N2Click(Sender: TObject);
begin
  userinforfrm.Show;
end;

//�ͻ���Ϣ����
procedure Tmainfrm1.N3Click(Sender: TObject);
begin
    clientinforfrm.Show;
end;

procedure Tmainfrm1.N4Click(Sender: TObject);
begin

end;

//��������
procedure Tmainfrm1.N5Click(Sender: TObject);
begin
  conditionqueryfrm.Show;
end;

//��ȷ��ѯ
procedure Tmainfrm1.N6Click(Sender: TObject);
begin
  accuratequeryfrm.Show;
end;

procedure Tmainfrm1.N7Click(Sender: TObject);
begin

end;

//ϵͳ��������
procedure Tmainfrm1.N8Click(Sender: TObject);
begin
  systemconfigfrm.Show;
end;

//�˻�����
procedure Tmainfrm1.N9Click(Sender: TObject);
begin
  systemconfigfrm.Show;
end;

end.
