unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
 if edt1.Text = 'admin' then
  begin
  Form1.mm1.Items[1].Visible:= True;
  Form1.mm1.Items[2].Visible:= False;
  Form1.mm1.Items[3].Visible:= False;
  IsLoggedIn := True;
  ShowMessage('Anda Telah Login Sebagai Admin');
  edt1.Text := '';
  Form2.close;
  end else if edt1.Text = 'kasir' then
  begin
  Form1.mm1.Items[1].Visible:= False;
  Form1.mm1.Items[2].Visible:= True;
  Form1.mm1.Items[3].Visible:= False;
  IsLoggedIn := True;
  ShowMessage('Anda Telah Login Sebagai Kasir');
  edt1.Text := '';
  Form2.close;
  end else if edt1.Text = 'pemilik' then
  begin
  Form1.mm1.Items[1].Visible:= False;
  Form1.mm1.Items[2].Visible:= False;
  Form1.mm1.Items[3].Visible:= True;
  IsLoggedIn := True;
  ShowMessage('Anda Telah Login Sebagai Pemilik');
  edt1.Text := '';
  Form2.close;
  end else
  begin
  ShowMessage('User tidak ada!!!');
  edt1.Text := '';
  end;
end;

end.
