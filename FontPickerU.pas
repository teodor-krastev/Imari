unit FontPickerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmFontPicker = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cbFontNames: TComboBox;
    Memo1: TMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    chkBold: TCheckBox;
    chkItalic: TCheckBox;
    procedure cbFontNamesChange(Sender: TObject);
    procedure chkBoldClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    SFont: TFont;
    SChar: char;
    function Execute: boolean;
  end;

var
  frmFontPicker: TfrmFontPicker;

implementation

{$R *.dfm}

uses GraphUtil;

procedure TfrmFontPicker.FormCreate(Sender: TObject);
begin
  if SFont = nil then
    SFont := TFont.Create;
  cbFontNames.Items.Clear;
  cbFontNames.Items.Assign(Screen.Fonts);
  cbFontNames.Sorted := True;
  cbFontNames.ItemIndex := 0;
  cbFontNamesChange(nil);
end;

function TfrmFontPicker.Execute: boolean;
var
  ss: string;
begin
  ShowModal;
  Result := (ModalResult = mrOK);
  ss := trim(Memo1.SelText);
  if length(ss) = 0 then
    Result := false;
  if Result then
  begin
    SFont.Assign(Memo1.Font);
    SChar := ss[1];
  end;
end;

procedure TfrmFontPicker.cbFontNamesChange(Sender: TObject);
var
  i, j: integer;
  ss: string;
begin
  if cbFontNames.Text = '' then
    exit;
  Memo1.Font.Name := cbFontNames.Text;
  ss := '';
  for i := 33 to 125 do
    ss := ss + chr(i) + ' ';
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ss);
end;

procedure TfrmFontPicker.chkBoldClick(Sender: TObject);
begin
  Memo1.Font.Style := [];
  if chkBold.Checked then
    Memo1.Font.Style := [fsBold];
  if chkItalic.Checked then
    Memo1.Font.Style := Memo1.Font.Style + [fsItalic];
end;

end.

{ case rgColors.ItemIndex of
  0:rColor:= RGB(R,G,B);
  1:begin k:= 0;
  for i:= 0 to 255 do arr[i]:= 0;
  for i:= rect.Bottom to rect.Top do
  begin
  pBA:= bm8.ScanLine[i];
  for j:= rect.Left to rect.Right do
  begin if (j<0) or (j>(bm8.Width-1)) then continue;
  idx:= pBA[j];
  arr[idx]:= arr[idx]+1;
  carr1[idx]:= carr[k]; inc(k);
  end;
  end;
  idx:= 0; r:= arr[0];
  for i:=1 to 255 do
  if arr[i]>r then begin r:= arr[i]; idx:= i;
  end;
  rColor:= carr1[idx];
  end;
  2:begin k:= 0;
  for i:= 0 to 15 do arr[i]:= 0;
  for i:= rect.Bottom to rect.Top do  // by height
  begin
  pBA:= bm4.ScanLine[i];
  for j:= (rect.Left div 2) to (rect.Right div 2) do  // by width
  begin if (j<0) or (j>((bm4.Width div 2)-1)) then continue;

  idx:= pBA[j] mod 16;
  arr[idx]:= arr[idx]+1;
  carr1[idx]:= carr[k]; inc(k);

  idx:= pBA[j] div 16;
  arr[idx]:= arr[idx]+1;
  carr1[idx]:= carr[k]; inc(k);
  end;
  end;
  idx:= 0; r:= arr[0];
  for i:=1 to 15 do
  if arr[i]>r then begin r:= arr[i]; idx:= i;
  end;
  if chkSystemColor.Checked
  then begin
  GetPaletteEntries(SystemPalette16,0,16,LogicalPalette.palPalEntry);
  with LogicalPalette.palPalEntry[idx] do
  rColor:= RGB(peRed,peGreen,peBlue);
  end
  else rColor:= carr1[idx];
  end;
  end;
}
