object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 121
  Width = 139
  object ZConnection2: TZConnection
    ControlsCodePage = cCP_UTF16
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_balai_veteriner'
    User = 'root'
    Protocol = 'mysql'
    Left = 56
    Top = 32
  end
end
