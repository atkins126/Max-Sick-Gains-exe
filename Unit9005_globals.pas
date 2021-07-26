unit Unit9005_globals;

interface

uses
  System.SysUtils;
  const
    maxMuscleDefLevels = 6;   // Hardcoded because changing this value implies adding records to "Max Sick Gains.esp"

function TexOutDir: string;

function TexOutDirFull: string;

procedure ForceDirIntoExistance(const dirName: string);

implementation

procedure ForceDirIntoExistance(const dirName: string);
begin
  if not ForceDirectories(dirName) then
    raise Exception.CreateFmt(
      'Couldn''t create folder'#13#10'%s'#13#10#13#10'Try to manually create it or something.',
      [TexOutDirFull]
    );
end;
function TexOutDirFull: string;
begin
  Result := TexOutDir + 'textures\actors\character\Maxick\';
  Result := IncludeTrailingPathDelimiter(Result);
end;

function TexOutDir: string;
begin
  Result := 'F:\Skyrim SE\MO2\mods\Max Sick Gains - Textures\';
  Result := IncludeTrailingPathDelimiter(Result);
end;

end.

