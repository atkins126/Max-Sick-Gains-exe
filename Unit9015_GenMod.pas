unit Unit9015_GenMod;

interface

uses
  Data.DB, Functional.Sequence, System.Generics.Collections, System.SysUtils,
  System.Classes;

function LuaAssign(aVar, aVal: string): string;

//function LuaTableContents(aContent: string): string;

function GenFitStage(ds: TDataSet): string;

function GenNpc(ds: TDataSet): string;

function GenRaces(races: string): string;

function LuaTableNewLineContents(const aContent: string): string;

function JsonKey(const key: string): string;

function JsonPair(key, value: string): string;

function JsonPairField(const ds: TDataSet; const aField: string): string;

function JsonObject(obj: string): string;

function JsonMasterObject(const obj: string): string;

implementation

uses
  Functions.Strings, Unit5010_ExportBs;

function LuaStr(aVal: string): string;
begin
  Result := EncloseStr('"')(aVal);
end;

function LuaArrayIndex(aIndex: string): string;
begin
  Result := EncloseStr('[', ']')(aIndex);
end;

function LuaTableContents(aContent: string): string;
begin
  Result := EncloseStr('{', '}')(aContent);
end;

function LuaStrArray(str: string): string;
var
  lst: TStringList;
begin
  lst := TStringList.Create;
  try
    lst.Text := str;
    Result := TSeq.From(lst)
      .Map<string>(LuaStr)
      .Fold<string>(PrettyComma(), '');
    Result := LuaTableContents(Result);
  finally
    lst.Free;
  end;
end;

function LuaTableItemDecl(const aTableId: string): string;
begin
  Result := LuaArrayIndex(aTableId);
end;

function LuaTableItemFromId(const ds: TDataSet): string;
begin
  // Returns a string in the form '[Id]'
  Result := LuaArrayIndex(ds.FieldByName('Id').AsString);
end;

function LuaTableItemDeclStr(const aTableId: string): string;
begin
  Result := LuaTableItemDecl(LuaStr(aTableId));
end;

function LuaTableNewLineContents(const aContent: string): string;
begin
  Result := EncloseStr('{'#13#10, #13#10'}')(aContent);
end;

function LuaAssign(aVar, aVal: string): string;
begin
  Result := aVar + ' = ' + aVal;
end;

function strField(const ds: TDataSet; aField: string): string;
begin
  Result := ds.FieldByName(aField).AsString;
end;

function LuaAssignField(const ds: TDataSet; aField: string): string;
begin
  // Returns a string in the form aField = aField.asString;
  // Use it when no processing is needed and field values will be used as is.
  Result := LuaAssign(aField, strField(ds, aField));
end;

function LuaAssignStrField(const ds: TDataSet; aField: string): string;
begin
  // Returns a string in the form aField = "aField.asString"
  Result := LuaAssign(aField, LuaStr(strField(ds, aField)));
end;

function LuaAssignStrListField(const ds: TDataSet; aField: string): string;
begin
  // Returns a string in the form
  //    aField = {"aField.asString", "aField.asString", "aField.asString"...}
  Result := LuaAssign(aField, LuaStrArray(strField(ds, aField)));
end;

function LuaAssignRef(const ds: TDataSet; aField, aRef: string): string;
begin
  // Returns a string in the form aField = aRef[aField.asString];
  Result := LuaAssign(aField, aRef + LuaArrayIndex(strField(ds, aField)));
end;

function JsonKey(const key: string): string;
begin
  Result := EncloseStr('"', '": ')(key);
end;

function JsonPair(key, value: string): string;
begin
  Result := JsonKey(key) + value;
end;

function JsonPairField(const ds: TDataSet; const aField: string): string;
begin
  Result := JsonPair(aField, ds.FieldByName(aField).AsString);
end;

function JsonObject(obj: string): string;
begin
  Result := EncloseStr('{', '}')(obj);
end;

function JsonMasterObject(const obj: string): string;
begin
  Result := EncloseStr('{'#13#10, #13#10'}')(obj);
end;

function ReduceCommon(const varDecl: string; const varContent: TArray<string>;
  const AssignFunc: TFunc<string, string, string>; const WrapperFunc: TFunc<
  string, string>): string;
var
  varVal: string;
begin
  varVal := TSeq.From<string>(varContent).Fold<string>(PrettyComma(), '');
  Result := AssignFunc(varDecl, WrapperFunc(varVal));
end;

function GenNpc(ds: TDataSet): string;
begin
  Result := ReduceCommon(
    '__formData|' + ds.FieldByName('uId').AsString,
    TArray<string>.Create(
    JsonPairField(ds, 'fitStage'),
    JsonPairField(ds, 'weight'),
    JsonPairField(ds, 'muscleDef')
    ),
    JsonPair, JsonObject
    );
end;

function GenFitStage(ds: TDataSet): string;
var
  femBs, manBs: string;
begin
  femBs := BodyslideToLua(ds.FieldByName('femBs').AsString);
  manBs := BodyslideToLua(ds.FieldByName('manBs').AsString);

  Result := ReduceCommon(
    LuaTableItemFromId(ds),
    TArray<string>.Create(
    LuaAssignStrField(ds, 'displayName'),
    LuaAssignField(ds, 'muscleDefType'),
//    LuaAssignField(ds, 'muscleDefLvl'),   Unused
      LuaAssign('femBs', LuaTableContents(femBs)),
    LuaAssign('manBs', LuaTableContents(manBs)),
    LuaAssignStrListField(ds, 'excludedRaces')
    ),
    LuaAssign, LuaTableContents
    );
end;

function GenRaces(races: string): string;
begin
  Result := LuaStrArray(races);
end;

end.

