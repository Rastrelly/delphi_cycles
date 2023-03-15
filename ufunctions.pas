unit ufunctions;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls;


procedure bubbleSort(sortUp:boolean; memoData:TMemo);
function calcFactorial(base:integer):integer;

implementation

procedure bubbleSort(sortUp:boolean; memoData:TMemo);
var i,l,ops,buffer:integer;
  check:boolean;
  arr:array of integer;
begin
  l:=memoData.Lines.Count;
  SetLength(arr,l);
  for i:=0 to (l-1) do
  begin
    arr[i]:=strtoint(memoData.Lines[i]);
  end;

  repeat
    ops:=0;
    for i:=0 to (l-2) do
    begin
      if (sortUp) then
        check:=arr[i]>arr[i+1]
      else
        check:=arr[i]<arr[i+1];

      if (check) then
      begin
        buffer:=arr[i+1];
        arr[i+1]:=arr[i];
        arr[i]:=buffer;
        inc(ops); //increase by 1
        //identical to ops:=ops+1
      end;
    end;
  until (ops=0);

  memoData.Clear;

  for i:=0 to (l-1) do
  begin
    memoData.Lines.Add(
        //string
        inttostr(
            //integer
            arr[i]
            )
    );
  end;

end;


function calcFactorial(base:integer):integer;
var cvalue,res:integer;
begin
  result:=-1;
  if (base>0) then
  begin
    cvalue:=base-1;
    res:=base;
    while (cvalue>1) do
    begin
      res:=res*cvalue;
      cvalue:=cvalue-1;
    end;
    result:=res;
  end
  else
  begin
    if base=0 then result:=1;
  end;
end;

end.

