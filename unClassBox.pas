unit unClassBox;

interface
uses ExtCtrls, Graphics;

Type TBox = class
  private
    procedure SetLeft(const Value: Integer);
    procedure SetRigth(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetBottom(const Value: Integer);
    function GetHeight: Integer;
    procedure SetHeight(const Value: Integer);
    function GetArea: Real;
    function GetWidth: Integer;
    procedure SetWidth(const Value: Integer);
    function GetCorBorda: TColor;
    function GetCorFundo: TColor;
    procedure SetCorBorda(const Value: TColor);
    procedure SetCorFundo(const Value: TColor);

  protected
    fLeft:   Integer;
    fTop:    Integer;
    fBottom: Integer;
    fRight:  Integer;
    fImg:    TImage;
    fCorBorda,
    fCorFundo: TColor;

    procedure Show; virtual;
    procedure Hide; virtual;

  public
    constructor Create(crLeft, crTop, crRight, crBottom: Integer; crImg: TImage);
    destructor Destroy; override;

    property Left: Integer read fLeft write SetLeft;
    property Right: Integer read fRight write SetRigth;
    property Top: Integer read fTop write SetTop;
    property Bottom: Integer read fBottom write SetBottom;
    property Height: Integer read GetHeight write SetHeight;
    property Width: Integer read GetWidth write SetWidth;
    property CorBorda: TColor read GetCorBorda write SetCorBorda;
    property CorFundo: TColor read GetCorFundo write SetCorFundo;

    property Area: Real read GetArea;

  end;

implementation

{ TBox }

constructor TBox.Create(crLeft, crTop, crRight, crBottom: Integer;
  crImg: TImage);
begin

  fLeft   := crLeft;
  fTop    := crTop;
  fRight  := crRight;
  fBottom := crBottom;
  fImg    := crImg;

  Show;

end;

destructor TBox.Destroy;
begin
  Hide;
  Inherited;
end;

function TBox.GetArea: Real;
begin
  Result :=  Height * Width;
end;

function TBox.GetCorBorda: TColor;
begin
  result := fCorBorda;
end;

function TBox.GetCorFundo: TColor;
begin
  result := fCorFundo;
end;

function TBox.GetHeight: Integer;
begin
  Result := fBottom - fTop;
end;

function TBox.GetWidth: Integer;
begin
 Result := fRight - fLeft;
end;

procedure TBox.Hide;
begin
  with fImg.Canvas do
  begin
    Pen.Color := clWhite;
    Brush.Color := clWhite;
    Rectangle(fLeft, fTop, fRight, fBottom);
  end;
end;

procedure TBox.SetBottom(const Value: Integer);
begin
  if(Value >= 0) AND (Value <> fBottom) then
  begin
    Hide;

    fTop := fTop + (Value - fBottom);

    fBottom := Value;
    Show;
  end;
end;

procedure TBox.SetCorBorda(const Value: TColor);
begin
  if(fCorBorda <> Value) then
  begin
    Hide;
    fCorBorda := Value;
    Show;
  end;
end;

procedure TBox.SetCorFundo(const Value: TColor);
begin
  if(fCorFundo <> Value) then
  begin
    Hide;
    fCorFundo := Value;
    Show;
  end;
end;

procedure TBox.SetHeight(const Value: Integer);
begin
  if(Value >= 0) AND (Value <> Height) then
  begin
    Hide;
    fBottom := fTop + Value;
    Show;
  end;
end;

procedure TBox.SetLeft(const Value: Integer);
begin
  if (Value >= 0) AND (Value <> fLeft) then
  begin
    Hide;

    fRight := fRight + (Value - fLeft);

    fLeft := Value;
    Show;
  end;
end;

procedure TBox.SetRigth(const Value: Integer);
begin
  if (Value >=0) AND (Value <> fRight) then
  begin
    Hide;

    fLeft := fLeft + (Value - fRight);

    fRight := Value;
    Show;
  end;

  fRight := Value;
end;

procedure TBox.SetTop(const Value: Integer);
begin
  if (Value >= 0) AND (Value <> fTop) then
  begin
    Hide;

    fBottom := fBottom + (Value - fTop);

    fTop := Value;
    Show;
  end;
end;

procedure TBox.SetWidth(const Value: Integer);
begin
  if(Value >= 0) AND (Value <> Width) then
  begin
    Hide;

    fRight := fLeft + Value;

    Show;
  end;
end;

procedure TBox.Show;
begin

  with fImg.Canvas do
  begin
    Pen.Color := fCorBorda;
    Brush.Color := fCorFundo;
    Rectangle(fLeft, fTop, fRight, fBottom);
  end;

end;

end.
