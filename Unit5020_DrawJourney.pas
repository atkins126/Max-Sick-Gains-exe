unit Unit5020_DrawJourney;

interface

uses
  Winapi.Windows, Vcl.Graphics, System.Types, System.Math,
  System.Generics.Collections, Unit9020_Types, Functional.FuncFactory,
  System.SysUtils;

procedure DrawJourney(const cnv: TCanvas; const w, h: Integer; const aData:
  TList<TJourneyItem>); overload;

procedure DrawJourney(const bmp: TBitmap; const w, h: Integer; const aData:
  TList<TJourneyItem>); overload;

implementation

uses
  Functional.Sequence;

function GetTotalDays(const aData: TList<TJourneyItem>): Integer;
var
  totalDays: TFoldFunc<TJourneyItem, Integer>;
begin
  totalDays :=
    function(const item: TJourneyItem; const acc: Integer): Integer
    begin
      Result := acc + item.minDays;
    end;
  Result := TSeq.From<TJourneyItem>(aData).Fold<Integer>(totalDays, 0);
end;

procedure CalcAbsolutePositions(const aData: TList<TJourneyItem>);
var
  i: Integer;
  temp: TJourneyItem;
begin
  for i := 1 to aData.Count - 1 do begin
    temp := aData[i];
    temp.startInPixels := aData[i - 1].endInPixels;
    temp.endInPixels := temp.widthInPixels + temp.startInPixels;
    aData[i] := temp;
  end;
end;

function GetDataInPixels(const aData: TList<TJourneyItem>; const w: Integer):
  TList<TJourneyItem>;
var
  totalDays: Integer;
begin
  totalDays := GetTotalDays(aData);
  // Total width plus relative position of elements
  Result := TSeq.From<TJourneyItem>(aData)
    .Map<TJourneyItem>(
    function(item: TJourneyItem): TJourneyItem
    begin
      Result := item;
      Result.widthInPixels := Round((item.minDays / totalDays) * w);
      Result.blendInPixels := Round(item.blend * Result.widthInPixels);
      Result.startInPixels := 0;
      Result.endInPixels := Result.widthInPixels;
    end)
    .ToList;
  // Calculate absolute positions
  CalcAbsolutePositions(Result);
end;

procedure SetColor(const cnv: TCanvas; const aColor: TColor);
begin
  cnv.Brush.Color := aColor;
  cnv.Pen.Color := aColor;
end;

procedure Gradient(cnv: TCanvas; rect: TRect; const fromCol, toCol: TColor);
var
  x: Integer;
  dr, dg, db: Extended;
  r1, r2, g1, g2, b1, b2: Byte;
  R, G, B: Byte;
  cnt: Integer;
begin
  r1 := GetRValue(fromCol);
  g1 := GetGValue(fromCol);
  b1 := GetBValue(fromCol);

  r2 := GetRValue(toCol);
  g2 := GetGValue(toCol);
  b2 := GetBValue(toCol);

  dr := (r2 - r1) / (rect.Right - rect.Left);
  dg := (g2 - g1) / (rect.Right - rect.Left);
  db := (b2 - b1) / (rect.Right - rect.Left);

  cnt := 0;
  for x := rect.Left to rect.Right - 1 do begin
    R := r1 + Ceil(dr * cnt);
    G := g1 + Ceil(dg * cnt);
    B := b1 + Ceil(db * cnt);

    cnv.Pen.Color := RGB(R, G, B);
    cnv.MoveTo(x, rect.Top);
    cnv.LineTo(x, rect.Bottom);
    Inc(cnt);
  end;
end;

procedure SetBgColor(const cnv: TCanvas; const w, h: Integer; const col: TColor);
begin
  SetColor(cnv, col);
  cnv.Rectangle(0, 0, w, h);
end;

procedure DrawJourney(const bmp: TBitmap; const w, h: Integer; const aData:
  TList<TJourneyItem>); overload;
var
  output: TBitmap;
begin
  output := TBitmap.Create;
  try
    output.Width := w;
    output.Height := h;
    DrawJourney(output.Canvas, w, h, aData);
    bmp.Assign(output);
  finally
    output.Free;
  end;
end;

function AlignRight(const aText: string; const cnv: TCanvas; const w: Integer):
  Integer;
