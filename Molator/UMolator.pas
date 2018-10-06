unit UMolator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, mlb2, mlbc,
  Grids, Buttons, Menus;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GBox: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    LEscala: TLabel;
    Lmmol: TLabel;
    Label14: TLabel;
    Lml: TLabel;
    Mol1: TEdit;
    Mol2: TEdit;
    Mol3: TEdit;
    Mol4: TEdit;
    Mol5: TEdit;
    Mol6: TEdit;
    Mol8: TEdit;
    Den1: TEdit;
    Den2: TEdit;
    Den3: TEdit;
    Den4: TEdit;
    Den5: TEdit;
    Den6: TEdit;
    SpinButton1: TSpinButton;
    eq1: TEdit;
    eq2: TEdit;
    eq3: TEdit;
    eq4: TEdit;
    eq5: TEdit;
    eq6: TEdit;
    SpinButton2: TSpinButton;
    SpinButton3: TSpinButton;
    SpinButton4: TSpinButton;
    SpinButton5: TSpinButton;
    SpinButton6: TSpinButton;
    Panel1: TPanel;
    mg1: TEdit;
    mg2: TEdit;
    mg3: TEdit;
    mg4: TEdit;
    mg5: TEdit;
    mg6: TEdit;
    mg8: TEdit;
    mmol1: TEdit;
    mmol2: TEdit;
    mmol3: TEdit;
    mmol4: TEdit;
    mmol5: TEdit;
    mmol6: TEdit;
    GroupBox1: TGroupBox;
    EnombrePP: TLabeledEdit;
    EmwPP: TLabeledEdit;
    EdenPP: TLabeledEdit;
    SavePP: TSpeedButton;
    UpdatePP: TSpeedButton;
    DeletePP: TSpeedButton;
    ppartida: TMlbc;
    reactivos: TMlbc;
    GroupBox2: TGroupBox;
    GridPP: TStringGrid;
    GridR: TStringGrid;
    EnombreR: TLabeledEdit;
    EmwR: TLabeledEdit;
    EdenR: TLabeledEdit;
    SaveR: TSpeedButton;
    UpdateR: TSpeedButton;
    DeleteR: TSpeedButton;
    EpurR: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    GroupBox3: TGroupBox;
    Pfinalmw: TLabeledEdit;
    eqF: TEdit;
    SpinButton7: TSpinButton;
    Label16: TLabel;
    Labelfinal: TLabel;
    PfinalNom: TLabeledEdit;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButtonNew: TToolButton;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    ToolBar2: TToolBar;
    Label17: TLabel;
    CBEscala: TComboBox;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ComboBoxPP: TComboBox;
    CBNom2: TComboBox;
    CBNom3: TComboBox;
    CBNom4: TComboBox;
    CBNom5: TComboBox;
    CBNom6: TComboBox;
    nom7: TEdit;
    GroupBox4: TGroupBox;
    StringGrid1: TStringGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    refcuaderno: TLabeledEdit;
    PopupMenu: TPopupMenu;
    N01: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    Label12: TLabel;
    Label13: TLabel;
    CBNom7: TComboBox;
    Mol7: TEdit;
    Den7: TEdit;
    eq7: TEdit;
    SpinButton8: TSpinButton;
    mg7: TEdit;
    mmol7: TEdit;
    Nom8: TEdit;
    Label15: TLabel;
    Mol9: TEdit;
    Label18: TLabel;
    mg9: TEdit;
    Label19: TLabel;
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure Nom1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButtonNewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GridPPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GridPPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SavePPClick(Sender: TObject);
    procedure refreshGridPP;
    procedure refreshGridR;
    procedure FillComboPP;
    procedure FillComboR;
    procedure Save(filename: string; SaveAs: boolean);
    procedure DeletePPClick(Sender: TObject);
    procedure UpdatePPClick(Sender: TObject);
    procedure SaveRClick(Sender: TObject);
    procedure UpdateRClick(Sender: TObject);
    procedure DeleteRClick(Sender: TObject);
    procedure GridRSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GridRDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mg1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ComboBoxPPChange(Sender: TObject);
    procedure CBNom2Change(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure CBEscalaChange(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure mg2Click(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure mg2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nombre, mw, densidad : string;
  reactivo: integer;
  PUpMenu: TPopupMenu; //Menus contextuales
  PUpItems: array[0..4] of TMenuItem ;
  //ppartida: TMlb2;
implementation

{$R *.dfm}

procedure TForm1.SpinButton1UpClick(Sender: TObject);
var
 texto: double;
 obj: TObject;
begin
obj:= ((sender as TSpinButton).FocusControl) ;
texto:= strtofloat((obj as TEdit).text);
texto := texto + 0.1;
(obj as TEdit).text:= format ('%.2n', [texto] );
end;

procedure TForm1.SpinButton1DownClick(Sender: TObject);
var
 texto: double;
 obj: TObject;
begin
obj:= ((sender as TSpinButton).FocusControl) ;
texto:= strtofloat((obj as TEdit).text);
texto := texto - 0.1;
if texto < 0 then exit;
(obj as TEdit).text:= format ('%.2n', [texto] );
end;

procedure TForm1.Nom1DblClick(Sender: TObject);
var
f: integer;
begin
ppartida.GoFirst ;
for f := 0 to ppartida.rowcount -1 do
begin

ppartida.GoNext ;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
f: integer;
dir: string;
begin
dir:= ExtractFilePath(Application.ExeName) ;
ppartida.FileName := dir + '\ppartida.mlb';
ppartida.LoadFromMLBFile(dir) ;
ppartida.GoFirst ;
for f := 0 to ppartida.rowcount -1 do
begin
ppartida.GoNext ;
end;
GridPP.Cells[1,0]:='Nombre';
GridPP.Cells[2,0]:='M.W.';
GridPP.Cells[3,0]:='Densidad';
ppartida.GoFirst ;
GridPP.RowCount := ppartida.RowCount +1  ;
for f:= 1 to ppartida.RowCount  do
begin
GridPP.Cells[1,f]:= ppartida.GetData('Rnombre');
GridPP.Cells[2,f]:= ppartida.GetData('Rmw');
GridPP.Cells[3,f]:= ppartida.GetData('Rdensidad');
ppartida.GoNext ;
end;

reactivos.FileName := dir + '\reactivos.mlb';
reactivos.LoadFromMLBFile(dir) ;
reactivos.GoFirst ;
for f := 0 to reactivos.rowcount -1 do
begin

reactivos.GoNext ;
end;
gridr.Cells[1,0]:='Nombre';
gridr.Cells[2,0]:='M.W.';
gridr.Cells[3,0]:='Densidad';
reactivos.GoFirst ;
gridr.RowCount := reactivos.RowCount +1  ;
for f:= 1 to reactivos.RowCount  do
begin
gridr.Cells[1,f]:= reactivos.GetData('Rnombre');
gridr.Cells[2,f]:= reactivos.GetData('Rmw');
gridr.Cells[3,f]:= reactivos.GetData('Rdensidad');
reactivos.GoNext ;
end;
FillcomboPP;
FillComboR;

end;

procedure TForm1.FillComboPP;
var
f: integer;
begin
ppartida.GoFirst ;
ComboBoxPP.Clear ;
for f := 0 to ppartida.rowcount -1 do
begin
comboboxPP.Items.Add(ppartida.GetData('Rnombre') );
ppartida.GoNext ;
end;
end;

procedure TForm1.FillComboR;
var
f: integer;
begin
reactivos.GoFirst ;
CbNom2.Clear ;
CbNom3.Clear ;
CbNom4.Clear ;
CbNom5.Clear ;
CbNom6.Clear ;
CbNom7.Clear ;
for f := 0 to reactivos.rowcount -1 do
begin
CBNom2.Items.Add(reactivos.GetData('Rnombre') );
CBNom3.Items.Add(reactivos.GetData('Rnombre') );
CBNom4.Items.Add(reactivos.GetData('Rnombre') );
CBNom5.Items.Add(reactivos.GetData('Rnombre') );
CBNom6.Items.Add(reactivos.GetData('Rnombre') );
CBNom7.Items.Add(reactivos.GetData('Rnombre') );
reactivos.GoNext ;
end;
end;



procedure TForm1.RefreshGridPP;
var
f : integer;
begin
GridPP.Cells[1,0]:='Nombre';
GridPP.Cells[2,0]:='M.W.';
GridPP.Cells[3,0]:='Densidad';
ppartida.GoFirst ;
for f:= 1 to ppartida.RowCount  do
begin
GridPP.Cells[1,f]:= ppartida.GetData('Rnombre');
GridPP.Cells[2,f]:= ppartida.GetData('Rmw');
GridPP.Cells[3,f]:= ppartida.GetData('Rdensidad');
ppartida.GoNext ;
end;
end;

procedure TForm1.RefreshGridR;
var
f : integer;
begin
GridR.Cells[1,0]:='Nombre';
GridR.Cells[2,0]:='M.W.';
GridR.Cells[3,0]:='Densidad';
reactivos.GoFirst ;
for f:= 1 to reactivos.RowCount  do
begin
GridR.Cells[1,f]:= reactivos.GetData('Rnombre');
GridR.Cells[2,f]:= reactivos.GetData('Rmw');
GridR.Cells[3,f]:= reactivos.GetData('Rdensidad');
reactivos.GoNext ;
end;
end;






procedure TForm1.ToolButtonNewClick(Sender: TObject);
var
numc, f : integer ;
respuesta: integer;
begin
respuesta:= Application.MessageBox( '�Quieres Guardar los datos?', 'Atencion', MB_YESNO );
if respuesta= IDYES then Save(refcuaderno.text, false);
numc:= gbox.ControlCount ;
for f := 0 to numc-1 do
begin
if ((gbox.controls[f])is TEdit)   then
if copy((gbox.controls[f]as Tedit).name, 0, 2) <>'eq' then
 (gbox.controls[f]as Tedit).text:='';
end;
for f:= 0 to numc -1 do
begin
if ((gbox.controls[f])is TComboBox)   then
(gbox.controls[f]as TComboBox).text:='';
refcuaderno.Text:= '';
form1.Caption := 'Molator 0.6... de la Se�orita Pepis';
end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
ppartida.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ppartida.AddRow ;
ppartida.SetData('Rnombre', ComboBoxPP.text);
ppartida.SetData('Rmw', mol1.text);
ppartida.SetData('Rdensidad', den1.text);
ppartida.SaveCurrentFile ;
end;

procedure TForm1.GridPPDrawCell(Sender: TObject; ACol, ARow: Integer;
          Rect: TRect; State: TGridDrawState);
var
texto: string ;
ancho: integer;
begin
if arow=0 then
begin
end;
if (acol >1) and (arow>0) then
begin
texto:= GridPP.cells[acol, arow];
GridPP.canvas.FillRect(rect)  ;
ancho:= GridPP.Canvas.TextWidth(texto);
GridPP.Canvas.TextOut(rect.Right-2 - ancho ,rect.Top+2, texto);
end;
end;

procedure TForm1.GridPPSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
EnombrePP.text:= GridPP.cells[1,Arow];
EmwPP.text:= GridPP.cells[2,arow];
EdenPP.text:= GridPP.cells[3,arow];
end;

procedure TForm1.SavePPClick(Sender: TObject);
begin
ppartida.AddRow ;
ppartida.SetData('Rnombre', EnombrePP.text);
ppartida.SetData('Rmw', EmwPP.text);
ppartida.SetData('Rdensidad', EdenPP.text);
ppartida.SaveCurrentFile ;
GridPP.rowcount:= GridPP.RowCount +1;
refreshGridPP;
fillcomboPP;
end;

procedure TForm1.DeletePPClick(Sender: TObject);
var
sel : TGridrect;
begin
sel:=GridPP.Selection ;  //Eliminar
ppartida.RemoveRowByIndex(sel.top);
ppartida.SaveCurrentFile ;
GridPP.RowCount := GridPP.rowcount -1;
refreshGridPP;
fillcomboPP;
end;

procedure TForm1.UpdatePPClick(Sender: TObject);
var
sel : TGridrect;
begin
sel:=GridPP.Selection ;   //Modificar
ppartida.RemoveRowByIndex(sel.top);
ppartida.Go(sel.top);
ppartida.InsertRow(MLB_BEFORE);
ppartida.SetData('Rnombre', EnombrePP.text);
ppartida.SetData('Rmw', EmwPP.text);
ppartida.SetData('Rdensidad', EdenPP.text);
ppartida.SaveCurrentFile ;
refreshGridPP;
fillcomboPP;
end;

procedure TForm1.SaveRClick(Sender: TObject);
begin
reactivos.AddRow ;
reactivos.SetData('Rnombre', EnombreR.text);
reactivos.SetData('Rmw', EmwR.text);
reactivos.SetData('Rdensidad', EdenR.text);
reactivos.SaveCurrentFile ;
GridR.rowcount:= GridR.RowCount +1;
refreshGridR;
FillComboR;
end;

procedure TForm1.UpdateRClick(Sender: TObject);
var
sel : TGridrect;
begin
sel:=GridR.Selection ;   //Modificar
reactivos.RemoveRowByIndex(sel.top);
reactivos.Go(sel.top);
reactivos.InsertRow(MLB_BEFORE);
reactivos.SetData('Rnombre', EnombreR.text);
reactivos.SetData('Rmw', EmwR.text);
reactivos.SetData('Rdensidad', EdenR.text);
reactivos.SaveCurrentFile ;
refreshGridR;
FillComboR;
end;

procedure TForm1.DeleteRClick(Sender: TObject);
var
sel : TGridrect;
begin
sel:=GridR.Selection ;  //Eliminar
reactivos.RemoveRowByIndex(sel.top);
reactivos.SaveCurrentFile ;
GridR.RowCount := GridR.rowcount -1;
refreshGridR;
FillComboR;
end;

procedure TForm1.GridRSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
EnombreR.text:= GridR.cells[1,Arow];
EmwR.text:= GridR.cells[2,arow];
EdenR.text:= GridR.cells[3,arow];
end;

procedure TForm1.GridRDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
texto: string ;
ancho: integer;
begin
if arow=0 then
begin
end;
if (acol >1) and (arow>0) then
begin
texto:= GridR.cells[acol, arow];
GridR.canvas.FillRect(rect)  ;
ancho:= GridR.Canvas.TextWidth(texto);
GridR.Canvas.TextOut(rect.Right-2 - ancho ,rect.Top+2, texto);
end;
end;

procedure TForm1.mg1KeyPress(Sender: TObject; var Key: Char);
var
mmol, mmolr, mg :double ;
begin
if key=#46 then key:=#44;
if key=#13 then
begin
if mg1.Text ='' then exit;
//INCLuir el borrado de los TEdir de resultados ( mgx y mmolx)
mg:= strtofloat (mg1.text);
mmol:= mg / (strtofloat(mol1.text));
mmol1.Text := format ('%.4n', [mmol] );
//volumen
if mol8.text <>'' then
mg8.Text := format ('%.2n', [mmol* strtofloat(mol8.text)] );
if mol9.text <>'' then
mg9.Text := format ('%.2n', [mmol* strtofloat(mol9.text)] );
if mol2.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq2.text));
  mmol2.Text := format ('%.4n', [mmolr] );
  if trim(den2.text)= '' then
   mg2.text:= format('%.2n',[mmolr*(strtofloat(mol2.text))])
  else
   mg2.text:= format('%.2n',[mmolr*(strtofloat(mol2.text))/(strtofloat (den2.text))] );
end;

if mol3.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq3.text));
  mmol3.Text := format ('%.4n', [mmolr] );
  if trim(den3.text)= '' then
   mg3.text:= format('%.2n',[mmolr*(strtofloat(mol3.text))])
  else
   mg3.text:= format('%.2n',[mmolr*(strtofloat(mol3.text))/(strtofloat (den3.text))] );
