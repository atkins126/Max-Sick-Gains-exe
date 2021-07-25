unit Unit7010_Textures;

interface

uses
  FreeImage, Winapi.Windows, Unit9020_Types, Vcl.Graphics;

function LoadToBitmap(fileName: string; fileFormat: FREE_IMAGE_FORMAT; loadInto:
  TBitmap; windowHandle: HWND; OnFailedToOpen: TProcedureNoParams; Validate:
  TBitmapForceValid): Boolean;

procedure TexNotOpened;

function Force24BppTga(dib: PFIBITMAP): PFIBITMAP;

implementation

uses
  Vcl.Forms;

function DibToTBitmap(dib: PFIBITMAP; windowHandle: HWND; loadInto: TBitmap):
  Boolean;
var
  bitmap: TBitmap;
  DC: HDC;
  PBH: PBitmapInfoHeader;
  PBI: PBitmapInfo;
begin
  bitmap := TBitmap.Create;
  bitmap.Assign(nil);
  DC := GetDC(windowHandle);
  try
    PBH := FreeImage_GetInfoHeader(dib);
    PBI := FreeImage_GetInfo(dib);
    // Dib to Delphi (Windows?) bitmap
    bitmap.Handle := CreateDIBitmap(
      DC,
      PBH^,
      CBM_INIT,
      PChar(FreeImage_GetBits(dib)),
      PBI^, DIB_RGB_COLORS
      );

    loadInto.Assign(bitmap);
    Result := true;
  finally
    bitmap.Free;
    ReleaseDC(windowHandle, DC);
  end;
end;

function LoadToBitmap(fileName: string; fileFormat: FREE_IMAGE_FORMAT; loadInto:
  TBitmap; windowHandle: HWND; OnFailedToOpen: TProcedureNoParams; Validate:
  TBitmapForceValid): Boolean;
var
  dib: PFIBITMAP;
begin
  Result := False;
  // Load file
  dib := FreeImage_LoadU(FIF_TARGA, PWideChar(WideString(fileName)), 0);
  if dib = nil then
  begin
    OnFailedToOpen;
    Exit;
  end;

  try
    // Force it to be valid
    dib := Validate(dib);
    // Transform to TBitmap
    Result := DibToTBitmap(dib, windowHandle, loadInto);
  finally
    FreeImage_Unload(dib);
  end;
end;

procedure TexNotOpened;
begin
  Application.MessageBox('I couldn''t open your image for... reasons.' +
    #13#10#13#10 +
    'Maybe try to put it in a folder path containing only ANSI characters?',
    'Failed to open', MB_OK + MB_ICONSTOP + MB_TOPMOST);
end;

function Force24BppTga(dib: PFIBITMAP): PFIBITMAP;
var
  BPP: LongWord;
begin
  BPP := FreeImage_GetBPP(dib);
  if BPP <> 24 then
  begin
    Result := FreeImage_ConvertTo24Bits(dib);
    FreeImage_Unload(dib);
  end
  else
    Result := dib;
end;

end.

