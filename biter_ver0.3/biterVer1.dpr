program biterVer1;

uses
  Forms,
  loginfrm in 'loginfrm.pas' {login},
  accuratequery in 'accuratequery.pas' {accuratequeryfrm},
  mainfrm in 'mainfrm.pas' {mainfrm1},
  datamod in 'datamod.pas' {DataModule3: TDataModule},
  blogSystem in 'blogSystem.pas' {blogfrm},
  userinfor in 'userinfor.pas' {userinforfrm},
  clientinfo in 'clientinfo.pas' {clientinforfrm},
  conditionquery in 'conditionquery.pas' {conditionqueryfrm},
  aboutinfor in 'aboutinfor.pas' {helpfrm},
  configfrm in 'configfrm.pas' {systemconfigfrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmainfrm1, mainfrm1);
  Application.CreateForm(Taccuratequeryfrm, accuratequeryfrm);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(Tblogfrm, blogfrm);
  Application.CreateForm(Tuserinforfrm, userinforfrm);
  Application.CreateForm(Tclientinforfrm, clientinforfrm);
  Application.CreateForm(Tconditionqueryfrm, conditionqueryfrm);
  Application.CreateForm(Thelpfrm, helpfrm);
  Application.CreateForm(Tsystemconfigfrm, systemconfigfrm);
  Application.CreateForm(Tlogin, login);
  Application.Run;
end.
