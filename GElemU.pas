unit GElemU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, OleCtrls, StdCtrls, Buttons, CheckLst,
  ComCtrls, ToolWin, Grids, ValEdit, ExtCtrls, SHDocVw;

type
  TfmGElement = class(TFrame)
    Panel3: TPanel;
    Splitter5: TSplitter;
    vleVars: TValueListEditor;
    ToolBarMatrix: TToolBar;
    tbMatrixOpen: TToolButton;
    tbMatrixSave: TToolButton;
    ToolButton11: TToolButton;
    tbMatrixAnalize: TToolButton;
    pcExpr: TPageControl;
    tsMatrix: TTabSheet;
    gbMatrix: TGroupBox;
    mmMatrix: TMemo;
    Panel11: TPanel;
    clInnerVars: TCheckListBox;
    pnlGenerate: TPanel;
    tsVars: TTabSheet;
    Panel10: TPanel;
    stVar: TStaticText;
    eExpr: TEdit;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    PageControl2: TPageControl;
    tsCommonVars: TTabSheet;
    ToolBar7: TToolBar;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton8: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    tsCellVars: TTabSheet;
    ToolBar8: TToolBar;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton6: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    tsFunctions: TTabSheet;
    ToolBar9: TToolBar;
    ToolButton50: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton49: TToolButton;
    ToolButton48: TToolButton;
    gbElement: TGroupBox;
    mmElement: TMemo;
    GroupBox8: TGroupBox;
    ToolBar4: TToolBar;
    tbElemOpen: TToolButton;
    tbElemSave: TToolButton;
    ToolButton7: TToolButton;
    tbElemErase: TToolButton;
    tbElemUpdate: TToolButton;
    tbPicker: TToolButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    chkAutoRefresh: TCheckBox;
    Splitter1: TSplitter;
    SVGviewer: TWebBrowser;
    Panel1: TPanel;
    Splitter2: TSplitter;
    procedure bbRegenerateClick(Sender: TObject);
    procedure vleVarsEditButtonClick(Sender: TObject);
    procedure vleVarsStringsChange(Sender: TObject);
    procedure tbElemOpenClick(Sender: TObject);
    procedure tbElemSaveClick(Sender: TObject);
    procedure tbElemEraseClick(Sender: TObject);
    procedure tbElemUpdateClick(Sender: TObject);
    procedure tbMatrixOpenClick(Sender: TObject);
    procedure tbMatrixSaveClick(Sender: TObject);
    procedure tbMatrixAnalizeClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
    procedure chkAutoRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure Analyze(ts: TStrings; var VarList: TStringList; CleanUp: boolean);
    function Apply(Image1: TImage; var sl: TStrings): boolean;
  end;

implementation

{$R *.dfm}

uses ImariU, AboutU, StrUtils, Parser10, GraphUtil;

constructor TfmGElement.Create(AOwner: TComponent);
begin
  inherited;
  tsMatrix.TabVisible := false;
  tsVars.TabVisible := false;
  pcExpr.ActivePage := tsMatrix;
  vleVarsStringsChange(nil);
  with clInnerVars do
  begin
    Checked[0] := true;
    Checked[1] := true;
    Checked[2] := true;
  end;
  // SVGElem.SRC:= UserPath+'empty.svg';
end;

procedure TfmGElement.bbRegenerateClick(Sender: TObject);
var
  i, j: integer;
  ss: string;
begin
  ss := '<g ';
  with clInnerVars do
  begin
    if Checked[0] then // Fill
      ss := ss + 'fill="rgb(&eR&,&eG&,&eB&)" ';
    if Checked[1] or Checked[2] or Checked[3] or Checked[4] then
    begin
      ss := ss + 'transform="';
      if Checked[1] or Checked[2] then
      begin
        if Checked[1] and Checked[2] then
          ss := ss + 'translate(&posX&, &posY&'
        else
        begin
          ss := ss + 'translate(';
          if Checked[1] then // Translate X
            ss := ss + '&posX&';
          if Checked[2] then // Translate Y
            ss := ss + '&posY&';
        end;
        ss := ss + ') ';
      end;
      if not Checked[3] and Checked[4] then
      begin
        ShowMessage('Contradictive scales');
        exit;
      end;
      if Checked[3] or Checked[4] then
      begin
        if Checked[3] and Checked[4] then
          ss := ss + 'scale(&sizeX&, &sizeY&) ' // Scale X;  Scale Y
        else if Checked[3] then
          ss := ss + 'scale(&size&) ';
      end;
      if clInnerVars.Checked[7] then
        ss := ss + 'rotate(&rot&,500,500) '; //  Rotate
      if clInnerVars.Checked[5] then // Skew X

        ss := ss + 'skewX(&skX&) ';
      if clInnerVars.Checked[6] then // Skew Y
        ss := ss + 'skewY(&skY&) ';
      ss := ss + '"' + #10;
    end;
    if clInnerVars.Checked[8] then // Opacity
      ss := ss + 'opacity="&opc&" ';
  end;
  ss := ss + '> &elem1; </g>';
  mmMatrix.Lines.Text := ss;
