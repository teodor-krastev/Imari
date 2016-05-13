unit SElemU;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, CheckLst, ComCtrls, Grids, ValEdit, ExtCtrls, ToolWin,
  OleCtrls, ImgList, SHDocVw;

type
  TfmSElement = class(TFrame)
    ImageList1: TImageList;
    Panel5: TPanel;
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
    bbRegenerate: TBitBtn;
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
    WebBrowser1: TWebBrowser;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
{$R *.dfm}


end.
