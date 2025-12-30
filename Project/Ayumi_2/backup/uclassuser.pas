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
    public
      constructor create (sDate : TDate; uName : string; pword : string);
      procedure setStreak;
      procedure setUserName(inName : string);
      procedure setpassword(inPassword : string);
      procedure relapse;
      function getStreak : integer;
      function getUserName : string;
      function getPassword : string;
      function getStartDate : TDate;
  end;

implementation

{ TUser }

constructor TUser.create(sDate: TDate; uName: string; pword: string);
begin
  StartDate := sDate;
  userName := uName;
  password := pWord;
end;

procedure TUser.setStreak;
begin
  streak := DaysBetween(Now, StartDate);
end;

procedure TUser.setUserName;
begin

end;

procedure TUser.setpassword;
begin

end;

procedure TUser.relapse;
begin
  streak := 0;
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

end.

