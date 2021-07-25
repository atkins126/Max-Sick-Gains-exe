unit Unit9020_Types;

interface

uses
  FreeImage;

type
  TStrToStr = reference to function(s: string): string;

  TProcedureNoParams = reference to procedure;

  TBitmapValidation = reference to function(dib: PFIBITMAP): Boolean;

  TBitmapForceValid = reference to function(dib: PFIBITMAP): PFIBITMAP;

implementation

end.

