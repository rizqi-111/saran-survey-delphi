unit U_saran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ZConnection, Buttons, jpeg, Menus, StrUtils,
  ComCtrls, TeCanvas;

type
  TF_saran = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    QM: TZQuery;
    DS: TDataSource;
    Panel4: TPanel;
    Label5: TLabel;
    ZCommand: TZQuery;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    FloatField1: TFloatField;
    WideStringField6: TWideStringField;
    FloatField2: TFloatField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    Label2: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    QMtgl: TDateField;
    QMbulan: TWideStringField;
    QMtahun: TWideStringField;
    QMjam: TTimeField;
    QMinputd: TDateField;
    QMinputw: TTimeField;
    QMno_urut: TIntegerField;
    QMpuas1: TFloatField;
    QMtidak_puas1: TFloatField;
    panel2: TGroupBox;
    Label3: TLabel;
    umurtxt: TEdit;
    Label4: TLabel;
    jklgrb: TRadioGroup;
    laki: TRadioButton;
    perem: TRadioButton;
    Label6: TLabel;
    pdkn: TComboBox;
    Label7: TLabel;
    PEKERJAAN: TComboBox;
    Panel3: TPanel;
    Label8: TLabel;
    Panel5: TPanel;
    S01_SK: TRadioButton;
    S01_K: TRadioButton;
    S01_B: TRadioButton;
    S01_SB: TRadioButton;
    Panel6: TPanel;
    Label23: TLabel;
    S02_SK: TRadioButton;
    S02_K: TRadioButton;
    S02_B: TRadioButton;
    S02_SB: TRadioButton;
    Button1: TButton;
    Panel7: TPanel;
    Label9: TLabel;
    S03_SK: TRadioButton;
    S03_K: TRadioButton;
    S03_B: TRadioButton;
    S03_SB: TRadioButton;
    Panel8: TPanel;
    Label10: TLabel;
    S04_SK: TRadioButton;
    S04_K: TRadioButton;
    S04_B: TRadioButton;
    S04_SB: TRadioButton;
    Panel9: TPanel;
    Label11: TLabel;
    S05_SK: TRadioButton;
    S05_K: TRadioButton;
    S05_B: TRadioButton;
    S05_SB: TRadioButton;
    Panel10: TPanel;
    Label12: TLabel;
    S06_SK: TRadioButton;
    S06_K: TRadioButton;
    S06_B: TRadioButton;
    S06_SB: TRadioButton;
    Panel11: TPanel;
    Label13: TLabel;
    S07_SK: TRadioButton;
    S07_K: TRadioButton;
    S07_B: TRadioButton;
    S07_SB: TRadioButton;
    Panel12: TPanel;
    Label14: TLabel;
    S08_SK: TRadioButton;
    S08_K: TRadioButton;
    S08_B: TRadioButton;
    S08_SB: TRadioButton;
    Panel13: TPanel;
    Label15: TLabel;
    S09_SK: TRadioButton;
    S09_K: TRadioButton;
    S09_B: TRadioButton;
    S09_SB: TRadioButton;
    Panel14: TPanel;
    Label16: TLabel;
    S10_SK: TRadioButton;
    S10_K: TRadioButton;
    S10_B: TRadioButton;
    S10_SB: TRadioButton;
    Panel15: TPanel;
    Label17: TLabel;
    S11_SK: TRadioButton;
    S11_K: TRadioButton;
    S11_B: TRadioButton;
    S11_SB: TRadioButton;
    Panel16: TPanel;
    Label18: TLabel;
    S12_SK: TRadioButton;
    S12_K: TRadioButton;
    S12_B: TRadioButton;
    S12_SB: TRadioButton;
    Panel17: TPanel;
    Label19: TLabel;
    S13_SK: TRadioButton;
    S13_K: TRadioButton;
    S13_B: TRadioButton;
    S13_SB: TRadioButton;
    Panel18: TPanel;
    Label20: TLabel;
    S14_SK: TRadioButton;
    S14_K: TRadioButton;
    S14_B: TRadioButton;
    S14_SB: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure S01_SKClick(Sender: TObject);
    procedure S01_KClick(Sender: TObject);
    procedure S01_BClick(Sender: TObject);
    procedure S01_SBClick(Sender: TObject);
    procedure S02_SKClick(Sender: TObject);
    procedure S02_KClick(Sender: TObject);
    procedure S02_BClick(Sender: TObject);
    procedure S02_SBClick(Sender: TObject);
    procedure S03_SKClick(Sender: TObject);
    procedure S03_KClick(Sender: TObject);
    procedure S03_BClick(Sender: TObject);
    procedure S03_SBClick(Sender: TObject);
    procedure S04_SKClick(Sender: TObject);
    procedure S04_KClick(Sender: TObject);
    procedure S04_BClick(Sender: TObject);
    procedure S04_SBClick(Sender: TObject);
    procedure S05_SKClick(Sender: TObject);
    procedure S05_KClick(Sender: TObject);
    procedure S05_BClick(Sender: TObject);
    procedure S05_SBClick(Sender: TObject);
    procedure S06_SKClick(Sender: TObject);
    procedure S06_KClick(Sender: TObject);
    procedure S06_BClick(Sender: TObject);
    procedure S06_SBClick(Sender: TObject);
    procedure S07_SKClick(Sender: TObject);
    procedure S07_KClick(Sender: TObject);
    procedure S07_BClick(Sender: TObject);
    procedure S07_SBClick(Sender: TObject);
    procedure S08_SKClick(Sender: TObject);
    procedure S08_KClick(Sender: TObject);
    procedure S08_BClick(Sender: TObject);
    procedure S08_SBClick(Sender: TObject);
    procedure S09_SKClick(Sender: TObject);
    procedure S09_KClick(Sender: TObject);
    procedure S09_BClick(Sender: TObject);
    procedure S09_SBClick(Sender: TObject);
    procedure S10_SKClick(Sender: TObject);
    procedure S10_KClick(Sender: TObject);
    procedure S10_BClick(Sender: TObject);
    procedure S10_SBClick(Sender: TObject);
    procedure S11_SKClick(Sender: TObject);
    procedure S11_KClick(Sender: TObject);
    procedure S11_BClick(Sender: TObject);
    procedure S11_SBClick(Sender: TObject);
    procedure S12_SKClick(Sender: TObject);
    procedure S12_KClick(Sender: TObject);
    procedure S12_BClick(Sender: TObject);
    procedure S12_SBClick(Sender: TObject);
    procedure S13_SKClick(Sender: TObject);
    procedure S13_KClick(Sender: TObject);
    procedure S13_BClick(Sender: TObject);
    procedure S13_SBClick(Sender: TObject);
    procedure S14_SKClick(Sender: TObject);
    procedure S14_KClick(Sender: TObject);
    procedure S14_BClick(Sender: TObject);
    procedure S14_SBClick(Sender: TObject);
    procedure umurtxtKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_saran: TF_saran;
  S01 : integer;
  S02 : integer;
  S03 : integer;
  S04 : integer;
  S05 : integer;
  S06 : integer;
  S07 : integer;
  S08 : integer;
  S09 : integer;
  S10 : integer;
  S11 : integer;
  S12 : integer;
  S13 : integer;
  S14 : integer;
  didik : integer;
  jk : String;
  pdkn1 : String;
  pkrjn : String;

