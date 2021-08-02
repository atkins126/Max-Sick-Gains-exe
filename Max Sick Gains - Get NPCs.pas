unit MaxickGetNPCs;
{
    Hotkey: F5
	
	****************************************************
	*** THIS IS AN SSEDIT SCRIPT, NOT A DELPHI FILE! ***
	****************************************************
	
	Gets a list of NPCs in a format usable for Max Sick
	Gains NPC database. 
	Outputs an *.sql file to "SSEdit\Edit Scripts\".
	
	Change the hotkey to your preference.
}

uses xEditApi, SysUtils, StrUtils;

var
  outputList: TStringList;


function Initialize: Integer;
begin
  outputList := TStringList.Create;
end;

function ActualFixedFormId(e: IInterface): string;
var
  fileOrder: Integer;
  sFormId, sFile: string;
begin
  fileOrder := GetLoadOrder(GetFile(e));
  sFormId := IntToHex(FormID(e), 1);
  if fileOrder > 0 then begin
    sFile := IntToHex(fileOrder, 1);
    sFormId := RightStr(sFormId, Length(sFormId) - Length(sFile));
  end;
  Result := Lowercase(IntToHex(StrToInt('$' + sFormId), 1));
end;

function Process(e: IInterface): Integer;
var
    isUnique: IInterface;
    output, esp, id, race, uId, name, isFemale, aClass, sex: string;
begin
  if Signature(e) <> 'NPC_' then Exit;
  e := MasterOrSelf(e);

  isUnique := ElementByPath(e, 'ACBS\Flags\Unique');
  if not (Assigned(isUnique) and GetElementNativeValues(e, 'ACBS\Flags\Unique')) then Exit;

  name := Trim(GetElementEditValues(e, 'FULL'));
  if name = '' then Exit;

  race := GetElementEditValues(LinksTo(ElementByPath(e, 'RNAM')),'EDID');
  if ContainsText(race, 'child')  then Exit;

  aClass := GetElementEditValues(LinksTo(ElementByPath(e, 'CNAM')),'EDID');
  if ContainsText(aClass, 'player')  then Exit;

  // esm, id, name, class, sex, race
  esp := GetFileName(GetFile(e));
  id := ActualFixedFormID(e);
  uId := esp + '|0x' + id;
  sex := GetElementEditValues(e, 'ACBS\Flags\Female');

  outputList.Append(
      Format(
        'INSERT INTO AllNPCs (fullName, uId, esp, formID, class, isFemale, race) VALUES ("%s", "%s", "%s", "%s", "%s", %s, "%s");',
        [name, uId, esp, id, aClass, sex, race]
      )
    );
  AddMessage(
    Format('%s, %s, %s, %s, %s, %s, %s', [uId, esp, name, id, aClass, sex, race]
    )
  );
end;

function Finalize: Integer;
begin
  outputList.Sort;
  outputList.SaveToFile('Edit Scripts\___Maxick-NPCs.sql');
  outputList.Free;
end;

end.
