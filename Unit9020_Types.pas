unit Unit9020_Types;

interface

uses
  FreeImage, System.SysUtils;

type
  TStrToStr = reference to function(s: string): string;

  TVoidToStr = reference to function(): string;

  TProcedureNoParams = reference to procedure;

  TBitmapValidation = reference to function(dib: PFIBITMAP): Boolean;

  TBitmapForceValid = reference to function(dib: PFIBITMAP): PFIBITMAP;

  {Data used to draw the Player stages preview}
  TJourneyItem = record
    fitStage: string;
    minDays: Integer;
    blend: Real;
    startWeight: Integer;
    endWeight: Integer;
    widthInPixels: Integer;
    blendInPixels: Integer;
    startInPixels: Integer;
    endInPixels: Integer;
  public
    function ToString: string;
  end;

implementation

{ TJourneyItem }

function TJourneyItem.ToString: string;
begin
  Result := format('%s, %d, %d, %d, %d', [fitStage, widthInPixels, blendInPixels,
    startInPixels, endInPixels]);
end;

end.