implementation

uses U_ZFunction_Terbilang, U_DM, U_Utama;
{$R *.dfm}

procedure TF_saran.Button1Click(Sender: TObject);
begin
if umurtxt.Text = '' then
begin
  MessageDlg('Silahkan Isi Umur Anda',mtInformation,[mbOK],0);
  umurtxt.SetFocus;
  Exit;
end;
if (laki.Checked = false) and (perem.Checked = false) then
begin
  MessageDlg('Silahkan Isi Jenis Kelamin Anda',mtInformation,[mbOK],0);
  laki.SetFocus;
  Exit;
end;

if(laki.Checked) then
jk := 'L' else
if (perem.Checked) then
jk := 'P';

pdkn1 := pdkn.Text;
pkrjn := PEKERJAAN.Text;

QM.SQL.Text:='INSERT INTO `survey`(`umur`,`jkl`, `pdkn`, `pkrjn`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s11`, `s12`, `s13`, `s14`, `input_tgl`, `input_jam`) VALUES ('+
              ''+QuotedSTR(umurtxt.Text)+','+
              ''+QuotedSTR(jk)+','+
              ''+QuotedSTR(pdkn1)+','+
              ''+QuotedSTR(pkrjn)+','+
              ''+InttoSTR(S01)+','+InttoSTR(S02)+','+InttoSTR(S03)+','+InttoSTR(S04)+','+InttoSTR(S05)+','+InttoSTR(S06)+','+InttoSTR(S07)+','+InttoSTR(S08)+','+InttoSTR(S09)+','+InttoSTR(S10)+','+InttoSTR(S11)+','+InttoSTR(S12)+','+InttoSTR(S13)+','+InttoSTR(S14)+','+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',ZFunction_Terbilang.Ftanggalsekarang))+','+
              ''+QuotedStr(FormatDateTime('hh:mm:ss',ZFunction_Terbilang.Fwaktusekarang))+')';
