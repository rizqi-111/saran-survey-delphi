unit U_01_pelayanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ZConnection, Buttons, jpeg, Menus, StrUtils,
  ComCtrls;

type
  TF_01_pelayanan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
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
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Image1: TImage;
    tgl: TDateTimePicker;
    lblWaktu: TLabel;
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
    Button1: TButton;
    ZQuery1: TZQuery;
    sarantxt: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_01_pelayanan: TF_01_pelayanan;
  vtabel:string ;


implementation

uses U_ZFunction_Terbilang, U_DM, U_Utama;

{$R *.dfm}

procedure TF_01_pelayanan.Button1Click(Sender: TObject);
begin
    if sarantxt.Text='' then
    begin
    MessageDlg('Kotak Saran Masih Kosong',mtWarning,[mbOK],0);
    sarantxt.SetFocus;
    Exit;
    end;
    ZQuery1.SQL.Text:='INSERT INTO `saran`(`Isi`, `input_tanggal`, `input_jam`) VALUES ('+
                      ''+QuotedStr(sarantxt.Text)+','+
                      ''+QuotedStr(FormatDateTime('yyyy-mm-dd',ZFunction_Terbilang.Ftanggalsekarang))+','+
                      ''+QuotedStr(FormatDateTime('hh:mm:ss',ZFunction_Terbilang.Fwaktusekarang))+')';
    ZQuery1.ExecSQL;
    MessageDlg('Terima Kasih Atas Saran Yang Anda Berikan',mtInformation,[mbOK],0);
    sarantxt.Clear;
    sarantxt.SetFocus;

    F_01_Pelayanan.Close;
end;

procedure TF_01_pelayanan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FUtama.S_01_pelayanan:=0;
  QM.Close;
  ZCommand.Close;
  Action:=caFree;
end;

procedure TF_01_pelayanan.FormCreate(Sender: TObject);
begin
  tgl.Date:=Now;
  sarantxt.Clear;
  sarantxt.ScrollBars:=ssVertical;
end;


procedure TF_01_pelayanan.Timer1Timer(Sender: TObject);
begin
  lblWaktu.Caption:=FormatDateTime('hh:mm:ss',Now);
end;

end.
