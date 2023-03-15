unit ucycles;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ufunctions;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSort: TButton;
    btnSortDn: TButton;
    Calculate: TButton;
    edFactor: TEdit;
    edOutput: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memoSorting: TMemo;
    procedure btnSortClick(Sender: TObject);
    procedure btnSortDnClick(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalculateClick(Sender: TObject);
var fres:integer;
begin
  fres:=calcFactorial(strtoint(edFactor.Text));
  if (fres=-1) then edOutput.Text:='ERR'
  else edOutput.Text:=inttostr(fres);
end;

procedure TForm1.btnSortClick(Sender: TObject);
begin
  bubbleSort(true,memoSorting);
end;

procedure TForm1.btnSortDnClick(Sender: TObject);
begin
  bubbleSort(false,memoSorting);
end;

end.

