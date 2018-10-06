unit FrmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    REInput: TRichEdit;
    Button1: TButton;
    REOutput: TRichEdit;
    GBoxPeso: TGroupBox;
    LblMass: TLabel;
    GBoxComp: TGroupBox;
    LblComp1: TLabel;
    LblComp2: TLabel;
    LblComp3: TLabel;
    LblComp4: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}











end.
