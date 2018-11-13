object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Google Analytics with OpenSSL'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAnalytics: TLabel
    Left = 8
    Top = 8
    Width = 200
    Height = 13
    Caption = 'https://www.google-analytics.com/collect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelResults: TLabel
    Left = 16
    Top = 309
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object ButtonSend: TButton
    Left = 8
    Top = 278
    Width = 75
    Height = 25
    Hint = 'Send Information to Google Analytics'
    Caption = 'Send'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = ButtonSendClick
  end
  object MemoResult: TMemo
    Left = 8
    Top = 328
    Width = 624
    Height = 144
    Color = clBtnFace
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object PageControl: TPageControl
    Left = 248
    Top = 59
    Width = 384
    Height = 198
    ActivePage = TabScreenView
    TabOrder = 2
    object TabScreenView: TTabSheet
      Hint = 'screenview'
      Caption = 'ScreenView'
      ExplicitLeft = 0
      ExplicitTop = 27
      object Label_SR: TLabel
        Left = 11
        Top = 60
        Width = 49
        Height = 13
        Caption = 'Param_SR'
      end
      object Label_AV: TLabel
        Left = 11
        Top = 32
        Width = 49
        Height = 13
        Caption = 'Param_AV'
      end
      object Label_UA: TLabel
        Left = 11
        Top = 6
        Width = 50
        Height = 13
        Caption = 'Param_UA'
      end
      object Label_DS: TLabel
        Left = 11
        Top = 87
        Width = 49
        Height = 13
        Caption = 'Param_DS'
      end
      object Label_CN: TLabel
        Left = 11
        Top = 114
        Width = 50
        Height = 13
        Caption = 'Param_CN'
      end
      object Edit_SR: TEdit
        Left = 75
        Top = 57
        Width = 121
        Height = 21
        Hint = 'Screen Resolution'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '800x600'
        TextHint = 'Screen Resolution'
      end
      object Edit_AV: TEdit
        Left = 75
        Top = 30
        Width = 121
        Height = 21
        Hint = 'Application Version'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '1.2.0.9'
        TextHint = 'Application Version'
      end
      object Edit_UA: TEdit
        Left = 75
        Top = 3
        Width = 121
        Height = 21
        Hint = 'User Agent'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Windows 10'
        TextHint = 'User Agent'
      end
      object Edit_DS: TEdit
        Left = 75
        Top = 84
        Width = 121
        Height = 21
        Hint = 'Data Source'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = 'App'
        TextHint = 'Data Source'
      end
      object Edit_CN: TEdit
        Left = 75
        Top = 111
        Width = 121
        Height = 21
        Hint = 'Campaign Name'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = 'Finance'
        TextHint = 'Campaign Name'
      end
    end
    object TabException: TTabSheet
      Hint = 'exception'
      Caption = 'Exception'
      ImageIndex = 2
      object Label_EXD: TLabel
        Left = 11
        Top = 9
        Width = 55
        Height = 13
        Caption = 'Param_EXD'
      end
      object Label_EXF: TLabel
        Left = 11
        Top = 35
        Width = 54
        Height = 13
        Caption = 'Param_EXF'
      end
      object Edit_EXF: TEdit
        Left = 75
        Top = 33
        Width = 121
        Height = 21
        Hint = 'Fatal Error'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '1'
        TextHint = 'Fatal Error'
      end
      object Edit_EXD: TEdit
        Left = 75
        Top = 6
        Width = 292
        Height = 21
        Hint = 'IO Exception'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Field is requerid'
        TextHint = 'IO Exception'
      end
    end
  end
  object PanelParams: TPanel
    Left = 8
    Top = 59
    Width = 234
    Height = 198
    TabOrder = 3
    object Label_V: TLabel
      Left = 15
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Param_V'
    end
    object Label_TID: TLabel
      Left = 15
      Top = 57
      Width = 53
      Height = 13
      Caption = 'Param_TID'
    end
    object Label_CID: TLabel
      Left = 15
      Top = 84
      Width = 54
      Height = 13
      Caption = 'Param_CID'
    end
    object Label_AN: TLabel
      Left = 15
      Top = 113
      Width = 50
      Height = 13
      Caption = 'Param_AN'
    end
    object Label_CD: TLabel
      Left = 15
      Top = 138
      Width = 50
      Height = 13
      Caption = 'Param_CD'
    end
    object LabelType: TLabel
      Left = 15
      Top = 8
      Width = 123
      Height = 13
      Caption = 'Basic Type of Information'
    end
    object Label_UID: TLabel
      Left = 15
      Top = 165
      Width = 54
      Height = 13
      Caption = 'Param_UID'
    end
    object Edit_V: TEdit
      Left = 79
      Top = 27
      Width = 121
      Height = 21
      Hint = 'Version of Protocol'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '1'
      TextHint = 'Version of Protocol'
    end
    object Edit_TID: TEdit
      Left = 79
      Top = 54
      Width = 121
      Height = 21
      Hint = 'Tracking ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'Tracking ID'
    end
    object Edit_CID: TEdit
      Left = 79
      Top = 81
      Width = 121
      Height = 21
      Hint = 'Client ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TextHint = 'Client ID'
    end
    object Edit_AN: TEdit
      Left = 79
      Top = 108
      Width = 121
      Height = 21
      Hint = 'Application Name'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'AppName'
      TextHint = 'Application Name'
    end
    object Edit_CD: TEdit
      Left = 79
      Top = 135
      Width = 121
      Height = 21
      Hint = 'Client Display'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'FrmMainMenu'
      TextHint = 'Client Display'
    end
    object Edit_UID: TEdit
      Left = 79
      Top = 162
      Width = 121
      Height = 21
      Hint = 'User ID'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = 'Developer'
      TextHint = 'User ID'
    end
  end
  object IdHTTP: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 360
    Top = 8
  end
  object IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 392
    Top = 8
  end
end