end; { TfmGElement.bbRegenerateClick }

procedure TfmGElement.vleVarsEditButtonClick(Sender: TObject);
begin
  with vleVars do
  begin
    stVar.Caption := Keys[Row] + ' =';
    Tag := Row;
    eExpr.Text := Values[Keys[Row]];
    Options := Options - [goEditing];
  end;
  pcExpr.ActivePage := tsVars;
  // eExpr.Focused:= true;
  ToolBarMatrix.Enabled := false;
end;

procedure TfmGElement.vleVarsStringsChange(Sender: TObject);
var
  i, j: integer;
begin
  for i := 0 to vleVars.Strings.Count - 1 do
    vleVars.ItemProps[i].EditStyle := esEllipsis;
end;

procedure TfmGElement.tbElemOpenClick(Sender: TObject);
begin
  with OpenDialog1 do
  begin
    Title := 'Open Svg element';
    Filename := '';
    Filter := 'Svg element(*.svg)|*.svg';
    InitialDir := UserPath + SvgElemPath;
    if Execute then
    begin
      mmElement.Lines.LoadFromFile(Filename);
      LoadHTML2WebBrowser(SVGviewer, Filename);
      gbElement.Caption := ' Element (' + Filename + ') ';
      tbElemUpdateClick(nil);
    end;
  end;
end;

procedure TfmGElement.tbElemSaveClick(Sender: TObject);
begin
  with SaveDialog1 do
  begin
    Title := copy((Sender as TToolButton).Hint, 2, 255);
    Filename := '';
    Filter := 'Svg element(*.svg)|*.svg';
    InitialDir := UserPath + SvgElemPath;
    if Execute then
      mmElement.Lines.SaveToFile(Filename);
  end;
end;

procedure TfmGElement.tbElemEraseClick(Sender: TObject);
begin
  mmElement.Lines.Clear;
  LoadHTML2WebBrowser(SVGviewer, UserPath + 'empty.svg');
  gbElement.Caption := ' Element ';
end;

procedure TfmGElement.tbElemUpdateClick(Sender: TObject);
begin
  if mmElement.Lines.Count = 0 then
  begin
    tbElemEraseClick(nil);
    exit;
  end;
  mmElement.Lines.SaveToFile(UserPath + 'element.svg');
  LoadHTML2WebBrowser(SVGviewer, UserPath + 'element.svg');
end;

procedure TfmGElement.tbMatrixOpenClick(Sender: TObject);
begin
  with OpenDialog1 do
  begin
    Title := copy((Sender as TToolButton).Hint, 2, 255);
    Filename := '';
    Filter := 'Matrix template(*.mtx)|*.mtx';
    InitialDir := UserPath + TemplatePath;
    if Execute then
    begin
      mmMatrix.Lines.LoadFromFile(Filename);
      gbMatrix.Caption := ' Matrix (' + Filename + ') ';
    end;
  end;
end;

procedure TfmGElement.tbMatrixSaveClick(Sender: TObject);
begin
  with SaveDialog1 do
  begin
    Title := copy((Sender as TToolButton).Hint, 2, 255);
    Filename := '';
    Filter := 'Frame template(*.frm)|*.frm';
    InitialDir := UserPath + TemplatePath;
    if Execute then
      mmMatrix.Lines.SaveToFile(Filename);
  end;
end;

procedure TfmGElement.tbMatrixAnalizeClick(Sender: TObject);
var ls: TStringList;
begin
  ls:= TStringList.Create; ls.Assign(vleVars.Strings);
  Analyze(mmMatrix.Lines, ls, true); vleVars.Strings.Assign(ls);
end;

/// ///////////////////////////////////////////////////////////////////////////
procedure TfmGElement.Analyze(ts: TStrings; var VarList: TStringList;
  CleanUp: boolean);
