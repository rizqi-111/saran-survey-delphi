unit U_01_pelayanan_Periode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus;

type
  TF_01_pelayanan_Periode = class(TForm)
    Panel1_Header: TPanel;
    lblJudul2: TLabel;
    lblJudul1: TLabel;
    Panel2_Kiri: TPanel;
    Label10: TLabel;
    lblsimpan: TLabel;
    lbledit: TLabel;
    lblbaru: TLabel;
    lblkeluar: TLabel;
    lblhapus: TLabel;
    lblbatal: TLabel;
    Label29: TLabel;
    Panel3_Kanan: TPanel;
    lblRecord: TLabel;
    PC_Laporan: TPageControl;
    TS_TransaksiJual: TTabSheet;
    Panel3: TPanel;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    ZCommand: TZQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    WideStringField3: TWideStringField;
    FloatField2: TFloatField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    QDetail: TZQuery;
    DSD: TDataSource;
    DBG_DTrans: TDBGrid;
    Panel5_Action: TPanel;
    POPUP_Transaksi: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    N2: TMenuItem;
    HapusTransaksi1: TMenuItem;
    btnRefresh: TBitBtn;
    btnkeluar: TBitBtn;
    GroupBox1: TGroupBox;
    Tgl1: TDateTimePicker;
    Tgl2: TDateTimePicker;
    Label1: TLabel;
    QIsiCombo: TZQuery;
    lblJumlahPuas: TLabel;
    edtPuas: TEdit;
    Label2: TLabel;
    edttotal: TEdit;
    Label3: TLabel;
    QSumD: TZQuery;
    ket_field: TMemo;
    Label4: TLabel;
    lblJumlahTidakPuas: TLabel;
    BitBtn1: TBitBtn;
    GroupBox4: TGroupBox;
    btnCari2: TBitBtn;
    BitBtn3: TBitBtn;
    Label21: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    CmbPilih: TComboBox;
    btnCari: TBitBtn;
    BtnPrint_Trans: TBitBtn;
    QIsiCombopengirim: TWideStringField;
    QDetailtgl: TDateField;
    QDetailbulan: TWideStringField;
    QDetailtahun: TWideStringField;
    QDetailjam: TTimeField;
    QDetailinputd: TDateField;
    QDetailinputw: TTimeField;
    QDetailno_urut: TIntegerField;
    Label5: TLabel;
    edtTidakPuas: TEdit;
    QSumDtgl: TDateField;
    Label7: TLabel;
    QDetailpuas1: TFloatField;
    QDetailtidak_puas1: TFloatField;
    QSumDsum_puas1: TFloatField;
    QSumDsum_tidak_puas1: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_MTransDblClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure BtnPrint_TransClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtPuasChange(Sender: TObject);
    procedure edtTidakPuasChange(Sender: TObject);
    procedure btnCari2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edtPilihChange(Sender: TObject);
    procedure edtPilih2Change(Sender: TObject);
    procedure edtCari1Change(Sender: TObject);
    procedure edtPilih3Change(Sender: TObject);

  private
    { Private declarations }
    procedure PSelect_Detail;
    procedure PSelect_Master;
    procedure PMDSelect_Detail;
    procedure PIsi_Combo_Pilih;
    procedure PIsi_Combo_Pilih2;
    procedure PIsi_Combo_Pilih3;
  public
    { Public declarations }
  end;

var
  F_01_pelayanan_Periode: TF_01_pelayanan_Periode;
  vKode_Master,vMDKode_Master:string;
  const    vtabel_DTrans='tbl_01_pelayanan';
           vpk_DTrans='kd_mutasi';

implementation

uses U_DM, U_Utama, U_ZFunction_Terbilang;

{$R *.dfm}

