unit uClassUser;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DateUtils;

type

  { TUser }

  TUser = class
    private
      StartDate : TDate;
      userName : String;
      password : string;
      streak : integer;
      relapses : integer;
    public
      constructor create (sDate : TDate; uName : string; pword : string; relapses : integer);
      procedure setStreak;
      procedure setUserName(inName : string);
      procedure setpassword(inPassword : string);
      procedure relapse;
      function getStreak : integer;
      function getUserName : string;
      function getPassword : string;
      function getStartDate : TDate;
      function fileString : string;
  end;

implementation

{ TUser }

constructor TUser.create(sDate: TDate; uName: string; pword: string; uRelapses : integer);
begin
  StartDate := sDate;
  userName := uName;
  password := pWord;
  relapses:= uRelapses;
end;

procedure TUser.setStreak;
begin
  streak := DaysBetween(Now, StartDate);
end;

procedure TUser.setUserName(inName: string);
begin
  userName:=inName;
end;

procedure TUser.setpassword(inPassword: string);
begin
  password:=inPassword;
end;

procedure TUser.relapse;
begin
  streak := 0;
  relapses:=relapses + 1;
end;

function TUser.getStreak: integer;
begin
  result := streak;
end;

function TUser.getUserName: string;
begin
  result := userName;
end;

function TUser.getPassword: string;
begin
  result := password;
end;

function TUser.getStartDate: TDate;
begin
  result := StartDate;
end;

function TUser.fileString: string;
var
  outputString : string;
begin
  outputString := '';
  outputString := outputString + userName + #10#13;
  outputString := outputString + password + #10#13;
  outputString := outputString + DateToStr(StartDate) + #10#13;
  outputString := outputString + inttostr(relapses);
  result := outputString;
end;

end.

