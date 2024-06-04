unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    btn5: TButton;
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
  Form6: TForm6;
  a: string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('insert into supplier values(null,"'+edt1.Text+'")');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Ditambah!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('update supplier set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from supplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('delete from supplier where id="'+a+'"');
DataModule4.Zsupplier.ExecSQL;

DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add('select * from suppplier');
DataModule4.Zsupplier.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
DataModule4.Zsupplier.SQL.Add ('SELECT * FROM supplier WHERE name LIKE "'+edt2.Text+'"');
DataModule4.Zsupplier.ExecSQL;
DataModule4.Zsupplier.Open;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zsupplier.Fields[1].AsString;
    a:= DataModule4.Zsupplier.Fields[0].AsString;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
DataModule4.Zsupplier.SQL.Clear;
edt2.Text := '';
DataModule4.Zsupplier.SQL.Add ('select * from supplier');
DataModule4.Zsupplier.Open;
end;

end.
