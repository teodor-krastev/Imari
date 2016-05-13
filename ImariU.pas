unit ImariU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, StdCtrls, Spin, ExtCtrls, jpeg, ComCtrls, Buttons,
  VCL.Imaging.GIFimg, TeeProcs, TeeDraw3D, Types, TeEngine,
  ToolWin, TeCanvas, ImgList, ExtDlgs, Menus, Grids, ValEdit, OleServer,
  Series, StatChar, Chart, TeeTools, CheckLst, GElemU, SElemU, SHDocVw;

type
  TCell = record
    rColor: TColor;
    rIntens, rContrast: real;
  end;

  TfrmImari = class(TForm)
    Panel1: TPanel;
    pcOperations: TPageControl;
    tsBmpOper: TTabSheet;
    GroupBox1: TGroupBox;
    seBaseline: TSpinEdit;
    rgToward: TRadioGroup;
    Label3: TLabel;
    rgShapes: TRadioGroup;
    bbApplyShapes: TBitBtn;
    ColorDialog1: TColorDialog;
    Memo1: TMemo;
    ImageList1: TImageList;
    OpenPictureDialog1: TOpenPictureDialog;
    ColorDialog2: TColorDialog;
    ColorDialog3: TColorDialog;
    MainMenu1: TMainMenu;
    mFile: TMenuItem;
    mOpen: TMenuItem;
    mSave: TMenuItem;
    mView: TMenuItem;
    mOnePane: TMenuItem;
    mTwoPanes: TMenuItem;
    mHelp: TMenuItem;
    N1: TMenuItem;
    mExit: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Automatic1: TMenuItem;
    mHorizontal: TMenuItem;
    mVertical: TMenuItem;
    bcBackground: TButtonColor;
    Label7: TLabel;
    tsSVGoper: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    bbApplySVG: TBitBtn;
    OpenDialog1: TOpenDialog;
    pnlImage: TPanel;
    pcWorkplace: TPageControl;
    tsBitmap: TTabSheet;
    tsSVG: TTabSheet;
    PageControl3: TPageControl;
    tsCode: TTabSheet;
    Splitter2: TSplitter;
    tsSVGOut: TTabSheet;
    tsImage: TTabSheet;
    pgInput: TPageControl;
    GroupBox4: TGroupBox;
    seCols: TSpinEdit;
    seRows: TSpinEdit;
    bbSymbolPick: TBitBtn;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    tbOpen: TToolButton;
    tbCopy: TToolButton;
    ToolBar3: TToolBar;
    tbZoomIn: TToolButton;
    tbZoomOut: TToolButton;
    cbZoomFactor: TComboBox;
    sbImage: TScrollBox;
    Image1: TImage;
    sbSVG: TScrollBox;
    tsSource: TTabSheet;
    mmSource: TMemo;
    Panel4: TPanel;
    gbMFrame: TGroupBox;
    mmFrame: TMemo;
    vleGlobals: TValueListEditor;
    Splitter4: TSplitter;
    GroupBox9: TGroupBox;
    sbBitmap: TScrollBox;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    pnlSVG: TPanel;
    SavePictureDialog1: TSavePictureDialog;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    GroupBox3: TGroupBox;
    chkColor2Ignore: TCheckBox;
    bcColor2Ignore: TButtonColor;
    GroupBox2: TGroupBox;
    bcMonochrom: TButtonColor;
    chkMonochrom: TCheckBox;
    gbVarySize: TGroupBox;
    lbFullness: TLabel;
    seFullness: TSpinEdit;
    chkVarySize: TCheckBox;
    lbContrast: TLabel;
    seContrast: TSpinEdit;
    chrClearBeforeDraw: TCheckBox;
    tbSave: TToolButton;
    tbPaste: TToolButton;
    GroupBox10: TGroupBox;
    Label5: TLabel;
    tsAnalysis: TTabSheet;
    Panel7: TPanel;
    chrHistoHue: TChart;
    srsHueHisto: THistogramSeries;
    ChartTool1: TColorLineTool;
    Panel8: TPanel;
    vleHueRanges: TValueListEditor;
    Panel9: TPanel;
    bbAnalizeHue: TBitBtn;
    rgHueBins: TRadioGroup;
    sePosterize: TSpinEdit;
    seSaturation: TSpinEdit;
    lbSaturation: TLabel;
    Label4: TLabel;
    seLightness: TSpinEdit;
    rgColorCalc: TRadioGroup;
    chhHSBadjust: TCheckBox;
    ToolBar2: TToolBar;
    tbMFrameSave: TToolButton;
    tbMFrameOpen: TToolButton;
    tbMFrameAnalize: TToolButton;
    ToolButton4: TToolButton;
    ToolBar6: TToolBar;
    tbParamOpen: TToolButton;
    tbParamSave: TToolButton;
    ToolButton15: TToolButton;
    tbParamReset: TToolButton;
    ToolButton1: TToolButton;
    ppmVars: TPopupMenu;
    pcElement: TPageControl;
    tsGElement: TTabSheet;
    tsSElement: TTabSheet;
    tbGplus: TToolButton;
    tbSplus: TToolButton;
    ToolButton51: TToolButton;
    SVGviewer: TWebBrowser;
    Splitter3: TSplitter;
    Splitter5: TSplitter;
    N4: TMenuItem;
    mSymbolindex: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkMonochromClick(Sender: TObject);
    procedure bbApplyShapesClick(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rgTowardClick(Sender: TObject);
    procedure chkColor2IgnoreClick(Sender: TObject);
    procedure bbApplySVGClick(Sender: TObject);
    procedure bbSymbolPickClick(Sender: TObject);
    procedure tbZoomInClick(Sender: TObject);
    procedure sbImageResize(Sender: TObject);
    procedure sbBitmapResize(Sender: TObject);
    procedure sbSVGResize(Sender: TObject);
    procedure rgShapesClick(Sender: TObject);
    procedure pcWorkplaceChange(Sender: TObject);
    procedure cbZoomFactorChange(Sender: TObject);
    procedure chkVarySizeClick(Sender: TObject);
    procedure tbCopyClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbPasteClick(Sender: TObject);
    procedure bbAnalizeHueClick(Sender: TObject);
    procedure mExitClick(Sender: TObject);
    procedure sePosterizeChange(Sender: TObject);
    procedure mOpenClick(Sender: TObject);
    procedure tbMFrameOpenClick(Sender: TObject);
    procedure tbMFrameAnalizeClick(Sender: TObject);
    procedure mHelpClick(Sender: TObject);
    procedure seBaselineChange(Sender: TObject);
    procedure tbParamOpenClick(Sender: TObject);
    procedure tbParamSaveClick(Sender: TObject);
    procedure tbParamResetClick(Sender: TObject);
    procedure mSymbolindexClick(Sender: TObject);
  private
    { Private declarations }
    rCell: array of array of TCell;
    GElem: TfmGElement;
    SElem: TfmSElement;
    procedure DisplayHint(Sender: TObject);
    procedure ClearImage;
    procedure ApplyLines(Horiz: boolean);
    procedure Rearrange;
    function Hue2BinHue(H: word): word;

  public
    { Public declarations }
    procedure ShowText(Txt: string);
    function rectChr(var rect: TRect; var rColor: TColor; var rIntens: real;
      var Contrast: real): boolean;
  end;

var
  frmImari: TfrmImari;
  bm4, bm8, bm24: TBitmap;

implementation

{$R *.dfm}

uses Consts, Math, StrUtils, Parser10, FontPickerU, Clipbrd, GraphUtil, InOutU,
  AboutU;

type
  TRGBTripleArray = packed array [0 .. 0] of TRGBTriple;

var
  arr, larr: array [0 .. 255] of integer;
  carr1: array [0 .. 255] of TColor;
  carr: array of TColor;
  aw, ah: integer;

procedure TfrmImari.DisplayHint(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := ' ' + GetLongHint(Application.Hint);
end;

procedure TfrmImari.FormCreate(Sender: TObject);
begin
  bm4 := TBitmap.Create;
  bm8 := TBitmap.Create;
  bm24 := TBitmap.Create;
  ImrOpt := TImrOpt.Create(UserPath + 'Imari.ini');
  ImrOpt.Lock := true;
  bcMonochrom.LinkProperty(ColorDialog1, 'Color');
  bcBackground.LinkProperty(ColorDialog2, 'Color');
  bcColor2Ignore.LinkProperty(ColorDialog3, 'Color');
  rgTowardClick(nil);
  DynaParser := TParser.Create(self);
  // frmFontPicker.SChar:= #0;
  Application.OnHint := DisplayHint;
  // SVGCtl1.setSrc(wideString(UserPath+'element.svg'));
  aw := 300;
  ah := 300;
  tsBmpOper.TabVisible := false;
  tsSVGoper.TabVisible := false;
  pcWorkplace.ActivePage := tsImage;
  pcOperations.ActivePage := tsBmpOper;
  GElem := TfmGElement.Create(self);
  SElem := TfmSElement.Create(self);
  GElem.Parent := tsGElement;
  SElem.Parent := tsSElement;
  ImrOpt.Opt2Vis;
  ImrOpt.Lock := false;
end; { TfrmImari.FormCreate }

procedure TfrmImari.ShowText(Txt: string);
begin
  StatusBar1.Panels[0].Text := Txt;
  Application.ProcessMessages;
end;

procedure TfrmImari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bm4.Free;
  bm8.Free;
  bm24.Free;
  ImrOpt.Vis2Opt;
  ImrOpt.UpdateFile;
  ImrOpt.Free;
end;

procedure TfrmImari.chkMonochromClick(Sender: TObject);
begin
  bcMonochrom.Enabled := chkMonochrom.Checked;
  seBaselineChange(nil);
end;

procedure TfrmImari.chkColor2IgnoreClick(Sender: TObject);
begin
  bcColor2Ignore.Enabled := chkColor2Ignore.Checked;
  seBaselineChange(nil);
end;

procedure TfrmImari.ClearImage;
var
  R: TRect;
begin
  if chrClearBeforeDraw.Checked then
    with Image2.Picture.Bitmap.Canvas do
    begin
      Brush.Style := bsSolid;
      Brush.Color := ColorDialog2.Color;
      R.Left := 0;
      R.Right := Width - 1;
      R.Bottom := 0;
      R.Top := Height - 1;
      FillRect(R);
    end
  else
    Image2.Picture.Bitmap.Assign(Image1.Picture.Bitmap);
end;

function TfrmImari.rectChr(var rect: TRect; var rColor: TColor;
  var rIntens: real; var Contrast: real): boolean;
var
  i, j, k, m, R, G, B, idx, minI, maxI: integer;
  wColor: TColor;
  a: real;
  H, L, S: word;
  RGB1: ^TRGBTripleArray;
  pBA: pByteArray;
  LogicalPalette: TMaxLogPalette;
  PaletteEntryCount: CARDINAL;

begin
  Result := false;
  if (rect.Left < 0) then
    rect.Left := 0;
  if (rect.Right > (bm24.Width - 1)) then
    rect.Right := bm24.Width - 1;
  if (rect.Left > rect.Right) then
    exit;
  if (rect.Bottom < 0) then
    rect.Bottom := 0;
  if (rect.Top > (bm24.Height - 1)) then
    rect.Top := bm24.Height - 1;
  if (rect.Bottom > rect.Top) then
    exit;
  k := 0;
  R := 0;
  G := 0;
  B := 0;
  minI := 768;
  maxI := 0;
  for i := rect.Bottom to rect.Top do
  begin
    RGB1 := bm24.ScanLine[i];
    for j := rect.Left to rect.Right do
      with RGB1[j] do
      begin
        SetLength(carr, k + 1);
        carr[k] := RGB(rgbtRed, rgbtGreen, rgbtBlue);
        inc(k);
        R := R + rgbtRed;
        G := G + rgbtGreen;
        B := B + rgbtBlue;
        m := rgbtRed + rgbtGreen + rgbtBlue;
        if m < minI then
          minI := m;
        if m > maxI then
          maxI := m;
      end;
  end; // dec(k);
  Contrast := (maxI - minI) / 768;
  R := round(R / k);
  G := round(G / k);
  B := round(B / k);
  if rgToward.ItemIndex = 0 then
    rIntens := 1 - (R + G + B) / 768 // white background
  else
    rIntens := (R + G + B) / 768; // black background
  if chkVarySize.Checked then
  begin
    rIntens := rIntens * seFullness.Value / 100;
    a := seContrast.Value / 100;
    rIntens := a * rIntens * rIntens + (1 - a) * rIntens;
  end
  else
    rIntens := 1;
  if rIntens < (seBaseline.Value / 100) then
    rIntens := 0;
  // H S L
  case rgColorCalc.ItemIndex of
    0:
      rColor := RGB(R, G, B); // average
    1:
      begin
        k := 0; // most popular
        for i := 0 to 255 do
          arr[i] := 0;
        for i := rect.Bottom to rect.Top do
        begin
          if i > (bm8.Height - 1) then
            continue;
          pBA := bm8.ScanLine[i];
          for j := rect.Left to rect.Right do
          begin
            idx := pBA[j];
            arr[idx] := arr[idx] + 1;
            carr1[idx] := carr[k];
            inc(k);
          end;
        end;
        idx := 0;
        R := arr[0];
        for i := 1 to 255 do
          if rgToward.ItemIndex = 0 then
          begin
            if arr[i] > R then
            begin
              R := arr[i];
              idx := i;
            end;
          end
          else
          begin
            if arr[i] < R then
            begin
              R := arr[i];
              idx := i;
            end;
          end;
        rColor := carr1[idx];
      end;
  end;
  if chhHSBadjust.Checked then
  begin
    ColorRGBToHLS(rColor, H, L, S);
    if sePosterize.Value < sePosterize.MaxValue then
      H := Hue2BinHue(H);
    if seSaturation.Value < seSaturation.MaxValue then
    begin
      a := 2400 / seSaturation.Value; // discrete width
      S := round(floor(S / a) * a + a / 2);
    end;
    if seLightness.Value < seLightness.MaxValue then
    begin
      a := 240 / seLightness.Value; // discrete width
      L := round(floor(L / a) * a + a / 2);
    end;
    rColor := ColorHLSToRGB(H, L, S);
  end;
  if chkMonochrom.Checked then
    rColor := ColorDialog1.Color;
  Result := true;
end; { TfrmImari.rectChr }

procedure TfrmImari.ApplyLines(Horiz: boolean);
var
  rC: TColor;
  rect: TRect;
  H, i, j, j0, k, d: integer;
  rI, rCn: real;
begin
  if Image1.Picture.Bitmap.Empty then
    exit;
  bm4.Assign(Image1.Picture.Bitmap);
  bm4.PixelFormat := pf4bit;
  bm8.Assign(Image1.Picture.Bitmap);
  bm8.PixelFormat := pf8bit;
  bm24.Assign(Image1.Picture.Bitmap);
  bm24.PixelFormat := pf24bit;
  if chrClearBeforeDraw.Checked then
    ClearImage;
  with Image2.Picture.Graphic do
  begin
    Height := Image1.Picture.Graphic.Height;
    Width := Image1.Picture.Graphic.Width;
  end;
  if Horiz then
  begin // horizontal lines
    if seRows.Value = 0 then
      seRows.Value := seCols.Value;
    H := ceil(Image1.Picture.Graphic.Height / seRows.Value);
    for k := 0 to Image1.Picture.Graphic.Width - 1 do
    begin
      j0 := 0;
      for i := 1 to seRows.Value do
      begin
        rect.Left := k;
        rect.Right := k;
        rect.Bottom := j0;
        j := i * H;
        if j > (Image1.Picture.Graphic.Height - 1) then
          j := Image1.Picture.Graphic.Height - 1;
        rect.Top := j;
        if rectChr(rect, rC, rI, rCn) then
          if (rC <> ColorDialog3.Color) or not chkColor2Ignore.Checked then
            with Image2.Picture.Bitmap.Canvas do
            begin
              if not chkVarySize.Checked then
                rI := 1;
              j := (rect.Top + rect.Bottom) div 2;
              d := ceil(H * rI / 2);
              Pen.Color := rC;
              MoveTo(k, j - d);
              LineTo(k, j + d);
            end;
        j0 := rect.Top - 1;
      end;
    end;
  end
  else
  begin // vertical lines
    H := ceil(Image1.Picture.Graphic.Width / seCols.Value);
    for k := 0 to Image1.Picture.Graphic.Height - 1 do
    begin
      j0 := 0;
      for i := 1 to seCols.Value do
      begin
        rect.Bottom := k;
        rect.Top := k;
        rect.Left := j0;
        j := i * H;
        if j > (Image1.Picture.Graphic.Width - 1) then
          j := Image1.Picture.Graphic.Width - 1;
        rect.Right := j;
        if rectChr(rect, rC, rI, rCn) then
          if (rC <> ColorDialog3.Color) or not chkColor2Ignore.Checked then
            with Image2.Picture.Bitmap.Canvas do
            begin
              if not chkVarySize.Checked then
                rI := 1;
              j := (rect.Left + rect.Right) div 2;
              d := ceil(H * rI / 2);
              Pen.Color := rC;
              MoveTo(j - d, k);
              LineTo(j + d, k);
            end;
        j0 := rect.Right - 1;
      end;
    end;
  end;
end; { TfrmImari.bbApplyLinesClick }

procedure TfrmImari.bbApplyShapesClick(Sender: TObject);
var
  rC: TColor;
  rect: TRect;
  ih, iw, i, j, k, d, ch, cw: integer;
  rI, rCn: real;
begin
  if Image1.Picture.Bitmap.Empty then
    raise Exception.Create('Error: No picture to process.');
  try
  Screen.Cursor := crHourglass;
  bbAnalizeHueClick(nil);
  if rgShapes.ItemIndex > 2 then
  begin
    ApplyLines(rgShapes.ItemIndex = 4);
    pcWorkplace.ActivePage := tsBitmap;
    exit;
  end;
  bm4.Assign(Image1.Picture.Bitmap);
  bm4.PixelFormat := pf4bit;
  bm8.Assign(Image1.Picture.Bitmap);
  bm8.PixelFormat := pf8bit;
  bm24.Assign(Image1.Picture.Bitmap);
  bm24.PixelFormat := pf24bit;
  ClearImage;
  with Image2.Picture.Graphic do
  begin
    Width := Image1.Picture.Graphic.Width;
    iw := ImrOpt.CellWidth;
    Height := Image1.Picture.Graphic.Height;
    ih := ImrOpt.CellHeight;
  end;
  if rgShapes.ItemIndex = 3 then
  begin
    if frmFontPicker.SChar = #0 then
      frmFontPicker.Execute;
    if frmFontPicker.SChar = #0 then
      exit;
  end;
  j := 0;
  repeat
    i := 0;
    repeat
      rect.Left := i;
      rect.Right := i + iw - 1;
      rect.Bottom := j;
      rect.Top := j + ih - 1;
      if rectChr(rect, rC, rI, rCn) then
        with Image2.Picture.Bitmap.Canvas do
        begin
          Brush.Color := rC;
          Pen.Color := Brush.Color;
          cw := i + round(iw / 2);
          ch := j + round(ih / 2);
          rect.Left := cw - round(rI * iw / 2);
          rect.Right := cw + round(rI * iw / 2);
          if rect.Right > (Image2.Picture.Graphic.Width) then
            rect.Right := (Image2.Picture.Graphic.Width);
          rect.Bottom := ch - round(rI * ih / 2);
          rect.Top := ch + round(rI * ih / 2);
          if rect.Top > (Image2.Picture.Graphic.Height) then
            rect.Top := (Image2.Picture.Graphic.Height);
          if (rC <> ColorDialog3.Color) or not chkColor2Ignore.Checked then
            case rgShapes.ItemIndex of
              0:
                FillRect(rect);
              1:
                Ellipse(rect.Left, rect.Bottom, rect.Right, rect.Top);
              2:
                begin
                  Font := frmFontPicker.SFont;
                  Font.Height := -round(rI * seFullness.Value * ih / 100);;
                  Font.Color := Brush.Color;
                  Brush.Color := ColorDialog2.Color;
                  TextOut(rect.Left, rect.Bottom, frmFontPicker.SChar);
                end;
            end;
        end;
      inc(i, iw);
    until (i > (Image1.Picture.Width - 1));
    inc(j, ih);
  until (j > (Image1.Picture.Height - 1));
  pcWorkplace.ActivePage := tsBitmap;
  finally
    Screen.Cursor := crDefault;
    cbZoomFactorChange(nil);
  end;
end; { TfrmImari.bbApplyShapesClick }

procedure TfrmImari.tbOpenClick(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir := UserPath + ImagePath;
  if OpenPictureDialog1.Execute then
  begin
    Image1.AutoSize := true;
    Image2.AutoSize := true;
    Image1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    Image1.AutoSize := false;
    Image2.AutoSize := false;
    Caption := 'Imari v1.0 - ' + OpenPictureDialog1.Filename;
    cbZoomFactor.ItemIndex := 5;
    aw := Image1.Width;
    ah := Image1.Height;
    cbZoomFactorChange(nil);
  end;
end; { TfrmImari.tbOpenClick }

procedure TfrmImari.tbCopyClick(Sender: TObject);
var
  MyFormat: word;
  AData: THandle;
  APalette: HPALETTE;
begin
  if pcWorkplace.ActivePage = tsBitmap then
  begin
    Image2.Picture.Bitmap.SaveToClipBoardFormat(MyFormat, AData, APalette);
    ClipBoard.SetAsHandle(MyFormat, AData);
  end;
  if pcWorkplace.ActivePage = tsSVG then
    ClipBoard.AsText := mmSource.Lines.Text;
end; { TfrmImari.tbSaveClick }

procedure TfrmImari.Rearrange;
begin
  pgInput.Visible := mTwoPanes.Checked;
  mVertical.Enabled := pgInput.Visible;
  mHorizontal.Enabled := pgInput.Visible;
  if not pgInput.Visible then
  begin
    tsImage.PageControl := pcWorkplace;
    tsImage.PageIndex := 0;
    exit;
  end;
  tsImage.PageControl := pgInput;
  if mVertical.Checked then
    pgInput.Align := alLeft
  else
    pgInput.Align := alTop;
end;

procedure TfrmImari.FormResize(Sender: TObject);
begin
  Rearrange;
  if not pgInput.Visible then
    exit;
  if mVertical.Checked then
    pgInput.Width := round((pnlImage.Width) / 2)
  else
    pgInput.Height := round((pnlImage.Height) / 2);
end;

procedure TfrmImari.rgTowardClick(Sender: TObject);
begin
  if rgToward.ItemIndex = 0 then
    ColorDialog2.Color := clWhite
  else
    ColorDialog2.Color := clBlack;
  bcBackground.Refresh;
  seBaselineChange(nil);
end;

procedure TfrmImari.tbMFrameAnalizeClick(Sender: TObject);
var ls: TStringlist;
begin
  ls:= TStringList.Create; ls.Assign(vleGlobals.Strings);
  GElem.Analyze(mmFrame.Lines, ls, false); vleGlobals.Strings.Assign(ls);
  ls.Assign(vleGlobals.Strings);
  GElem.Analyze(GElem.mmElement.Lines, ls, false); vleGlobals.Strings.Assign(ls);
end;

procedure TfrmImari.bbApplySVGClick(Sender: TObject);
var
  sl: TStrings;
begin
  if pcElement.ActivePageIndex<>0 then exit;
  if Image1.Picture.Bitmap.Empty then
    raise Exception.Create('Error: No picture to process.');
  try
    sl := TStringList.Create;
    Screen.Cursor := crHourglass;
    sl.Assign(mmFrame.Lines);
    GElem.Apply(Image1, sl);
    mmSource.Lines.Assign(sl);
    LoadHTML2WebBrowser(SVGviewer, UserPath + 'loading.svg');
    Application.ProcessMessages;
    ShowText('Updating SVG image');
    LoadHTML2WebBrowser(SVGviewer, UserPath + 'temp.svg');
  finally
    sl.Free;
    ShowText('');
    Screen.Cursor := crDefault;
    cbZoomFactorChange(nil);
  end;
end; { bbApplySVGClick }

procedure TfrmImari.bbSymbolPickClick(Sender: TObject);
var
  bm: TBitmap;
  rct: TRect;
begin
  frmFontPicker.Execute;
  bbSymbolPick.Glyph.Height := 32;
  bbSymbolPick.Glyph.Width := 28;
  rct.Top := 0;
  rct.Left := 1;
  rct.Right := bbSymbolPick.Glyph.Width;
  rct.Bottom := bbSymbolPick.Glyph.Height;
  with bbSymbolPick.Glyph.Canvas do
  begin
    Font.Assign(frmFontPicker.SFont);
    Font.Height := -26;
    TextRect(rct, 1, 0, frmFontPicker.SChar);
  end;
end;

procedure TfrmImari.tbZoomInClick(Sender: TObject);
var
  i, j: integer;
begin
  i := cbZoomFactor.ItemIndex;
  if (Sender = tbZoomIn) and (i < (cbZoomFactor.Items.Count - 1)) then
    inc(i);
  if (Sender = tbZoomOut) and (i > 0) then
    dec(i);
  cbZoomFactor.ItemIndex := i;
  cbZoomFactorChange(nil);
end;

procedure TfrmImari.sbImageResize(Sender: TObject);
begin
  Image1.Left := round((sbImage.Width - Image1.Width) / 2);
  Image1.Top := round((sbImage.Height - Image1.Height) / 2);
end;

procedure TfrmImari.sbBitmapResize(Sender: TObject);
begin
  Image2.Left := round((sbBitmap.Width - Image2.Width) / 2);
  Image2.Top := round((sbBitmap.Height - Image2.Height) / 2);
end;

procedure TfrmImari.sbSVGResize(Sender: TObject);
begin
  pnlSVG.Left := round((sbSVG.Width - pnlSVG.Width) / 2);
  pnlSVG.Top := round((sbSVG.Height - pnlSVG.Height) / 2);
end;

procedure TfrmImari.rgShapesClick(Sender: TObject);
begin
  bbSymbolPick.Visible := (rgShapes.ItemIndex = 2);
end;

procedure TfrmImari.pcWorkplaceChange(Sender: TObject);
begin
  if pcWorkplace.ActivePage = tsBitmap then
    pcOperations.ActivePage := tsBmpOper;
  if pcWorkplace.ActivePage = tsSVG then
    pcOperations.ActivePage := tsSVGoper;
  cbZoomFactorChange(nil);
end;

procedure TfrmImari.cbZoomFactorChange(Sender: TObject);
var
  ARect: TRect;
  bm: TBitmap;
  zf: real;
  i, j: integer;
  ss: string;
begin
  zf := 1;
  ss := cbZoomFactor.Text;
  for i := 1 to length(ss) do
    if not(ss[i] in ['0' .. '9']) then
      delete(ss, i, 1);
  val(ss, zf, j);
  if j > 0 then
    exit;
  zf := zf / 100;
  Image1.Proportional := false;
  Image1.Height := round(ah * zf);
  Image1.Width := round(aw * zf);
  Image1.Proportional := true;
  sbImageResize(nil);

  Image2.Proportional := false;
  Image2.Height := Image1.Height;
  Image2.Width := Image1.Width;
  Image2.Proportional := true;
  sbBitmapResize(nil);

  pnlSVG.Height := Image1.Height;
  pnlSVG.Width := Image1.Width;
  sbSVGResize(nil);
end;

procedure TfrmImari.chkVarySizeClick(Sender: TObject);
var
  bb: boolean;
begin
  bb := chkVarySize.Checked;
  lbFullness.Enabled := bb;
  seFullness.Enabled := bb;
  lbContrast.Enabled := bb;
  seContrast.Enabled := bb;
  seBaselineChange(nil);
end;

procedure TfrmImari.tbSaveClick(Sender: TObject);
begin
  if pcWorkplace.ActivePage = tsBitmap then
  begin
    SavePictureDialog1.InitialDir := UserPath + ImagePath;
    if SavePictureDialog1.Execute then
      Image2.Picture.SaveToFile(SavePictureDialog1.Filename);
  end;
  if pcWorkplace.ActivePage = tsSVG then
  begin
    SaveDialog1.InitialDir := UserPath + ResultPath;
    if SaveDialog1.Execute then
      CopyFile(pchar(UserPath + 'temp.svg'), pchar(SaveDialog1.Filename), false);
  end;
end;

procedure TfrmImari.tbPasteClick(Sender: TObject);
begin
  if not ClipBoard.HasFormat(CF_BITMAP) then
    exit;
  Image1.AutoSize := true;
  Image2.AutoSize := true;
  Image1.Picture.Bitmap.LoadFromClipBoardFormat(CF_BITMAP,
    ClipBoard.GetAsHandle(CF_BITMAP), 0);
  Image2.Picture.Bitmap.LoadFromClipBoardFormat(CF_BITMAP,
    ClipBoard.GetAsHandle(CF_BITMAP), 0);
  Image1.AutoSize := false;
  Image2.AutoSize := false;
  cbZoomFactor.ItemIndex := 5;
  aw := Image1.Width;
  ah := Image1.Height;
  cbZoomFactorChange(nil);
end;

procedure TfrmImari.mExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImari.bbAnalizeHueClick(Sender: TObject);
var
  i, j, k, m, n, idx: integer;
  a: real;
  H, L, S: word;
  total, t0, t1, tt: CARDINAL;
  RGB1: ^TRGBTripleArray;
  pBA: pByteArray;
  wColor: TColor;
begin
  bm24.Assign(Image1.Picture.Bitmap);
  for i := 0 to 240 do
    arr[i] := 0;
  total := 0;
  for i := 0 to bm24.Height - 1 do
  begin
    RGB1 := bm24.ScanLine[i];
    for j := 0 to bm24.Width - 1 do
      with RGB1[j] do
      begin
        ColorRGBToHLS(RGB(rgbtRed, rgbtGreen, rgbtBlue), H, L, S);
        arr[H] := arr[H] + S;
        total := total + S;
      end;
  end;
  srsHueHisto.Clear;
  k := round(sePosterize.Value * 2.4);
  vleHueRanges.Strings.Clear;
  for i := 0 to 240 do
    srsHueHisto.AddXY(i, arr[i], '', ColorHLSToRGB(i, 120, 239));
  case rgHueBins.ItemIndex of
    0:
      begin
        for i := 0 to 240 do
          larr[i] := 0;
        a := 240 / k; // descrete width
        for i := 0 to k - 1 do
        begin
          n := round(i * a);
          m := arr[n];
          for j := round(i * a + 1) to round(a * (i + 1) - 1) do
            if m < arr[j] then
            begin
              m := arr[j];
              n := j;
            end;
          larr[i] := n;
          vleHueRanges.Strings.Add(IntToStr(round(i * a)) + '-' +
            IntToStr(round(a * (i + 1) - 1)) + '=' + IntToStr(n));
        end;
      end;
    1:
      begin
        t0 := 0;
        t1 := 0;
        tt := 0;
        j := 0;
        for i := 0 to 240 do
        begin
          tt := tt + arr[i];
          if tt > round(total / k) then
          begin
            tt := 0;
            n := arr[j];
            idx := j + 1;
            for m := j + 1 to i do
              if n < arr[m] then
              begin
                idx := m;
                n := arr[m];
              end;
            vleHueRanges.Strings.Add(IntToStr(j) + '-' + IntToStr(i) + '=' +
              IntToStr(idx));
            j := i + 1;
          end;
        end;
        n := arr[j];
        idx := j + 1;
        for m := j + 1 to 239 do
          if n < arr[m] then
          begin
            idx := m;
            n := arr[m];
          end;
        vleHueRanges.Strings.Add(IntToStr(j) + '-' + IntToStr(239) + '=' +
          IntToStr(idx));
      end;
    2:
      begin
      end;
  end;
  if Sender <> nil then
    pcWorkplace.ActivePage := tsAnalysis;
end; { TfrmImari.bbAnalizeHueClick }

function TfrmImari.Hue2BinHue(H: word): word;
var
  i, j, a, B: integer;
  ss: string;
begin
  with vleHueRanges do
    for i := 0 to Strings.Count - 1 do
    begin
      ss := Strings.Names[i];
      j := pos('-', ss);
      if j = 0 then
        continue;
      a := StrToInt(copy(ss, 1, j - 1));
      B := StrToInt(copy(ss, j + 1, 255));
      if (H >= a) and (H <= B) then
      begin
        Result := StrToInt(Strings.Values[ss]);
        exit;
      end;
    end;
end; { TfrmImari.Hue2BinHue }

procedure TfrmImari.sePosterizeChange(Sender: TObject);
var
  se: TSpinEdit;
begin
  se := (Sender as TSpinEdit);
  if (se.Value > 9) and (se.Tag < se.Value) then
    se.Increment := 5;
  if (se.Value < 11) and (se.Tag > se.Value) then
    se.Increment := 1;
  se.Tag := se.Value;
  seBaselineChange(nil);
end;

procedure TfrmImari.mOpenClick(Sender: TObject);
begin
  frmInOut.ShowModal;
end;

procedure TfrmImari.mSymbolindexClick(Sender: TObject);
begin
  GenerateSymbolTable(true);
end;

procedure TfrmImari.tbMFrameOpenClick(Sender: TObject);
begin
  with OpenDialog1 do
  begin
    Title := copy((Sender as TToolButton).Hint, 2, 255);
    Filename := '';
    Filter := 'Frame template(*.frm)|*.frm';
    InitialDir := UserPath + TemplatePath;
    if Execute then
    begin
      mmFrame.Lines.LoadFromFile(Filename);
      gbMFrame.Caption := ' Main Frame (' + Filename + ') ';
    end;
  end;
end;

procedure TfrmImari.mHelpClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TfrmImari.seBaselineChange(Sender: TObject);
begin
  ImrOpt.Vis2Opt;
end;

procedure TfrmImari.tbParamOpenClick(Sender: TObject);
begin
  with OpenDialog1 do
  begin
    Title := 'Open Imari Options';
    Filename := '';
    Filter := 'Imari Options(*.ini)|*.ini';
    InitialDir := UserPath;
    if Execute then
    begin
      ImrOpt.Free;
      ImrOpt := TImrOpt.Create(Filename);
      ImrOpt.Opt2Vis;
    end;
  end;
end;

procedure TfrmImari.tbParamSaveClick(Sender: TObject);
begin
  with SaveDialog1 do
  begin
    Title := 'Save Imari Options';
    Filename := '';
    Filter := 'Imari Options(*.ini)|*.ini';
    InitialDir := UserPath;
    if Execute then
    begin
      ImrOpt.Free;
      ImrOpt := TImrOpt.Create(Filename);
      ImrOpt.Vis2Opt;
      ImrOpt.UpdateFile;
    end;
  end;
end;

procedure TfrmImari.tbParamResetClick(Sender: TObject);
begin
  ImrOpt.Clear;
  ImrOpt.Opt2Vis;
end;

end.
