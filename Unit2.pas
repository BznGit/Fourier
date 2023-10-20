unit Unit2;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,  Vcl.StdCtrls, Vcl.ComCtrls, System.DateUtils;
type
 Tmass2D=array of array of extended;
    function Grad(rad:extended): Extended; //  радианы в градусы
    function Rad(grad:extended): Extended; //  градусы в радианы
    Procedure DFFT(Ni,Fd:integer; f_x:Tmass2D; var S_f:Tmass2D; min, sek:Integer);
implementation

function Grad(rad:extended): Extended; //  радианы в градусы
 begin
  Result:=rad*180/PI;
 end;

function Rad(grad:extended): Extended; //  градусы в радианы
 begin
  Result:=grad*PI/180;
 end;

Procedure DFFT(Ni,Fd:integer; f_x:Tmass2D; var S_f:Tmass2D; min, sek:Integer);
var
  i, n, k         : integer;
  Td, Ti, deltaF : extended;
  Start, Stop    : TDateTime;
  Elapsed        : int64;
  dlina          : string;
begin
  Start:=Now;
  //f_x:=nil;
  S_f:=nil;

  Td:=1/Fd;                      // период дискритизации
  //Ni:=trunc(Ti/Td);
  deltaF:=Fd/Ni;                 //щаг изменения частоты

  //SetLength(f_x, Ni, 2);
  SetLength(S_f, trunc(Ni/2), 5);

  S_f[0,0] := 0;
  S_f[0,1]:=f_x[0,1]*cos((0*0/Ni));
  S_f[0,2]:=f_x[0,1]*sin((0*0/Ni));

  for k := 0 to trunc(Ni/2)-1 do
  begin

    for n := 0 to trunc(Ni/2)-1 do
    begin
      S_f[k,1]:= S_f[k,1] + f_x[n,1]*cos((2*pi*k*n/Ni));
      S_f[k,2]:= S_f[k,2] + f_x[n,1]*sin((2*pi*k*n/Ni));
    end;

    S_f[k,0]:= k*DeltaF;
    S_f[k,1]:=td*S_f[k,1];
    S_f[k,2]:=-td*S_f[k,2];
    S_f[k,3] :=sqrt(sqr(S_f[k,1]) + sqr(S_f[k,2]))*fd*4/Ni;
    //S_f[k,4] :=(grad(arctan(S_f[k,2] / S_f[k,1])));

   end;

  Stop:=Now;
  Elapsed:=SecondsBetween(Start, Stop);//время в секундах
  min:= trunc(Elapsed/60);
  sek:= Elapsed-min*60;
end;





end.
