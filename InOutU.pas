unit InOutU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShellCtrls, Buttons, OleCtrls,
  CheckLst, ExtCtrls;

type
  TfrmInOut = class(TForm)
    Panel1: TPanel;
    ShellListView1: TShellListView;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CheckListBox1: TCheckListBox;
    Panel3: TPanel;
    ShellTreeView1: TShellTreeView;
    bbHelp: TBitBtn;
    bbCancel: TBitBtn;
    bbOK: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInOut: TfrmInOut;

implementation

{$R *.dfm}

end.
