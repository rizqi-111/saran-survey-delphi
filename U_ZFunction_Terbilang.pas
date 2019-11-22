unit U_ZFunction_Terbilang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShellAPI, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,QRPDFFilt,QuickRpt,
  StdCtrls;

type
  TZFunction_Terbilang = class(TForm)
    QWaktuSekarang: TZQuery;
    ZCommand: TZQuery;
    QWaktuSekarangwaktu: TDateTimeField;
    QWaktuSekarangtgl: TDateField;
    QWaktuSekarangjam: TTimeField;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  function fterbilang(sValue: string):string;
  function AddLeadingZeroes(const aNumber, Length : integer) : string;  //membuat function baru
  function Ftanggalsekarang:tdatetime;
  function Fwaktusekarang:tdatetime;
  procedure panggil_calc;
  procedure CreatePDF(Report: TQuickRep; FileName: String);overload;
  function ChangeChar(const Teks: String; chSource, chReplace: String ): string;
  procedure PRibuan(edit : Tedit; edt_polos: TEdit);
  end;

var
  ZFunction_Terbilang: TZFunction_Terbilang;
  STR1:string;

implementation

{$R *.dfm}

{ TZFunction_Terbilang }

function TZFunction_Terbilang.AddLeadingZeroes(const aNumber,
  Length: integer): string;
begin
  result := SysUtils.Format('%.*d', [Length, aNumber]) ;
end;



function TZFunction_Terbilang.fterbilang(sValue: string): string;
const
Angka : array [1..20] of string =
('', 'Satu', 'Dua', 'Tiga', 'Empat',
'Lima', 'Enam', 'Tujuh', 'Delapan',
'Sembilan', 'Sepuluh', 'Sebelas',
'Duabelas', 'Tigabelas', 'Empatbelas',
'Limabelas', 'Enambelas', 'Tujuhbelas',
'Delapanbelas', 'Sembilanbelas');
sPattern: string = '000000000000000';

var
S,kata : string;
Satu, Dua, Tiga, Belas, Gabung: string;
Sen, Sen1, Sen2: string;
Hitung : Int64;
one, two, three: Int64;

begin
One := 4;
Two := 5;
Three := 6;
Hitung := 1;
Kata := '';
S := copy(sPattern, 1, length(sPattern) - length(trim(sValue))) + sValue;
Sen1 := Copy(S, 14, 1);
Sen2 := Copy(S, 15, 1);
Sen := Sen1 + Sen2;
while Hitung < 5 do
begin
Satu := Copy(S, One, 1);
Dua := Copy(S, Two, 1);
Tiga := Copy(S, Three, 1);
Gabung := Satu + Dua + Tiga;

if StrToInt64(Satu) = 1 then
Kata := Kata + 'Seratus '
else
if StrToInt64(Satu) > 1 Then
Kata := Kata + Angka[StrToInt64(satu)+1] + ' Ratus ';

if StrToInt64(Dua) = 1 then
begin
Belas := Dua + Tiga;
Kata := Kata + Angka[StrToInt64(Belas)+1];
end
else
if StrToInt64(Dua) > 1 Then
Kata := Kata + Angka[StrToInt64(Dua)+1] + ' Puluh ' +
Angka[StrToInt64(Tiga)+1]
else
if (StrToInt64(Dua) = 0) and (StrToInt64(Tiga) > 0) Then
begin
if ((Hitung = 3) and (Gabung = '001')) or
((Hitung = 3) and (Gabung = ' 1')) then
Kata := Kata + 'Seribu '
else
Kata := Kata + Angka[StrToInt64(Tiga)+1];
end;

if (hitung = 1) and (StrToInt64(Gabung) > 0) then
Kata := Kata + ' Milyar '
else
if (Hitung = 2) and (StrToInt64(Gabung) > 0) then
Kata := Kata + ' Juta '
else
if (Hitung = 3) and (StrToInt64(Gabung) > 0) then
begin
if (Gabung = '001') or (Gabung = ' 1') then
Kata := Kata + ''
else
Kata := Kata + ' Ribu ';
end;
Hitung := Hitung + 1;
One := One + 3;
Two := Two + 3;
Three := Three + 3;
end;
if length(Kata) > 1 then Kata := Kata + ' Rupiah ';
Result := Kata;
end;

function TZFunction_Terbilang.Fwaktusekarang: tdatetime;
begin
  with ZCommand do
  begin
    close;
    SQL.Clear;
    SQL.Add('update tbl_z_waktu set waktu=now(), tgl=now(), jam=now();');
    ExecSQL;
  end;
  with QWaktuSekarang do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * from tbl_z_waktu');
    Open;
  end;
  Result:=QWaktuSekarangwaktu.AsDateTime;
end;

function TZFunction_Terbilang.ChangeChar(const Teks: String; chSource,
  chReplace: String): string;
var i: byte;
begin
  for i:= 1 to length(Teks) do
  begin
    if Teks[i] = chSource then
    Result := Result + chReplace
  else
    Result := Result + Teks[i];
  end;
end;

procedure TZFunction_Terbilang.CreatePDF(Report: TQuickRep; FileName: String);
var aPdf: TQRPDFDocumentFilter;
begin
  FileName:= ChangeChar(FileName, '\', '/');
  aPDF := TQRPDFDocumentFilter.Create(FileName);
  Report.ExportToFilter(aPDF);
  FreeAndNil(aPdf);
end;

function TZFunction_Terbilang.Ftanggalsekarang: tdatetime;
begin
  with ZCommand do
  begin
    close;
    SQL.Clear;
    SQL.Add('update tbl_z_waktu set waktu=now(), tgl=now(), jam=now();');
    ExecSQL;
  end;
  with QWaktuSekarang do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * from tbl_z_waktu');
    Open;
  end;
  Result:=QWaktuSekarangtgl.AsDateTime;
end;

procedure TZFunction_Terbilang.panggil_calc;
begin
ShellExecute(Handle, 'open','C:\WINDOWS\system32\calc.exe' ,nil, nil, SW_SHOWNORMAL)
end;



procedure TZFunction_Terbilang.PRibuan(edit, edt_polos: TEdit);
var
  sRupiah: string;
  iRupiah: Currency;
begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edit.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
  iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

  //currency --> format ribuan
  edit.Text := FormatCurr('#,###',iRupiah);
  edit.SelStart := length(edit.text);
  edt_polos.Text:=sRupiah;
  //ShowMessage(sRupiah);
  //ShowMessage(CurrToStr(iRupiah));
end;

end.