procedure TF_01_pelayanan_Periode.BitBtn3Click(Sender: TObject);
begin
//select
  btnCari2Click(Sender);
  if  QDetail.RecordCount <> 0 then
  begin
    //========tes excel report
    ket_field.Lines.Clear;
    ket_field.Lines.Add('Kepuasan='+'Seluruh');
    ket_field.Lines.Add('Petugas='+FUtama.lbluser.Caption);
    ket_field.Lines.Add('tgl_skarang='+FormatDateTime('dd-MMM-yyyy',now));
    ket_field.Lines.Add('tgl_1_2='+FormatDateTime('dd/MM/yyyy',Tgl1.Date)+' - ' + FormatDateTime('dd/MM/yyyy',Tgl2.Date));
   
    //==
  end;
end;

procedure TF_01_pelayanan_Periode.btnCari2Click(Sender: TObject);
begin
  try
    with QDetail do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM '+vtabel_DTrans+' where ( tgl >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl1.Date))+' AND  tgl <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl2.Date))+') order by tgl ');
      Open;
    end;
    //selek sum
    with QSumD do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select tgl, sum(puas1) as sum_puas1,  sum(tidak_puas1) as sum_tidak_puas1   From tbl_01_pelayanan where ( tgl >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl1.Date))+' AND  tgl  <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl2.Date))+') group by null');
      Open;
    end;
    //end
    edtPuas.Text:=QSumDsum_puas1.AsString;
    edtTidakPuas.Text:=QSumDsum_tidak_puas1.AsString;
    if QDetail.RecordCount=0 then
    begin
      MessageDlg('Data tidak ditemukan '+#13#10+'Jumlah data (Pencarian) = 0',mtWarning,[mbOK],0);
    end;
  except
  QSumD.Open;
    //exit;
  end;
  lblRecord.Caption:= IntToStr(QDetail.RecordCount)+ ' Record(s)';
end;

procedure TF_01_pelayanan_Periode.btnCariClick(Sender: TObject);
begin
  try
    with QDetail do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM '+vtabel_DTrans+' where ( (puas1 like '+QuotedStr('%'+CmbPilih.Text+'%')+'  ) and tgl >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl1.Date))+' AND  tgl <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl2.Date))+') order by tgl, jam');
      Open;
    end;
    //selek sum
    with QSumD do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select tgl, sum(puas1) as sum_puas1,  sum(tidak_puas1) as sum_tidak_puas1  From tbl_01_pelayanan where ( ( puas1 like '+QuotedStr('%'+CmbPilih.Text+'%')+' ) and tgl >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl1.Date))+' AND  tgl  <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',tgl2.Date))+') group by null');
      Open;
    end;
    //end
    edtPuas.Text:=QSumDsum_puas1.AsString;
    edtTidakPuas.Text:=QSumDsum_tidak_puas1.AsString;
    if QDetail.RecordCount=0 then
    begin
      MessageDlg('Data tidak ditemukan '+#13#10+'Jumlah data (Pencarian) = 0',mtWarning,[mbOK],0);
    end;
  except
  QSumD.Open;
    //exit;
  end;
  lblRecord.Caption:= IntToStr(QDetail.RecordCount)+ ' Record(s)';
end;

procedure TF_01_pelayanan_Periode.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_01_pelayanan_Periode.BtnPrint_TransClick(Sender: TObject);
begin
//select
  btnCariClick(Sender);
  if  QDetail.RecordCount <> 0 then
  begin
    //========tes excel report
    ket_field.Lines.Clear;
    ket_field.Lines.Add('Kepuasan='+CmbPilih.Text);
    ket_field.Lines.Add('Petugas='+FUtama.lbluser.Caption);
    ket_field.Lines.Add('tgl_skarang='+FormatDateTime('dd-MMM-yyyy',now));
    ket_field.Lines.Add('tgl_1_2='+FormatDateTime('dd/MM/yyyy',Tgl1.Date)+' - ' + FormatDateTime('dd/MM/yyyy',Tgl2.Date));
    
    //==
  end;
end;

procedure TF_01_pelayanan_Periode.btnRefreshClick(Sender: TObject);
begin
  CmbPilih.ItemIndex:=0;
  //CmbPilih3.ItemIndex:=0;
  QDetail.Close;
  Tgl1.Date:=Now-7;
  Tgl2.Date:=Now;
  edtPuas.Text:='0';
  edtTidakPuas.Text:='0';
  //edtRetur.Text:='0';
end;

procedure TF_01_pelayanan_Periode.DBG_MTransDblClick(Sender: TObject);
begin
  PSelect_Master;
end;

procedure TF_01_pelayanan_Periode.edtCari1Change(Sender: TObject);
begin
  PIsi_Combo_Pilih;
end;

procedure TF_01_pelayanan_Periode.edtPilih2Change(Sender: TObject);
begin
  PIsi_Combo_Pilih2;
end;

procedure TF_01_pelayanan_Periode.edtPilih3Change(Sender: TObject);
begin
  PIsi_Combo_Pilih3;
end;

procedure TF_01_pelayanan_Periode.edtPuasChange(Sender: TObject);
begin
  try
    lblJumlahPuas.Caption:=''+FormatFloat('##,###,###.##',StrToFloat(edtPuas.Text))+'';
  except
    lblJumlahPuas.Caption:='0';
  end;
end;

procedure TF_01_pelayanan_Periode.edtPilihChange(Sender: TObject);
begin
  PIsi_Combo_Pilih;
end;

procedure TF_01_pelayanan_Periode.edtTidakPuasChange(Sender: TObject);
begin
  try
    lblJumlahTidakPuas.Caption:=''+FormatFloat('##,###,###.##',StrToFloat(edtTidakPuas.Text))+'';
  except
    lblJumlahTidakPuas.Caption:='0';
  end;
end;

procedure TF_01_pelayanan_Periode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FUtama.S_01_Pelayanan_Periode:=0;
  Action:=caFree;
end;

procedure TF_01_pelayanan_Periode.FormCreate(Sender: TObject);
begin
  PIsi_Combo_Pilih;
  PIsi_Combo_Pilih2;
  PIsi_Combo_Pilih3;
  Tgl1.Date:=Now-7;
  Tgl2.Date:=Now;
end;

procedure TF_01_pelayanan_Periode.MenuItem1Click(Sender: TObject);
begin
  BtnPrint_TransClick(Sender);
end;

procedure TF_01_pelayanan_Periode.PIsi_Combo_Pilih;
var
  I: Integer;
begin
  {with QIsiCombo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from  tbl_01_1_pengirim where pengirim like '+QuotedStr('%'+edtPilih.Text+'%')+'');
    Open;
  end;
  QIsiCombo.First;
  CmbPilih.Clear;
  CmbPilih.Items.Add('');
  for I := 0 to QIsiCombo.RecordCount - 1 do
  begin
    CmbPilih.Items.Add(QIsiCombopengirim.AsString);
    QIsiCombo.Next;
  end;       }
end;

procedure TF_01_pelayanan_Periode.PIsi_Combo_Pilih2;
var
  I: Integer;
begin
 { with QIsiCombo2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from tbl_01_1_barang where nm_bj like '+QuotedStr('%'+edtPilih2.Text+'%')+'');
    Open;
  end;
  QIsiCombo2.First;
  CmbPilih2.Clear;
  CmbPilih2.Items.Add('');
  for I := 0 to QIsiCombo2.RecordCount - 1 do
  begin
    CmbPilih2.Items.Add(QIsiCombo2nm_bj.AsString);
    QIsiCombo2.Next;
  end;        }
end;

procedure TF_01_pelayanan_Periode.PIsi_Combo_Pilih3;
var
  I: Integer;
begin

end;

procedure TF_01_pelayanan_Periode.PMDSelect_Detail;
begin

end;


procedure TF_01_pelayanan_Periode.PSelect_Detail;
begin
  
end;

procedure TF_01_pelayanan_Periode.PSelect_Master;
begin

end;

procedure TF_01_pelayanan_Periode.Refresh1Click(Sender: TObject);
begin
  btnRefreshClick(Sender);
end;

end.
