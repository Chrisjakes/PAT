unit uClassUserManager;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TUserManager }

  TUserManager = class
    private
      fileName : string;
    public
      Constructor create (nameOfFile : string);
      Procedure readFile;
      Procedure writeFile;
  end;

implementation

{ TUserManager }

constructor TUserManager.create(nameOfFile: string);
begin
  fileName := nameOfFile;
  readFile;
end;

procedure TUserManager.readFile;
var
  myFile : TextFile;
  curline : string;
begin
  AssignFile(myFile, fileName);
  Reset(myFile);
  Readln (curline);
  uName := copy(curLine, 1, length(Curline);
end;

procedure TUserManager.writeFile;
begin

end;

end.

