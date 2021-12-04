object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 287
  Width = 359
  object db: TpFIBDatabase
    DBParams.Strings = (
      'lc_ctype=WIN1251'
      'sql_role_name=')
    DefaultTransaction = transTransactionRead
    DefaultUpdateTransaction = transTransactionWrite
    SQLDialect = 3
    Timeout = 0
    DesignDBOptions = []
    WaitForRestoreConnect = 3000
    SaveAliasParamsAfterConnect = False
    Left = 30
    Top = 36
  end
  object transTransactionWrite: TpFIBTransaction
    DefaultDatabase = db
    TimeoutAction = TACommit
    TRParams.Strings = (
      'write'
      'wait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 26
    Top = 91
  end
  object transTransactionRead: TpFIBTransaction
    DefaultDatabase = db
    TimeoutAction = TARollback
    TRParams.Strings = (
      'read'
      'nowait'
      'rec_version'
      'read_committed')
    TPBMode = tpbDefault
    Left = 26
    Top = 153
  end
end
