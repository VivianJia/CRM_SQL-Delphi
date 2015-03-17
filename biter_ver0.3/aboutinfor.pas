unit aboutinfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg,mainfrm;

type
  Thelpfrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  helpfrm: Thelpfrm;

implementation

{$R *.dfm}

procedure Thelpfrm.Button3Click(Sender: TObject);
begin
  helpfrm.Hide;
end;

end.
