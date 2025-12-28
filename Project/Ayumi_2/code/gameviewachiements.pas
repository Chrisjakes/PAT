unit GameViewAchiements;

interface

uses Classes,
  CastleVectors, CastleUIControls, CastleControls, CastleKeysMouse;

type
  TViewAchiements = class(TCastleView)
  published
    { Components designed using CGE editor.
      These fields will be automatically initialized at Start. }
    // ButtonXxx: TCastleButton;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Start; override;
    procedure Update(const SecondsPassed: Single; var HandleInput: boolean); override;
  end;

var
  ViewAchiements: TViewAchiements;

implementation

constructor TViewAchiements.Create(AOwner: TComponent);
begin
  inherited;
  DesignUrl := 'castle-data:/gameviewachiements.castle-user-interface';
end;

procedure TViewAchiements.Start;
begin
  inherited;
  { Executed once when view starts. }
end;

procedure TViewAchiements.Update(const SecondsPassed: Single; var HandleInput: boolean);
begin
  inherited;
  { Executed every frame. }
end;

end.