var
  i, j, k: integer;
  ss, sk: string;
  bb: boolean;
begin
  for i := 0 to ts.Count - 1 do
  begin
    ss := ts[i];
    repeat
      j := pos('&', ss);
      if j = 0 then
        break;
      delete(ss, 1, j);
      j := pos('&', ss);
      if (j = 0) or (j > 8) then
        break;
      sk := LeftStr(ss, j - 1);
      if not IsValidIdent(sk) then
        break;
      with VarList do
      begin
        bb := false;
        for k := 0 to Count - 1 do
          bb := bb or (Names[k] = sk);
        if not bb then
          Add(sk + '=');
      end;
      delete(ss, 1, j);
    until (pos('&', ss) = 0);
  end;
  if CleanUp then
  begin
    ss := ts.Text;
    i := 0;
    while i < VarList.Count do
      if pos('&' + VarList.Names[i] + '&', ss) = 0 then
        VarList.delete(i)
      else
        inc(i);
  end;
  with VarList do
    for i := 0 to Count - 1 do
    begin
      ss := Names[i];
      if trim(Values[ss]) <> '' then
        continue;
      if ss = 'posX' then
        Values[ss] := 'cx';
      if ss = 'posY' then
        Values[ss] := 'cy';
      if ss = 'size' then
        Values[ss] := 'ii';
      if ss = 'sizeX' then
        Values[ss] := 'ii';
      if ss = 'sizeY' then
        Values[ss] := 'ii*ryx';
      if ss = 'opc' then
        Values[ss] := 'ii';
      if ss = 'rot' then
        Values[ss] := '0';
      if ss = 'skX' then
        Values[ss] := '0';
      if ss = 'skY' then
        Values[ss] := '0';
      if ss = 'eR' then
        Values[ss] := 'r';
      if ss = 'eG' then
        Values[ss] := 'g';
      if ss = 'eB' then
        Values[ss] := 'b';
    end;
end; { TfmGElement.Analyze }

function TfmGElement.Apply(Image1: TImage; var sl: TStrings): boolean;
var
  ls, lt: TStrings;
  i, j, ie, k, iw, ih, ix, iy: integer;
  rC, rD: TColor;
  rI, a, rCn: real;
  ss, st, se: string;
  rect: TRect;
  bb, bD: boolean;
  H, L, S: word;
  mmFrame: TStrings;
