unit Unit7010_Textures;

interface

uses
  FreeImage, Winapi.Windows, Unit9020_Types, Vcl.Graphics, System.SysUtils,
  System.Math;

function LoadToBitmap(fileName: string; fileFormat: FREE_IMAGE_FORMAT; loadInto:
  TBitmap; windowHandle: HWND; OnFailedToOpen: TProcedureNoParams; Validate:
  TBitmapForceValid): Boolean;

procedure TexNotOpened;

function Force24BppTga(dib: PFIBITMAP): PFIBITMAP;

procedure GenerateTextures(const bg, fg: TPicture; const fitnessLevels: Byte;
  dirName, baseFileName: string; const maxRes: Integer);

implementation

uses
  Vcl.Forms, System.IOUtils;

procedure Blend(const canvas: TCanvas; const background, foreground: TGraphic;
  const alpha: Byte);
begin
  canvas.Draw(0, 0, background);
  canvas.Draw(0, 0, foreground, alpha);
end;

procedure TempToTga(const tempName, tgaName: string; const w, h: Integer);
var
  dib, dib24, dibR: PFIBITMAP;
begin
  // Load temp
  dib := FreeImage_LoadU(FIF_BMP, PWideChar(WideString(tempName)), 0);
  // Rescale
  dibR := FreeImage_Rescale(dib, w, h, FILTER_CATMULLROM);
  // Save
  dib24 := FreeImage_ConvertTo24Bits(dibR);
  FreeImage_SaveU(FIF_TARGA, dib24, PWideChar(WideString(tgaName)), 0);
  // Free memory
  FreeImage_Unload(dib);
  FreeImage_Unload(dib24);
  FreeImage_Unload(dibR);
end;

procedure GenerateTextures(const bg, fg: TPicture; const fitnessLevels: Byte;
  dirName, baseFileName: string; const maxRes: Integer);
var
  bmp: TBitmap;
  n: Integer;
  alpha: Byte;
  tmpFile, tgaFile: string;
begin
  dirName := IncludeTrailingPathDelimiter(dirName);
  bmp := TBitmap.Create;
  bmp.Width := bg.Bitmap.Width;
  bmp.Height := bg.Bitmap.Height;
  alpha := 0;
  n := 0;
  repeat
  	// Blend
    Blend(bmp.Canvas, bg.Graphic, fg.Graphic, alpha);
  	// Save to temp
    tmpFile := TPath.GetTempPath + 'Maxick_bitmap.bmp';
    bmp.SaveToFile(tmpFile);
  	// Convert temp to tga
    tgaFile := Format('%s%s_%.2d.tga', [dirName, baseFileName, n + 1]);
    TempToTga(tmpFile, tgaFile, maxRes, maxRes);
  	// Step
    n := n + 1;
    alpha := Min(255, Round(((1 / (fitnessLevels - 1)) * n) * 255));
  until n >= fitnessLevels;
  bmp.Free;
end;

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

