unit AboutU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, IniFiles, ActiveX, SHDocVw, Vcl.Imaging.pngimage;

const
  iscale = 1000;
  SvgElemPath = 'SVG_elems\';
  TemplatePath = 'Templates\';
  ImagePath = 'Images\';
  ResultPath = 'Results\';

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TImrOpt = class(TMemIniFile)
  private
    { Private declarations }
  public
    { Public declarations }
    Lock: boolean;
    procedure Opt2Vis;
    procedure Vis2Opt;
    function Cols: integer;
    function Rows: integer;
    function CellWidth: integer;
    function CellHeight: integer;
  end;

procedure SetWebBrowserHTML(WebBrowser: TWebBrowser; HTMLCode: string);
procedure LoadHTML2WebBrowser(WebBrowser: TWebBrowser; HTMLfile: string);
function GetWebBrowserHTML(const WebBrowser: TWebBrowser): String;

procedure ReplaceVar(Key: string; Value: real; var lsv: TStrings);
function ExePath: string;
function UserPath: string;

function GenerateSymbolTable(ShowIt: boolean): string;

var
  AboutBox: TAboutBox;
  ImrOpt: TImrOpt;

implementation

{$R *.dfm}

uses ImariU;

function ExePath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function UserPath: string;
begin
  Result := ExePath;
end;

// imari options
procedure TImrOpt.Opt2Vis;
begin
  Lock := true;
  with frmImari do
  begin
    seBaseline.Value := ReadInteger('Baseline', 'Level', 0);
    rgToward.ItemIndex := ReadInteger('Baseline', 'Toward', 0);
    ColorDialog2.Color := StringToColor(ReadString('Baseline', 'Background',
      '$00FFFFFF'));
    chkVarySize.Checked := ReadBool('Intensity', 'Varying', false);
    seFullness.Value := ReadInteger('Intensity', 'Base', 100);
    seContrast.Value := ReadInteger('Intensity', 'Contrast', 0);
    rgColorCalc.ItemIndex := ReadInteger('Color', 'Calc', 0);
    chkColor2Ignore.Checked := ReadBool('Color', 'CheckIgnored', false);
    ColorDialog3.Color := StringToColor(ReadString('Color', 'Ignored',
      '$00000000'));
    chkMonochrom.Checked := ReadBool('Color', 'CheckMonochrom', false);
    ColorDialog1.Color := StringToColor(ReadString('Color', 'Monochrom',
      '$00000000'));
    chhHSBadjust.Checked := ReadBool('HSL', 'Checked', false);
    sePosterize.Value := ReadInteger('HSL', 'Hue', 100);
    seSaturation.Value := ReadInteger('HSL', 'Saturation', 100);
    seLightness.Value := ReadInteger('HSL', 'Lightness', 100);
    seCols.Value := ReadInteger('Grid', 'Cols', 50);
    seRows.Value := ReadInteger('Grid', 'Rows', 0);
  end;
  Lock := false;
end;

procedure TImrOpt.Vis2Opt;
begin
  if Lock then
    exit;
  with frmImari do
  begin
    WriteInteger('Baseline', 'Level', seBaseline.Value);
    WriteInteger('Baseline', 'Toward', rgToward.ItemIndex);
    WriteString('Baseline', 'Background', ColorToString(ColorDialog2.Color));
    WriteBool('Intensity', 'Varying', chkVarySize.Checked);
    WriteInteger('Intensity', 'Base', seFullness.Value);
    WriteInteger('Intensity', 'Contrast', seContrast.Value);
    WriteInteger('Color', 'Calc', rgColorCalc.ItemIndex);
    WriteBool('Color', 'CheckIgnored', chkColor2Ignore.Checked);
    WriteString('Color', 'Ignored', ColorToString(ColorDialog3.Color));
    WriteBool('Color', 'CheckMonochrom', chkMonochrom.Checked);
    WriteString('Color', 'Monochrom', ColorToString(ColorDialog1.Color));
    WriteBool('HSL', 'Checked', chhHSBadjust.Checked);
    WriteInteger('HSL', 'Hue', sePosterize.Value);
    WriteInteger('HSL', 'Saturation', seSaturation.Value);
    WriteInteger('HSL', 'Lightness', seLightness.Value);
    WriteInteger('Grid', 'Cols', seCols.Value);
    WriteInteger('Grid', 'Rows', seRows.Value);
  end;
end;

function TImrOpt.Cols: integer;
begin
  Result := ReadInteger('Grid', 'Cols', 50);

