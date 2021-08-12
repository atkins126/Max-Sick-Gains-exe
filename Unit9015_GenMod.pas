unit Unit9015_GenMod;

interface

uses
  Data.DB, Functional.Sequence, System.Generics.Collections, System.SysUtils,
  System.Classes, System.StrUtils, System.RegularExpressions;

function LuaAssign(aVar, aVal: string): string;

function LuaMasterTable(aVar, aVal: string): string;

function GenFitStage(ds: TDataSet): string;

function GenNpc(ds: TDataSet): string;

function GenRace(ds: TDataSet): string;

function LuaTableNewLineContents(const aContent: string): string;

function JsonKey(const key: string): string;

function JsonPair(key, value: string): string;

function JsonPairField(const ds: TDataSet; const aField: string): string;

function JsonObject(obj: string): string;

function JsonMasterObject(const obj: string): string;

implementation

uses
  Functions.Strings, Unit5010_ExportBs, Functions.Utils;

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
  // Returns a string in the form '["Id"]'
  Result := LuaTableItemDecl(LuaStr(aTableId));
end;

function LuaItemStrValAssign(const aTableId, value: string): string;
begin
  // Returns a string in the form '["Id"] = value'
  Result := LuaAssign(LuaTableItemDeclStr(aTableId), value);
end;

function LuaTableNewLineContents(const aContent: string): string;
begin
  Result := EncloseStr('{'#13#10, #13#10'}')(aContent);
end;

function LuaMasterTable(aVar, aVal: string): string;
begin
  Result := LuaAssign(aVar, LuaTableNewLineContents(aVal));
end;

function LuaAssign(aVar, aVal: string): string;
begin
  Result := aVar + ' = ' + aVal;
end;

function StrField(const ds: TDataSet; aField: string): string;
begin
  Result := ds.FieldByName(aField).AsString;
end;

function LuaAssignStr(aVar, aVal: string): string;
begin
  // Returns a string in the form aVar = "aVal"
  Result := LuaAssign(aVar, LuaStr(aVal));
end;

function LuaAssignField(const ds: TDataSet; aField: string): string;
begin
  // Returns a string in the form aField = aField.asString;
  // Use it when no processing is needed and field values will be used as is.
  Result := LuaAssign(aField, StrField(ds, aField));
end;

function LuaAssignStrFieldBase(const ds: TDataSet; aField: string; const func:
  TFunc<string, string>): string;
var
  f: string;
begin
  // Returns a string in the form aField = "aField.asString"
  f := func(StrField(ds, aField));
  Result := LuaAssignStr(aField, f);
//  Result := LuaAssign(aField, LuaStr(f));
end;

function LuaAssignStrField(const ds: TDataSet; aField: string): string;
begin
  // Returns a string in the form aField = "aField.asString"
  Result := LuaAssignStrFieldBase(ds, aField, Identity)
//  Result := LuaAssign(aField, LuaStr(StrField(ds, aField)));
end;

function LuaAssignStrFieldLower(const ds: TDataSet; aField: string): string;
var
  LowerCaseAdapter: TFunc<string, string>;
begin
  // Returns a string in the form aField = "aField.asstring"
  LowerCaseAdapter :=
    function(s: string): string
    begin
      Result := LowerCase(s);
    end;
  Result := LuaAssignStrFieldBase(ds, aField, LowerCaseAdapter);
end;

function LuaAssignStrListField(const ds: TDataSet; aField: string; const
  toLowerCase: Boolean = false): string;
var
  tbl: string;
begin
  // Returns a string in the form
  //    aField = {"aField.asString", "aField.asString", "aField.asString"...}
  tbl := LuaStrArray(StrField(ds, aField));
  tbl := AskedForLowerCase(toLowerCase, tbl);
  Result := LuaAssign(aField, tbl);
end;

function LuaAssignRef(const ds: TDataSet; aField, aRef: string): string;
begin
  // Returns a string in the form aField = aRef[aField.asString];
  Result := LuaAssign(aField, aRef + LuaArrayIndex(StrField(ds, aField)));
end;

function ReduceCommonBase(const varDecl: string; const varContent: TSeq<string>;
  const AssignFunc: TFunc<string, string, string>; const WrapperFunc: TFunc<
  string, string>): string;
var
  varVal: string;
begin
  varVal := varContent.Fold<string>(PrettyComma(), '');
  Result := AssignFunc(varDecl, WrapperFunc(varVal));
end;

function ReduceCommon(const varDecl: string; const varContent: TArray<string>;
  const AssignFunc: TFunc<string, string, string>; const WrapperFunc: TFunc<
  string, string>): string; overload;
begin
  Result := ReduceCommonBase(varDecl, TSeq.From<string>(varContent), AssignFunc,
    WrapperFunc);
end;

function ReduceCommon(const varDecl: string; const varContent: TStringList;
  const AssignFunc: TFunc<string, string, string>; const WrapperFunc: TFunc<
  string, string>): string; overload;
begin
  Result := ReduceCommonBase(varDecl, TSeq.From(varContent), AssignFunc,
    WrapperFunc);
end;

// Used for exporting data for the Formlist method for recognizing NPCs
// Hopefully this will never be used
function GenNpcForFormlist(ds: TDataSet): string;
begin
  Result := ReduceCommon(
    LuaTableItemDeclStr(LowerCase(StrField(ds, 'fullName') + StrField(ds, 'formId'))),
    TArray<string>.Create(
    LuaAssignField(ds, 'fitStage'),
    LuaAssignField(ds, 'weight'),
    LuaAssignField(ds, 'muscleDef'),
    LuaAssignStrField(ds, 'formId')
    ),
    LuaAssign, LuaTableContents
    );
end;

// That was an unreliable method, but it is still left here for reference.
function GenNpcForJFormMap(ds: TDataSet): string;
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

function GenNpc(ds: TDataSet): string;
begin
  Result := ReduceCommon(
    LuaTableItemDeclStr(LowerCase(StrField(ds, 'formId'))),
    TArray<string>.Create(
    LuaAssignField(ds, 'fitStage'),
    LuaAssignField(ds, 'weight'),
    LuaAssignField(ds, 'muscleDef'),
    LuaAssignStrFieldLower(ds, 'class'),
    LuaAssignStrFieldLower(ds, 'race')
    ),
    LuaAssign, LuaTableContents
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
    LuaAssignStrListField(ds, 'excludedRaces', true)
    ),
    LuaAssign, LuaTableContents
    );
