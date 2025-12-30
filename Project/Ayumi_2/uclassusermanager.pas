unit uClassUserManager;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uClassUser;

type

  { TUserManager }

  TUserManager = class
    private
      fileName : string;
      userName : string;
      password : string;
      startDate : TDate;
      Relapses : integer;
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
  TUser.create(startDate, userName, password, Relapses);
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
  delete(curline, length(curline);

  Readln (curline);
  password := copy(curLine, 1, length(Curline);
  delete(curline, length(curline);

  Readln (curline);
  startDate := StrToDate(copy(curLine, 1, length(Curline)));
  delete(curline, length(curline);

  Readln (curline);
  relapses := strtoint(copy(curLine, 1, length(Curline)));
  delete(curline, length(curline);

  closeFile(myFile);
end;

procedure TUserManager.writeFile;
var
  myFile : textFIle;
begin
  AssignFile(myFile, fileName);
  Rewrite(myFile);
  Write(TUser.fileString);
  CloseFile (myFile);
end;

end.