end;

function TImrOpt.Rows: integer;
begin
  Result := ReadInteger('Grid', 'Rows', 0);
end;

function TImrOpt.CellWidth: integer;
begin
  if Cols = 0 then
    Result := 10
  else
    Result := round(frmImari.Image1.Picture.Graphic.Width / Cols);
  if Result = 0 then
    Result := 10;
end;

function TImrOpt.CellHeight: integer;
begin
  if Rows = 0 then
    Result := CellWidth
  else
    Result := round(frmImari.Image1.Picture.Graphic.Height / Rows);
  if Result = 0 then
    Result := 10;
end;

/// ///////////////////////////////////////////////////////
procedure ReplaceVar(Key: string; Value: real; var lsv: TStrings);
var
  i, j: integer;
  st, se: string;
begin
  for i := 0 to lsv.Count - 1 do
  begin
    st := lsv[i];
    se := '&' + Key + '&';
    while (pos(se, st) > 0) do
    begin
      j := pos(se, st);
      delete(st, j, length(se));
      system.insert(FloatToStrF(Value, ffGeneral, 7, 3), st, j);
    end;
    lsv[i] := st;
  end;
end;

procedure SetWebBrowserHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as IPersistStreamInit)
          .Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

procedure LoadHTML2WebBrowser(WebBrowser: TWebBrowser; HTMLfile: string);
var
  Flags: OleVariant;
  ss: string;
begin
  Flags := OleVariant(2 + 4 + 8);
  ss := 'file://' + StringReplace(HTMLfile, '\', '/', [rfReplaceAll]);
  WebBrowser.Navigate(ss, Flags);
end;

function GetWebBrowserHTML(const WebBrowser: TWebBrowser): String;
var
  LStream: TStringStream;
  Stream: IStream;
  LPersistStreamInit: IPersistStreamInit;
begin
  if not Assigned(WebBrowser.Document) then
    exit;
  LStream := TStringStream.Create('');
  try
    LPersistStreamInit := WebBrowser.Document as IPersistStreamInit;
    Stream := TStreamAdapter.Create(LStream, soReference);
    LPersistStreamInit.Save(Stream, true);
    Result := LStream.DataString;
  finally
    LStream.Free();
  end;
end;
// ====================================================================

function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: boolean;
  Buffer: array [0 .. 255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: boolean;
begin
  Result := '';
  with SA do
  begin
    nLength := SizeOf(SA);
    bInheritHandle := true;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine), nil, nil,
      true, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

function GetFilesFromDirectory(dir, ext: string; Flist: TStrings): boolean;
var // ext -> *.ext
  i, j, FileAttrs: integer;
  sr: TSearchRec;
  dr, ss: string;
begin
  Result := false;
  FileAttrs := faArchive;
  if not DirectoryExists(dir) then
    exit;
  if FindFirst(dir + ext, FileAttrs, sr) = 0 then
  begin
    repeat
      Flist.Add(dir + sr.name);
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  Result := true;
end;

function GenerateSymbolTable(ShowIt: boolean): string;
const
  nCol = 5;
var
  i, j: integer;
  ss,sf: string;
  ls, lf: TStrings;
begin
  ls := TStringList.Create;
  ls.Add('<html>');
  ls.Add('<head>');
  ls.Add('<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">');
  ls.Add('<title>Imari SVG Element Index</title>');
  ls.Add('</head>');
  ls.Add('<body>');
  ls.Add('<p align="center"><b><font size="4">Imari SVG element collection</font></b></p>');
  ls.Add('<table border="1" width="100%" cellspacing="0" cellpadding="5" > ');
  lf := TStringList.Create;
  GetFilesFromDirectory(UserPath+SvgElemPath, '*.svg', lf);
  i:= 0; j:= 0;
  ls.Add('<tr>');
  for ss in lf do
  begin
    sf:= ExtractFileName(ss); inc(i);
    ls.Add('<td align="center"><iframe src = "'+sf+'"></iframe><p>'+sf+'</td>');
    if (i mod nCol)=0 then ls.Add('</tr> <tr>');
  end;
  ls.Add('</tr>');
  ls.Add('</table>');
  ls.Add('</body>');
  ls.Add('</html>');
  Result:= ls.Text;
  ls.SaveToFile(UserPath+SvgElemPath+'index.html');
  if ShowIt then
    GetDosOutput(UserPath+SvgElemPath+'index.html', UserPath+SvgElemPath);
end;

end.