begin
  Screen.Cursor := crHourglass;
  mmFrame := TStringList.Create;
  mmFrame.Assign(sl);
  try
    if (mmElement.Lines.Count = 0) and (pos('#Element1#', mmFrame.Text) > 0)
    then
      tbElemOpenClick(nil);
    ls := TStringList.Create;
    lt := TStringList.Create;
    bm4.Assign(Image1.Picture.Bitmap);
    bm4.PixelFormat := pf4bit;
    bm8.Assign(Image1.Picture.Graphic);
    bm8.PixelFormat := pf8bit;
    bm24.Assign(Image1.Picture.Graphic);
    bm24.PixelFormat := pf24bit;

    ls.Assign(mmFrame); // element
    for ie := 0 to ls.Count - 1 do
      if ls[ie] = '#Element1#' then
        break;
    if ie <> ls.Count then
      ls.delete(ie);
    lt.Clear;
    bb := false;
    with mmElement do
      for k := 0 to Lines.Count - 1 do
      begin
        ss := Lines[k];
        if trim(ss) = '</g>' then
          break;
        if bb then
          lt.Add(ss);
        if trim(ss) = '<g>' then
          bb := true;
      end;
    for k := lt.Count - 1 downto 0 do
      ls.Insert(ie, lt[k]);

    for ie := 0 to ls.Count - 1 do // matrix
      if ls[ie] = '#Matrix1#' then
        break;
    if ie = ls.Count then
    begin
      ShowMessage('#Matrix1# key is missing.');
      exit;
    end;
    ls.delete(ie);
    iw := ImrOpt.CellWidth;
    ih := ImrOpt.CellHeight;
    with DynaParser do // common vars
    begin
      rC := StringToColor(ImrOpt.ReadString('Baseline', 'Background', '$00FFFFFF'));
      Variable['BR'] := (rC AND $000000FF); // red
      Variable['BG'] := (rC AND $0000FF00) SHR 8; // green
      Variable['BB'] := (rC AND $00FF0000) SHR 16; // blue
      Variable['tx'] := round(Image1.Picture.Width * iscale / iw);
      Variable['ty'] := round(Image1.Picture.Height * iscale / ih);
      Variable['nx'] := round(Variable['tx'] / iscale);
      Variable['ny'] := round(Variable['ty'] / iscale);
      Variable['sc'] := iscale;
      Variable['cw'] := iw;  // undeclared
      Variable['ch'] := ih;  // undeclared
      Variable['ryx'] := ih / iw;
    end;
    with frmImari.vleGlobals do
      for k := 1 to Strings.Count do
      begin
        DynaParser.Expression := Values[Keys[k]];
        ReplaceVar(Keys[k], DynaParser.Value, ls);
      end;
    j := 0;
    iy := 0;
    rD := StringToColor(ImrOpt.ReadString('Color', 'Ignored', '$00000000'));
    bD := ImrOpt.ReadBool('Color', 'CheckIgnored', false);
    repeat
      i := 0;
      ix := 0;
      frmImari.ShowText('Proccess image (' + IntToStr(iy) + ' rows)');
      repeat
        rect.Left := i;
        rect.Right := i + iw - 1;
        rect.Bottom := j;
        rect.Top := j + ih - 1;
        if frmImari.rectChr(rect, rC, rI, rCn) then
        begin
          lt.Assign(mmMatrix.Lines);
          if { (rI<1E-6) or } ((rC = rD) and bD) then
          begin
            inc(i, iw);
            inc(ix);
            continue;
          end;
          with DynaParser do
          begin
            Variable['px'] := i; // undeclared
            Variable['py'] := j; // undeclared
            Variable['cx'] := i * iscale / iw;
            Variable['cy'] := j * iscale / ih;
            Variable['ix'] := ix;
            Variable['iy'] := iy;
            Variable['Ii'] := rI;
            Variable['Cn'] := rCn;
            Variable['In'] := rI * iscale;

            Variable['R'] := (rC AND $000000FF); // red
            Variable['G'] := (rC AND $0000FF00) SHR 8; // green
            Variable['B'] := (rC AND $00FF0000) SHR 16; // blue
            ColorRGBToHLS(rC, H, L, S);
            Variable['H'] := H;
            Variable['L'] := L;
            Variable['S'] := S;
          end;
          with vleVars do
            for k := 1 to Strings.Count do
            begin
              DynaParser.Expression := Values[Keys[k]];
              ReplaceVar(Keys[k], DynaParser.Value, lt);
            end;
          for k := lt.Count - 1 downto 0 do
            ls.Insert(ie, lt[k]);
        end;
        inc(i, iw);
        inc(ix);
      until (i > (Image1.Picture.Width - 1));
      inc(j, ih);
      inc(iy);
    until (j > (Image1.Picture.Height - 1));
    frmImari.ShowText('Saving SVG file.');
    ls.SaveToFile(UserPath + 'temp.svg');
    sl.Assign(ls);
    ls.Free;
    lt.Free;
    frmImari.ShowText('Updating SVG image');
    frmImari.ShowText('');
    Screen.Cursor := crDefault;
  finally
    mmFrame.Free;
  end;
end; { TfmGElement.Apply }

procedure TfmGElement.ToolButton3Click(Sender: TObject);
var
  i, j: integer;
  ss, sl, st: string;
begin
  if not eExpr.Focused then
    exit;
  ss := (Sender as TToolButton).Caption;
  i := pos('-', ss);
  if i = 0 then
    exit;
  ss := lowercase(trim(copy(ss, 1, i - 1)));
  sl := eExpr.SelText;
  st := eExpr.Text;
  if sl = '' then
  begin
    i := eExpr.SelStart;
    Insert(ss, st, i + 1);
    eExpr.Text := st;
    eExpr.SelStart := i + length(ss);
  end
  else
    eExpr.SelText := ss;
end;

procedure TfmGElement.bbCancelClick(Sender: TObject);
begin
  pcExpr.ActivePage := tsMatrix;
  with vleVars do
    Options := Options + [goEditing];
  ToolBarMatrix.Enabled := true;
end;

procedure TfmGElement.bbOKClick(Sender: TObject);
begin
  with vleVars do
    Values[Keys[Tag]] := eExpr.Text;
  bbCancelClick(nil);
end;

procedure TfmGElement.chkAutoRefreshClick(Sender: TObject);
begin
  mmMatrix.ReadOnly := chkAutoRefresh.Checked;
  if chkAutoRefresh.Checked then
    bbRegenerateClick(nil);
end;

end.
