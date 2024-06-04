object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 311
  Top = 281
  Height = 235
  Width = 443
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql.dll'
    Left = 56
    Top = 48
  end
  object Zkategori: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 120
    Top = 48
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 120
    Top = 112
  end
  object Zsatuan: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 176
    Top = 48
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 176
    Top = 112
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 272
    Top = 112
  end
  object Zsupplier: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 272
    Top = 48
  end
  object Zuser: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 224
    Top = 48
  end
  object Zbarang: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 328
    Top = 48
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 224
    Top = 112
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 328
    Top = 112
  end
end
