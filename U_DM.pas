unit U_DM;

interface

uses
  SysUtils, Classes, DB, ADODB, ZSqlMetadata, ZSqlMonitor, ZIBEventAlerter,
  ZSqlProcessor, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  ZAbstractConnection;

type
  TDM = class(TDataModule)
    ZConnection2: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
//169.254.18.143
//192.168.1.254 ini ok
//192.168.1.250 ini opsi2
//localhost

end;

end.
