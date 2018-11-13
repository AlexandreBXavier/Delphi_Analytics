unit UnitMain;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
     IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls,
     Vcl.ComCtrls, Vcl.ExtCtrls;

type
     TFormMain = class(TForm)
          ButtonSend: TButton;
          LabelAnalytics: TLabel;
          MemoResult: TMemo;
          IdHTTP: TIdHTTP;
          IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
          LabelResults: TLabel;
          PageControl: TPageControl;
          TabScreenView: TTabSheet;
          TabException: TTabSheet;
          Edit_SR: TEdit;
          Label_SR: TLabel;
          Edit_AV: TEdit;
          Label_AV: TLabel;
          Edit_UA: TEdit;
          Label_UA: TLabel;
          Label_DS: TLabel;
          Edit_DS: TEdit;
          PanelParams: TPanel;
          Label_V: TLabel;
          Edit_V: TEdit;
          Label_TID: TLabel;
          Edit_TID: TEdit;
          Edit_CID: TEdit;
          Label_CID: TLabel;
          Label_AN: TLabel;
          Edit_AN: TEdit;
          Edit_CD: TEdit;
          Label_CD: TLabel;
          LabelType: TLabel;
          Edit_CN: TEdit;
          Label_CN: TLabel;
          Edit_UID: TEdit;
          Label_UID: TLabel;
          Edit_EXF: TEdit;
          Edit_EXD: TEdit;
          Label_EXD: TLabel;
          Label_EXF: TLabel;
          procedure ButtonSendClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonSendClick(Sender: TObject);
var
     sResponse: string;
     EnvStr: TStringList;
begin
     ButtonSend.Enabled := False;
     //
     MemoResult.Lines.Clear;
     //
     EnvStr := TStringList.Create;
     //
     EnvStr.Clear;
     //
     if PageControl.ActivePage = TabScreenView then
     begin
          EnvStr.Values['t'] := TabScreenView.Hint;
          EnvStr.Values['v'] := Edit_V.Text;
          EnvStr.Values['tid'] := Edit_TID.Text;
          EnvStr.Values['cid'] := Edit_CID.Text;
          EnvStr.Values['an'] := Edit_AN.Text;
          EnvStr.Values['cd'] := Edit_CD.Text;
          EnvStr.Values['uid'] := Edit_UID.Text;
          //
          EnvStr.Values['ua'] := Edit_UA.Text;
          EnvStr.Values['av'] := Edit_AV.Text;
          EnvStr.Values['sr'] := Edit_SR.Text;
          EnvStr.Values['ds'] := Edit_DS.Text;
          EnvStr.Values['cn'] := Edit_CN.Text;
     end;
     if PageControl.ActivePage = TabException then
     begin
          EnvStr.Values['t'] := TabException.Hint;
          EnvStr.Values['v'] := Edit_V.Text;
          EnvStr.Values['tid'] := Edit_TID.Text;
          EnvStr.Values['cid'] := Edit_CID.Text;
          EnvStr.Values['an'] := Edit_AN.Text;
          EnvStr.Values['cd'] := Edit_CD.Text;
          EnvStr.Values['uid'] := Edit_UID.Text;
          //
          EnvStr.Values['exd'] := Edit_EXD.Text;
          EnvStr.Values['exf'] := Edit_EXF.Text;
     end;
     //
     if (EnvStr.Text <> '') then
     begin
          try
               sResponse := IdHTTP.Post(LabelAnalytics.Caption, EnvStr);
          except
               on E: Exception do
                    ShowMessage('Error on request: '#13#10 + E.Message);
          end;
          //
          Application.ProcessMessages;
          //
          MemoResult.Lines.Add(DateTimeToStr(Now));
          MemoResult.Lines.Add('=====================');
          MemoResult.Lines.Add(sResponse);
          MemoResult.Lines.Add(IdHTTP.ResponseText);
          MemoResult.Lines.Add('=====================');
          MemoResult.Lines.Add(LabelAnalytics.Caption);
          MemoResult.Lines.Add(EnvStr.Text);
     end;
     //
     EnvStr.Free;
     //
     ButtonSend.Enabled := True;
end;

end.