QM.ExecSQL;
MessageDlg('Terima Kasih Telah Mengisi Survey',mtInformation,[mbOK],0);

  S01_B.Checked:=true;
  S02_B.Checked:=true;
  S03_B.Checked:=true;
  S04_B.Checked:=true;
  S05_B.Checked:=true;
  S06_B.Checked:=true;
  S07_B.Checked:=true;
  S08_B.Checked:=true;
  S09_B.Checked:=true;
  S10_B.Checked:=true;
  S11_B.Checked:=true;
  S12_B.Checked:=true;
  S13_B.Checked:=true;
  S14_B.Checked:=true;

  umurtxt.Clear;

  F_saran.Close;
end;

procedure TF_saran.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FUtama.S_saran := 0;
  QM.Close;
  ZCommand.Close;
  Action := caFree;
end;

procedure TF_saran.FormCreate(Sender: TObject);
begin
  umurtxt.Clear;
  pdkn.Items.Add('SD KE BAWAH');
  pdkn.Items.Add('SLTP');
  pdkn.Items.Add('SLTA');
  pdkn.Items.Add('S1');
  pdkn.Items.Add('S2 KE ATAS');

  PEKERJAAN.Items.Add('PNS/TNI/POLRI');
  PEKERJAAN.Items.Add('PEGAWAI SWASTA');
  PEKERJAAN.Items.Add('WIRASWASTA');
  PEKERJAAN.Items.Add('PELAJAR/MAHASISWA');

  S01_B.Checked:=true;
  S02_B.Checked:=true;
  S03_B.Checked:=true;
  S04_B.Checked:=true;
  S05_B.Checked:=true;
  S06_B.Checked:=true;
  S07_B.Checked:=true;
  S08_B.Checked:=true;
  S09_B.Checked:=true;
  S10_B.Checked:=true;
  S11_B.Checked:=true;
  S12_B.Checked:=true;
  S13_B.Checked:=true;
  S14_B.Checked:=true;
end;

procedure TF_saran.S01_BClick(Sender: TObject);
begin
S01 := 3;
end;

procedure TF_saran.S01_KClick(Sender: TObject);
begin
S01 := 2;
end;

procedure TF_saran.S01_SBClick(Sender: TObject);
begin
S01 := 4;
end;

procedure TF_saran.S01_SKClick(Sender: TObject);
begin
S01 := 1;
end;

procedure TF_saran.S02_BClick(Sender: TObject);
begin
S02 := 3;
end;

procedure TF_saran.S02_KClick(Sender: TObject);
begin
S02 := 2;
end;

procedure TF_saran.S02_SBClick(Sender: TObject);
begin
S02 := 4;
end;

procedure TF_saran.S02_SKClick(Sender: TObject);
begin
S02 := 1;
end;

procedure TF_saran.S03_BClick(Sender: TObject);
begin
S03 := 3;
end;

procedure TF_saran.S03_KClick(Sender: TObject);
begin
S03 := 2;
end;

procedure TF_saran.S03_SBClick(Sender: TObject);
begin
S03 := 4;
end;

procedure TF_saran.S03_SKClick(Sender: TObject);
begin
s03 := 1;
end;

procedure TF_saran.S04_BClick(Sender: TObject);
begin
S04 := 3;
end;

procedure TF_saran.S04_KClick(Sender: TObject);
begin
S04 := 2;
end;

procedure TF_saran.S04_SBClick(Sender: TObject);
begin
S04 := 4;
end;

procedure TF_saran.S04_SKClick(Sender: TObject);
begin
S04 := 1;
end;

procedure TF_saran.S05_BClick(Sender: TObject);
begin
S05 := 3;
end;

