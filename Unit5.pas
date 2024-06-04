unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    btn5: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a:string;
implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('insert into satuan values(null,"'+edt1.Text+'","'+edt3.Text+'")');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Ditambah!');
end;

procedure TForm5.btn2Click(Sender: TObject);

begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('update satuan set name="'+edt1.Text+'", deskripsi="'+edt3.Text+'" where id= "'+a+'"');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('delete from satuan where id="'+a+'"');
DataModule4.Zsatuan.ExecSQL;

DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add('select * from satuan');
DataModule4.Zsatuan.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
DataModule4.Zsatuan.SQL.Add ('SELECT * FROM satuan WHERE name LIKE "'+edt2.Text+'"');
DataModule4.Zsatuan.ExecSQL;
DataModule4.Zsatuan.Open;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zsatuan.Fields[1].AsString;
edt3.Text:= DataModule4.Zsatuan.Fields[2].AsString;
    a:= DataModule4.Zsatuan.Fields[0].AsString;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
DataModule4.Zsatuan.SQL.Clear;
edt2.Text := '';
DataModule4.Zsatuan.SQL.Add ('select * from satuan');
DataModule4.Zsatuan.Open;
end;

end.
