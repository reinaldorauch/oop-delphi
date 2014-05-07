unit Princ;

interface

uses
  unClassBox, unClassShadowBox,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormPrinc = class(TForm)
    ImgForm: TImage;
    BtnInstancia: TButton;
    BtnDesaloca: TButton;
    BtnMostra: TButton;
    BtnEsconde: TButton;
    BtnLeft: TButton;
    BtnRight: TButton;
    BtnTop: TButton;
    BtnBottom: TButton;
    BtnHeight: TButton;
    procedure BtnInstanciaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDesalocaClick(Sender: TObject);
    procedure BtnMostraClick(Sender: TObject);
    procedure BtnEscondeClick(Sender: TObject);
    procedure BtnLeftClick(Sender: TObject);
    procedure BtnRightClick(Sender: TObject);
    procedure BtnTopClick(Sender: TObject);
    procedure BtnBottomClick(Sender: TObject);
    procedure BtnHeightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrinc: TFormPrinc;
  Box: TBox;

implementation

{$R *.dfm}

procedure TFormPrinc.BtnBottomClick(Sender: TObject);
begin
  if(Assigned(Box)) then
    Box.Top := Box.Top - 5;
end;

procedure TFormPrinc.BtnDesalocaClick(Sender: TObject);
begin
  if Assigned(Box) then
    FreeAndNil(Box);
end;

procedure TFormPrinc.BtnEscondeClick(Sender: TObject);
begin
  if Assigned(Box) then
    ShowMessage('Privado');// Box.Hide;
end;

procedure TFormPrinc.BtnHeightClick(Sender: TObject);
begin
  if Assigned(Box) then
    Box.Height := Box.Height + 5;
end;

procedure TFormPrinc.BtnInstanciaClick(Sender: TObject);
begin
  if NOT Assigned(Box) then
  begin
    Box := TShadowBox.Create(10, 10, 210, 110, 5, ImgForm);
  end;
end;

procedure TFormPrinc.BtnLeftClick(Sender: TObject);
begin
    if Assigned(Box) then
      Box.Left := Box.Left + 5;
end;

procedure TFormPrinc.BtnMostraClick(Sender: TObject);
begin
  if Assigned(Box) then
    ShowMessage('Privado');//Box.Show;
end;

procedure TFormPrinc.BtnRightClick(Sender: TObject);
begin
  if(Assigned(Box)) then
    Box.Right := Box.Right - 5;
end;

procedure TFormPrinc.BtnTopClick(Sender: TObject);
begin
  if Assigned(Box) then
    Box.Top := Box.Top + 5;
end;

procedure TFormPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Box) then
    FreeAndNil(Box);
end;

end.
