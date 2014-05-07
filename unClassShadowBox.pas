unit unClassShadowBox;

interface
uses unClassBox, ExtCtrls, Graphics;

Type TShadowBox = class(TBox)
  private
    function GetDescloc: Integer;
    procedure SetDesloc(const Value: Integer);
    function GetBorderColor: Integer;
    procedure SetBorderColor(const Value: Integer);
  protected
    fDesloc: integer;
    fShadowColor: Integer;

    procedure Hide; override;
    procedure Show; override;

  public
    constructor Create(crLeft, crTop, crRight, crBottom, crDesloc: integer;
                        crImgFundo: TImage); overload;
    property Desloc: Integer read GetDescloc write SetDesloc;
    property BorderColor: Integer read GetBorderColor write SetBorderColor;
end;

implementation

{ TShadowBox }

constructor TShadowBox.Create(crLeft, crTop, crRight, crBottom,
  crDesloc: integer; crImgFundo: TImage);
begin
  if(crDesloc > 0) then
    fDesloc := crDesloc;
  inherited Create(crLeft, crTop, crRight, crBottom, crImgFundo);
end;

function TShadowBox.GetBorderColor: Integer;
begin
  result := fShadowColor;
end;

function TShadowBox.GetDescloc: Integer;
begin
  result := fDesloc;
end;

procedure TShadowBox.Hide;
begin
  with fImg.Canvas do
  begin
    Pen.Color := clWhite;
    Brush.Color := clWhite;

    Rectangle(fLeft, fTop, fRight + fDesloc, fBottom + fDesloc);
  end;
end;

procedure TShadowBox.SetBorderColor(const Value: Integer);
begin
  if(Value <> fShadowColor) then
  begin
    Hide;
    if(Value > 0) AND (Value <> fShadowColor) then
      fShadowColor := Value
    else
      fShadowColor := clGray;
    Show;
  end;
end;

procedure TShadowBox.SetDesloc(const Value: Integer);
begin
  if(Value >= 2) AND (Value <= 4) AND (fDesloc <> Value) then
  begin
    Hide;
    fDesloc := Value;
    Show;
  end;
end;

procedure TShadowBox.Show;
begin
  with fImg.Canvas do
  begin
    Pen.Color := fShadowColor;
    Brush.Color := fShadowColor;
    Rectangle(fLeft + fDesloc, fTop + fDesloc, fRight + fDesloc, fBottom + fDesloc);
    inherited;
  end;
end;

end.