end;

if mol4.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq4.text));
  mmol4.Text := format ('%.4n', [mmolr] );
  if trim(den4.text)= '' then
   mg4.text:= format('%.2n',[mmolr*(strtofloat(mol4.text))])
  else
   mg4.text:= format('%.2n',[mmolr*(strtofloat(mol4.text))/(strtofloat (den4.text))] );
end;

if mol5.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq5.text));
  mmol5.Text := format ('%.4n', [mmolr] );
  if trim(den5.text)= '' then
   mg5.text:= format('%.2n',[mmolr*(strtofloat(mol5.text))])
  else
   mg5.text:= format('%.2n',[mmolr*(strtofloat(mol5.text))/(strtofloat (den5.text))] );
end;

if mol6.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq6.text));
  mmol6.Text := format ('%.4n', [mmolr] );
  if trim(den6.text)= '' then
   mg6.text:= format('%.2n',[mmolr*(strtofloat(mol6.text))])
  else
   mg6.text:= format('%.2n',[mmolr*(strtofloat(mol6.text))/(strtofloat (den6.text))] );
end;
if mol7.text <>'' then
begin
  mmolr:= mmol * (strtofloat(eq7.text));
  mmol7.Text := format ('%.4n', [mmolr] );
  if trim(den7.text)= '' then
   mg7.text:= format('%.2n',[mmolr*(strtofloat(mol7.text))])
  else
   mg7.text:= format('%.2n',[mmolr*(strtofloat(mol7.text))/(strtofloat (den7.text))] );