begin
  Result := w - cnv.TextWidth(aText);
end;

function AlignVCenter(const aText: string; const cnv: TCanvas; const h: Integer):
  Integer;
begin
  Result := (h div 2) - (cnv.TextHeight(aText) div 2);
end;

function AlignBottom(const aText: string; const cnv: TCanvas; const h: Integer):
  Integer;
begin
  Result := h - cnv.TextHeight(aText);
end;

procedure DrawTitle(const item: TJourneyItem; const cnv: TCanvas);
var
  txt: string;
  start: Integer;
begin
  cnv.font.Size := 9;
  cnv.Font.Color := clWebLightgrey;
  txt := item.fitStage;
  start := (item.widthInPixels div 2) - (cnv.TextWidth(txt) div 2);

  if start < 0 then
    // Stage is too narrow to fit the text
    Exit;

  start := start + item.startInPixels;
  cnv.TextOut(start, 1, txt);
end;

procedure DrawBsBoundaries(const item: TJourneyItem; const cnv: TCanvas; const h:
  Integer);
const
  padding = 8;
var
  lTxt, rTxt: string;
  lTxtEnd, rTxtStart, y: Integer;
begin
  cnv.Font.Size := 6;
  cnv.Font.Color := clWebGold;

  lTxt := item.startWeight.ToString;
  lTxtEnd := cnv.TextWidth(lTxt) + padding;

  rTxt := item.endWeight.ToString;
  rTxtStart := AlignRight(rTxt, cnv, item.widthInPixels) - padding;

  // If one text is on top the other, none will be drawn
  if lTxtEnd >= rTxtStart then
    Exit;

  y := AlignBottom(lTxt, cnv, h);
  cnv.TextOut(item.startInPixels + padding, y, lTxt);
  cnv.TextOut(item.startInPixels + rTxtStart, y, rTxt);
end;

procedure DrawTotalDays(const cnv: TCanvas; const w, h: Integer; const days:
  Integer);
var
  txt: string;
  x, y: Integer;
begin
  cnv.Font.Size := 6;
  cnv.Font.Color := clWebSnow;
  cnv.Brush.Style := bsClear;
  txt := IntToStr(days);
  x := AlignRight(txt, cnv, w);
  y := AlignVCenter(txt, cnv, h);
  cnv.TextOut(x, y, txt);
end;

procedure DrawJourney(const cnv: TCanvas; const w, h: Integer; const aData:
  TList<TJourneyItem>);
const
  bgCol = clWebIndianRed;
  blendCol = clWebDarkSlateBlue;
var
  points: TList<TJourneyItem>;
begin
  SetBgColor(cnv, w, h, bgCol);
  points := GetDataInPixels(aData, w);
  // Left gradients
  TSeq.From<TJourneyItem>(points)
    .Skip(1)
    .ForEach(
    procedure(item: TJourneyItem)
    begin
      Gradient(cnv, rect(item.startInPixels, 0, item.startInPixels + item.blendInPixels,
        h), blendCol, bgCol)
    end);

  // Right gradients
  TSeq.From<TJourneyItem>(points)
    .Take(points.Count - 1)
    .ForEach(
    procedure(item: TJourneyItem)
    begin
      Gradient(cnv, rect(item.endInPixels - item.blendInPixels, 0, item.endInPixels,
        h),
        bgCol, blendCol);
    end);

  // Transition separators
  TSeq.From<TJourneyItem>(points)
    .Skip(1)
    .ForEach(
    procedure(item: TJourneyItem)
    const
      len = 6;
    var
      x: Integer;
    begin
      x := item.startInPixels;
      cnv.Pen.Color := clWebSnow;
      cnv.MoveTo(x, 0);
      cnv.LineTo(x, len);
      cnv.MoveTo(x, h);
      cnv.LineTo(x, h - len);
    end);

  // Draw text
  TSeq.From<TJourneyItem>(points).ForEach(
    procedure(item: TJourneyItem)
    begin
      cnv.Brush.Style := bsClear;
      DrawTitle(item, cnv);
      DrawBsBoundaries(item, cnv, h);
    end);

  // Total days
  DrawTotalDays(cnv, w, h, GetTotalDays(aData));

  points.Free;
end;

end.

