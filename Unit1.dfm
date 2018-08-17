object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 375
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 16
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object labeluser: TLabel
    Left = 144
    Top = 56
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object labelsenha: TLabel
    Left = 144
    Top = 93
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 144
    Top = 136
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Label2: TLabel
    Left = 144
    Top = 176
    Width = 64
    Height = 13
    Caption = 'Arquivo Local'
  end
  object Label3: TLabel
    Left = 144
    Top = 221
    Width = 57
    Height = 13
    Caption = 'Destino FTP'
  end
  object host: TEdit
    Left = 144
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object user: TEdit
    Left = 144
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object senha: TEdit
    Left = 144
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object porta: TEdit
    Left = 144
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 136
    Top = 291
    Width = 169
    Height = 25
    Caption = 'Enviar Arquivo Teste'
    TabOrder = 4
    OnClick = Button1Click
  end
  object arquivo_local: TEdit
    Left = 144
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object destino: TEdit
    Left = 144
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 32
    Top = 24
  end
end