end;
end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
mmolpp, Gfinal, mg :double ;
begin
if (pfinalmw.Text ='') or (eqF.text ='') then
begin
showmessage ('Rellene los datos de M.W. y eq. del producto final');
exit;
end;
mg:= strtofloat (mg1.text);
mmolpp:= mg / (strtofloat(mol1.text));
gfinal:= mmolpp * strtofloat(Pfinalmw.text) * strtofloat(eqF.text);
labelfinal.caption := '100% ===> ' + format ('%.2n', [gfinal] );
beep;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
save (refcuaderno.Text, false);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
var
 temp: TStringlist;
 titulo: string;
begin
 OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
 if Opendialog.Execute then
 begin
 Temp:= Tstringlist.Create;
 Temp.LoadfromFile(opendialog.filename);
  ComboBoxPP.text := temp.strings[0];
  CBnom2.text := temp.strings[1];
  CBnom3.text := temp.strings[2];
  CBnom4.text := temp.strings[3];
  CBnom5.text := temp.strings[4];
  CBnom6.text := temp.strings[5];
  nom7.text := temp.strings[6];
  Mol1.text := temp.strings[7];
  Mol2.text := temp.strings[8];
  Mol3.text := temp.strings[9];
  Mol4.text := temp.strings[10];
  Mol5.text := temp.strings[11];
  Mol6.text := temp.strings[12];
  Mol8.text := temp.strings[13];
  Den1.text := temp.strings[14];
  Den2.text := temp.strings[15];
  Den3.text := temp.strings[16];
  Den4.text := temp.strings[17];
  Den5.text := temp.strings[18];
  Den6.text := temp.strings[19];
  eq1.text := temp.strings[20];
  eq2.text := temp.strings[21];
  eq3.text := temp.strings[22];
  eq4.text := temp.strings[23];
  eq5.text := temp.strings[24];
  eq6.text := temp.strings[25];
  mg1.text := temp.strings[26];
  mg2.text := temp.strings[27];
  mg3.text := temp.strings[28];
  mg4.text := temp.strings[29];
  mg5.text := temp.strings[30];
  mg6.text := temp.strings[31];
  mg8.text := temp.strings[32];
  mmol1.text := temp.strings[33];
  mmol2.text := temp.strings[34];
  mmol3.text := temp.strings[35];
  mmol4.text := temp.strings[36];
  mmol5.text := temp.strings[37];
  mmol6.text := temp.strings[38];
  pfinalnom.text := temp.strings[39];
  pfinalmw.text := temp.strings[40];
  eqf.text := temp.strings[41];
  labelfinal.caption := temp.strings[42];
  refcuaderno.Text := temp.Strings [43];

  CBNom7.Text := temp.Strings [44];
  Mol7.Text := temp.Strings [45];
  Den7.Text := temp.Strings [46];
  eq7.Text := temp.Strings [47];
  mg7.Text := temp.Strings [48];
  mmol7.Text := temp.Strings [49];
  nom8.Text := temp.Strings [50];
  Mol9.Text := temp.Strings [51];
  mg9.Text := temp.Strings [52];
  titulo:= 'Molator 0.6... de la Se�orita Pepis - ';
  titulo:= titulo + Extractfilename (opendialog.FileName);
  form1.Caption := titulo;

 end; //endif
