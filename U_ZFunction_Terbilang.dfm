object ZFunction_Terbilang: TZFunction_Terbilang
  Left = 0
  Top = 0
  Caption = 'ZFunction_Terbilang'
  ClientHeight = 124
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 187
    Height = 21
    TabOrder = 0
    Text = 'Syarat untuk ribuan'
  end
  object QWaktuSekarang: TZQuery
    Connection = DM.ZConnection2
    SQL.Strings = (
      'select * From tbl_z_waktu')
    Params = <>
    Left = 64
    Top = 56
    object QWaktuSekarangwaktu: TDateTimeField
      FieldName = 'waktu'
      Required = True
    end
    object QWaktuSekarangtgl: TDateField
      FieldName = 'tgl'
    end
    object QWaktuSekarangjam: TTimeField
      FieldName = 'jam'
    end
  end
  object ZCommand: TZQuery
    Connection = DM.ZConnection2
    Params = <>
    Left = 136
    Top = 24
  end
end
