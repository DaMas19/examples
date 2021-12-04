library ndActions;

uses
  Windows,
  Types,
  Forms,
  SysUtils,
  Classes,
  dmMain in 'Modules\dmMain.pas' {DM: TDataModule},
  ndActions_h in 'Headers\ndActions_h.pas',
  ndActions_lib in 'Headers\ndActions_lib.pas',
  ndaUtils in 'Modules\ndaUtils.pas',
  ndaMain in 'Modules\ndaMain.pas',
  ndaThreadType in 'Modules\ndaThreadType.pas',
  ndActions_U in 'Headers\ndActions_U.pas',
  ndActions_lib2 in 'Headers\ndActions_lib2.pas',
  ndaJSON in 'Modules\ndaJSON.pas',
  ndaConst in 'Modules\ndaConst.pas';

{$R *.res}
{$R+}
{$E ndd} // файла *.ndd

procedure DllEntryPoint(Reason: DWORD);
begin
  case Reason of

    DLL_PROCESS_ATTACH:
      ;

    DLL_THREAD_ATTACH:
      ;

    DLL_THREAD_DETACH:
      ;

    DLL_PROCESS_DETACH:
      begin
        if Assigned(DM) then
        begin
          DM.aLog.Log('Библиотека выгружена.');
          FreeAndNil(DM);
        end;

      end;
  end;
end;

exports
  ndaMain.Init,
  ndaMain.Execute,
  ndaMain.LoadActions,
  ndaMain.Status,
  ndaMain.ActionAsBinary,
  ndaMain.ActionFromBinary,
  ndaMain.LoadGoodsList,
  ndaMain.LoadActionsList,
  ndaMain.SetOptionsDebug,
  ndaMain.CheckDbConnect;

begin

  DllProc := @DllEntryPoint;

  if not Assigned(DM) then
    DM := TDM.Create(nil);

  DM.aLog.Log('');  
  DM.aLog.Log(GetVersion(ExtractFileName(GetDllName()) + ': '));
  DM.aLog.Log('Библиотека загружена.');
end.

