unit loginfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls,mainfrm, DB, ADODB,datamod;

type
  Tlogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    user_ed: TEdit;
    pwd_ed: TEdit;
    进入系统: TButton;
    退出系统: TButton;
    procedure 退出系统Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure 进入系统Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;
  islogin:boolean = false;
implementation

{$R *.dfm}

procedure Tlogin.进入系统Click(Sender: TObject);
  begin
  with DataModule3.ADOQuery2 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from userinfo where userName = :a and userPwd = :b');
      parameters.ParamByName('a').Value:=trim(user_ed.Text);
      parameters.ParamByName('b').Value:=trim(pwd_ed.Text);
      open;
    end;
  if DataModule3.ADOQuery2.RecordCount>0 then
    begin
      islogin:=true;
      close;
    end
  else
      begin
        application.MessageBox('用户名或密码错误','操作提示',64);
        user_ed.Clear;
        pwd_ed.Clear;
        user_ed.SetFocus;
      end

  end;

procedure Tlogin.退出系统Click(Sender: TObject);
begin
  application.Terminate;
end;



procedure Tlogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if(islogin<>true) then
  application.Terminate;
end;

procedure Tlogin.FormShow(Sender: TObject);
begin
  self.user_ed.Text:='wn';
  self.pwd_ed.Text:='wn';
end;

end.