end;

procedure TForm1.ComboBoxPPChange(Sender: TObject);
var
nombre: string;
found: boolean;
begin
nombre:= comboboxPP.Text ;
ppartida.Gofirst;
if ppartida.BeginSeek(MLB_forward) then
found:= ppartida.SeekData('Rnombre', 'LIKE', nombre);
ppartida.EndSeek;
if found then
begin
mol1.Text := ppartida.GetData ('Rmw');
den1.Text:= ppartida.GetData ('Rdensidad');
end
else
begin
mol1.Text := '';
den1.Text:= '';
end;//endifthenelse
end;


procedure TForm1.CBNom2Change(Sender: TObject);
var
found: boolean;
begin
reactivo:=(Sender as TCombobox).tag;    //ahora va aqui
nombre := (Sender as TCombobox).text;
reactivos.Gofirst;
if reactivos.BeginSeek(MLB_forward) then
found:= reactivos.SeekData('Rnombre', 'LIKE', nombre);
reactivos.EndSeek;
if found then
begin
mw := reactivos.GetData ('Rmw');
densidad:= reactivos.GetData ('Rdensidad');
end
else
begin
mw:= '';
densidad:='';
end;
case reactivo of
1:
begin
   CBnom2.text:= nombre;
   mol2.text:= mw;
   den2.text:= densidad;