end;

function TooShort(const s: string): Boolean;
begin
  Result := Length(s) <= 2;
end;

function MustBeValid(const s: string): Boolean;
begin
  // Can't contain spaces
  Result := not TRegEx.Create('\s').Match(s).Success;
  // Can't contain special Lua symbols
  Result := Result and
    (not TRegEx.Create('[\^\$\(\)\%\.\[\]\*\+\-\?\\]+').Match(s).Success);
end;

{ TODO :
Warn invalid race
Throw error on repeated }
function ValidEDID(const s: string): Boolean;
begin
  Result := NotNullStr(s) and (not TooShort(s)) and MustBeValid(s);
end;

function TrimAdapter(s: string): string;
begin
  Result := Trim(s);
end;

function GenRaceRacialGroupOriented(ds: TDataSet): string;
var
  races: TStringList;
  assigns: TSeq<string>;
begin
  Result := StrField(ds, 'abbreviation');
  races := StrToList(StrField(ds, 'races'), true, false);
  assigns := TSeq.From(races)
    .Map(TrimAdapter)
    .Filter(ValidEDID)
    .Map(
    function(race: string): string
    begin
      // Transforms race string to ["race"] = "Race"
      result := LuaItemStrValAssign(LowerCase(race), LuaStr(race));
    end);

  Result := ReduceCommonBase(StrField(ds, 'abbreviation'), assigns, LuaAssign,
    LuaTableContents);
  races.Free;
end;

function GenRace(ds: TDataSet): string;
var
  races: TStringList;
begin
  races := StrToList(StrField(ds, 'races'), true, false);
  Result := TSeq.From(races)
    .Map(TrimAdapter)
    .Filter(ValidEDID)
    .Map(
    function(race: string): string
    begin
      Result := ReduceCommon(
        LowerCase(race),
        TArray<string>.Create(
        LuaAssignStr('group', StrField(ds, 'abbreviation')),
        LuaAssignStr('display', race)
        ),
        LuaAssign, LuaTableContents);
    end)
    .Fold<string>(CommaAndNL(), '');
  races.Free;
end;

end.