procedure TF_saran.S05_KClick(Sender: TObject);
begin
S05 := 2;
end;

procedure TF_saran.S05_SBClick(Sender: TObject);
begin
S05 := 4;
end;

procedure TF_saran.S05_SKClick(Sender: TObject);
begin
S05 := 1;
end;

procedure TF_saran.S06_BClick(Sender: TObject);
begin
S06 := 3;
end;

procedure TF_saran.S06_KClick(Sender: TObject);
begin
S06 := 2;
end;

procedure TF_saran.S06_SBClick(Sender: TObject);
begin
S06 := 4;
end;

procedure TF_saran.S06_SKClick(Sender: TObject);
begin
S06 := 1;
end;

procedure TF_saran.S07_BClick(Sender: TObject);
begin
S07 := 3;
end;

procedure TF_saran.S07_KClick(Sender: TObject);
begin
S07 := 2
end;

procedure TF_saran.S07_SBClick(Sender: TObject);
begin
S07 := 4;
end;

procedure TF_saran.S07_SKClick(Sender: TObject);
begin
S07 := 1;
end;

procedure TF_saran.S08_BClick(Sender: TObject);
begin
S08 := 3;
end;

procedure TF_saran.S08_KClick(Sender: TObject);
begin
S08 := 2;
end;

procedure TF_saran.S08_SBClick(Sender: TObject);
begin
S08 := 4;
end;

procedure TF_saran.S08_SKClick(Sender: TObject);
begin
S08 := 1;
end;

procedure TF_saran.S09_BClick(Sender: TObject);
begin
S09 := 3;
end;

procedure TF_saran.S09_KClick(Sender: TObject);
begin
S09 := 2;
end;

procedure TF_saran.S09_SBClick(Sender: TObject);
begin
S09 := 4;
end;

procedure TF_saran.S09_SKClick(Sender: TObject);
begin
S09 := 1;
end;

procedure TF_saran.S10_BClick(Sender: TObject);
begin
S10 := 3;
end;

procedure TF_saran.S10_KClick(Sender: TObject);
begin
S10 := 2;
end;

procedure TF_saran.S10_SBClick(Sender: TObject);
begin
S10 := 4;
end;

Procedure TF_saran.S10_SKClick(Sender: TObject);
begin
S10 := 1;
end;

procedure TF_saran.S11_BClick(Sender: TObject);
begin
S11 := 3;
end;

procedure TF_saran.S11_KClick(Sender: TObject);
begin
S11 := 2;
end;

procedure TF_saran.S11_SBClick(Sender: TObject);
begin
S11 := 4;
end;

procedure TF_saran.S11_SKClick(Sender: TObject);
begin
S11 := 1;
end;

procedure TF_saran.S12_BClick(Sender: TObject);
begin
S12 := 3;
end;

procedure TF_saran.S12_KClick(Sender: TObject);
begin
S12 := 2;
end;

procedure TF_saran.S12_SBClick(Sender: TObject);
begin
S12 := 4;
end;

procedure TF_saran.S12_SKClick(Sender: TObject);
begin
S12 := 1;
end;

procedure TF_saran.S13_BClick(Sender: TObject);
begin
S13 := 3;
end;

procedure TF_saran.S13_KClick(Sender: TObject);
begin
S13 := 2;
end;

procedure TF_saran.S13_SBClick(Sender: TObject);
begin
S13 := 4;
end;

procedure TF_saran.S13_SKClick(Sender: TObject);
begin
S13 := 1;
end;

procedure TF_saran.S14_BClick(Sender: TObject);
begin
S14 := 3;
end;

procedure TF_saran.S14_KClick(Sender: TObject);
begin
S14 := 2;
end;

procedure TF_saran.S14_SBClick(Sender: TObject);
begin
S14 := 4;
end;

procedure TF_saran.S14_SKClick(Sender: TObject);
begin
S14 := 1;
end;

procedure TF_saran.umurtxtKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in['0'..'9', #8, #13]) then
begin
  ShowMessage('Maaf, Umur Hanya Boleh Diisi Angka');
  key:= #0;
  umurtxt.SetFocus;
end;

if Length(umurtxt.Text)>= 3 then
begin
  ShowMessage('Maaf, Umur Tidak Bisa Lebih dari 3 Digit');
  key := #0;
  umurtxt.SetFocus;
end;
end;

end.