end;
2:
begin
   CBnom3.text:= nombre;
   mol3.text:= mw ;
   den3.text:= densidad;
end;
3:
begin
   CBnom4.text:= nombre;
   mol4.text:= mw ;
   den4.text:= densidad;
end;
4:
begin
   CBnom5.text:= nombre;
   mol5.text:= mw ;
   den5.text:= densidad
end;
5:
begin
   CBnom6.text:= nombre;
   mol6.text:= mw ;
   den6.text:= densidad
end;
6:
begin
   CBnom7.text:= nombre;
   mol7.text:= mw ;
   den7.text:= densidad
end;
end; //end case

end; //End procedure

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
Showmessage ('Apa�atelas como puedas');
end;

procedure TForm1.Save(filename: string; saveas: boolean);
var
 temp: TStringlist;
 titulo: string;
begin
 Temp:= Tstringlist.Create;
 temp.add  (ComboboxPP.text);
 temp.add ( CBnom2.text);
 temp.add ( CBnom3.text);
 temp.add ( CBnom4.text);
 temp.add ( CBnom5.text);
 temp.add ( CBnom6.text);
 temp.add ( nom7.text);
 temp.add ( Mol1.text);
 temp.add ( Mol2.text);
 temp.add ( Mol3.text);
 temp.add ( Mol4.text);
 temp.add ( Mol5.text);
 temp.add ( Mol6.text);
 temp.add ( Mol8.text);
 temp.add ( Den1.text);
 temp.add ( Den2.text);
 temp.add ( Den3.text);
 temp.add ( Den4.text);
 temp.add ( Den5.text);
 temp.add ( Den6.text);
 temp.add ( eq1.text);
 temp.add ( eq2.text);
 temp.add ( eq3.text);
 temp.add ( eq4.text);
 temp.add ( eq5.text);
 temp.add ( eq6.text);
 temp.add ( mg1.text);
 temp.add ( mg2.text);
 temp.add ( mg3.text);
 temp.add ( mg4.text);
 temp.add ( mg5.text);
 temp.add ( mg6.text);
 temp.add ( mg8.text);
 temp.add ( mmol1.text);
 temp.add ( mmol2.text);
 temp.add ( mmol3.text);
 temp.add ( mmol4.text);
 temp.add ( mmol5.text);
 temp.add ( mmol6.text);
 temp.add ( pfinalnom.text);
 temp.add ( pfinalmw.text);
 temp.add ( eqf.text);
 temp.add (labelfinal.caption);
 temp.add (refcuaderno.Text);
 temp.add (CbNom7.Text);
 temp.add (Mol7.Text);
 temp.add (Den7.Text);
 temp.add (Eq7.Text);
 temp.add (mg7.Text);
 temp.add (mmol7.Text);
 temp.add (Nom8.Text);
 temp.add (Mol9.Text);
 temp.add (mg9.Text);
 if filename='' then
 begin
   saveDialog.InitialDir := ExtractFilePath(Application.ExeName);
   if Savedialog.Execute then
   begin
     Temp.SaveToFile(savedialog.filename);
     titulo:= 'Molator 0.6... de la Se�orita Pepis - ';
     titulo:= titulo + Extractfilename (savedialog.FileName);
     form1.Caption := titulo;
   end;
 end
 else
 begin
 Temp.SaveToFile(ExtractFilePath(Application.ExeName)+ '\' + filename + '.Mlr');
 end; //enf if then else
end; //End procedure

procedure TForm1.CBEscalaChange(Sender: TObject);
var
reactivo: integer;
begin
LEscala.Caption := CBEscala.text;
reactivo := cbescala.ItemIndex  ;
case reactivo of
0:
begin
lmmol.Caption := 'mmol';
lml.Caption  := 'ml'
end;
1, 2:
begin
lmmol.Caption := 'moles';
lml.Caption := 'L';
end;
end; //end case
end; //end procedure


procedure TForm1.N01Click(Sender: TObject);
begin
showmessage(sender.ClassName);
mg2.Tag:=0;
end;

procedure TForm1.mg2Click(Sender: TObject);
begin
//showmessage (inttostr ((sender as Tedit).tag));
showmessage( inttostr(popupmenu.tag));
end;

procedure TForm1.PopupMenuPopup(Sender: TObject);
begin
showmessage (sender.ClassName );
end;

procedure TForm1.mg2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button= mbright then popupmenu.Tag := 6;
end;



end. //se acabo.
