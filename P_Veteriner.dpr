program P_Veteriner;

uses
  Forms,
  U_Utama in 'U_Utama.pas' {FUtama},
  U_ZFunction_Terbilang in 'U_ZFunction_Terbilang.pas' {ZFunction_Terbilang},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_01_pelayanan in 'U_01_pelayanan.pas' {F_01_pelayanan},
  U_saran in 'U_saran.pas' {F_saran},
  ShockwaveFlashObjects_TLB in 'C:\Users\WINDOWS\Documents\RAD Studio\7.0\Imports\ShockwaveFlashObjects_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFUtama, FUtama);
  Application.CreateForm(TZFunction_Terbilang, ZFunction_Terbilang);
  Application.Run;
end.
