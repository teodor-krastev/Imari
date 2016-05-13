program Imari;

uses
  Forms,
  ImariU in 'ImariU.pas' {frmImari},
  Parser10 in 'Parser10.pas',
  FontPickerU in 'FontPickerU.pas' {frmFontPicker},
  InOutU in 'InOutU.pas' {frmInOut},
  GElemU in 'GElemU.pas' {fmGElement: TFrame},
  SElemU in 'SElemU.pas' {fmSElement: TFrame},
  AboutU in 'AboutU.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmImari, frmImari);
  Application.CreateForm(TfrmInOut, frmInOut);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmFontPicker, frmFontPicker);
  Application.Run;
end.
