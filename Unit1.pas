unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, unit2,
  Vcl.StdCtrls, Vcl.ComCtrls, System.DateUtils, Vcl.Menus;

type
//Tmass2D=array of array of extended;
  TForm1 = class(TForm)
    Chart1: TChart;
    Panel1: TPanel;
    Chart2: TChart;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    OpenDialog1: TOpenDialog;
    Series2: TLineSeries;
    Series1: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button2: TButton;
    Label5: TLabel;

    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   Fl : TextFile;
   Fdicrit, dlit_min, dlit_sek, speed :integer;
   List : TStringList;
   KolOtschetov: integer;
   FotX1, FotX2, SotF1,SotF2, f_x1, S_x1:Tmass2D;
   deltaT: extended;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
i,Ni,Fd: integer;
x, Ti, Td, Deltaf1 :extended;
begin

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;
  Series6.Clear;

  Chart1.Title.Caption:='Тестовая исходная функция: f(x):=sin(10*2*pi*x)+0.5*sin(5*2*pi*x)';

  f_x1:=nil;
  S_x1:=nil;

  Ti:=StrToInt(Edit1.Text);    //  длительность сигнала, секунды
  Fd:=StrToInt(Edit2.Text);    // частота дискритизации сигнала

  Td:=1/Fd;                      // период дискритизации
  Ni:=trunc(Ti/Td);
  deltaF1:=Fd/Ni;

  SetLength(f_x1, Ni, 2);

   f_x1[0,0]:=0;
   x:=f_x1[0,0];
   f_x1[0,1]:=sin(10*2*pi*x)+0.5*sin(5*2*pi*x);

  for i := 1 to Ni-1 do
  begin
    f_x1[i,0]:=i*Td;
    x:=f_x1[i,0];
    f_x1[i,1]:=sin(10*2*pi*x)+0.5*sin(5*2*pi*x);
  end;

  for I := 0 to High(f_x1)-1 do   Series5.AddXY(f_x1[i,0],f_x1[i,1],'');

  DFFT(Ni, Fd, f_x1, S_x1,dlit_min, dlit_sek);

  for I := 0 to High(S_x1)-1 do  Series6.AddXY(S_x1[i,0],S_x1[i,3],'');

  label3.Caption:=IntToStr(dlit_min);
  label8.Caption:=IntToStr(dlit_sek);
end;


procedure TForm1.N2Click(Sender: TObject);
var
  i, j, ps:integer;
 Stroka, data1, data2 : string;

 Ni,Fd: integer;
x, Ti, Td, Deltaf1 :extended;

begin
  if OpenDialog1.Execute then
  begin

    FotX1:=nil;
    FotX2:=nil;

    Series1.Clear;
    Series2.Clear;
    Series3.Clear;
    Series4.Clear;
    Series5.Clear;
    Series6.Clear;

    Chart1.Title.Caption:='Исходная функция';

    List := TstringList.Create;
    List.LoadFromFile(OpenDialog1.FileName);

    KolOtschetov:=List.Count;   //
    //Подготовка параметров для расчета спектра---------------------------------
    Stroka:=List.Strings[9];
    deltaT:=StrToFloat(Stroka[11] + Stroka[12])*2/1000000;
    Fdicrit:=trunc(1/deltaT);
    Stroka:='';

    SetLength(FotX1,(KolOtschetov-14), 2 );
    SetLength(FotX2,(KolOtschetov-14), 2 );
    // Чтение данных из файла---------------------------------------------------
    Stroka:=List.Strings[13];

    data1:='';
    data2:='';

    for j:=1 to Length(Stroka) do if (stroka[j]=',') or (stroka[j]='.') then ps:=j;
    for j:=1 to ps-1 do data1:=data1+ Stroka[j] ;
    for j:=ps+1 to Length(Stroka) do data2:=data2+ Stroka[j] ;

    FotX1[0,0]:=0;
    FotX1[0,1]:=(StrToFloat(data1)*5)/1024;
    FotX2[0,0]:=0;
    FotX2[0,1]:=(StrToFloat(data2)*2)/1024;


    for i := 1 to KolOtschetov-15 do
    begin

      FotX1[i, 0]:= FotX1[i-1,0] + deltaT;
      FotX2[i, 0]:= FotX1[i-1,0] + deltaT;

      Stroka:=List.Strings[i+13];

      data1:='';
      data2:='';

      for j:=1 to Length(Stroka) do if (stroka[j]=',') or (stroka[j]='.') then ps:=j;
      for j:=1 to ps-1 do data1:=data1+ Stroka[j] ;
      for j:=ps+1 to Length(Stroka) do data2:=data2+ Stroka[j] ;

      FotX1[i,1]:=(StrToFloat(data1)*5)/1024;
      FotX2[i,1]:=(StrToFloat(data2)*2)/1024;
      //Построение исходных графиков--------------------------------------------
      Series1.AddXY(FotX1[i,0],FotX1[i,1],'');
      Series2.AddXY(FotX2[i,0],FotX2[i,1],'');
    end;
  end;
  List.Free;

  // Вызов процедуры------------------------------------------------------------
  DFFT(KolOtschetov-13, Fdicrit, FotX1, SotF1,dlit_min, dlit_sek);
  DFFT(KolOtschetov-13, Fdicrit, FotX2, SotF2, dlit_min, dlit_sek);

  for I := 0 to 100 do  Series3.AddXY(SotF1[i,0],SotF1[i,3],'');
  for I := 0 to 100 do  Series4.AddXY(SotF2[i,0],SotF2[i,3],'');

  label3.Caption:=IntToStr(dlit_min);
  label8.Caption:=IntToStr(dlit_sek);

end;

end.
