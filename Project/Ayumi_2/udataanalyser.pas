unit UDataAnalyser;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uClassUser;

const
  MAXSIZE = 1000;

type

  { TDataAnalyser }

  TDataAnalyser = class
    private
      relapseArray : array[1..MAXSIZE] of TDateTIme;

    public
      procedure setArray;
  end;

implementation

{ TDataAnalyser }

procedure TDataAnalyser.setArray;
var
  index : integer;
  date1 : TDateTime;
  inString : string;
begin
  inString := uClassUser


end;

end.

