unit UMolator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, mlb2, mlbc,
  Grids, Buttons;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Nom1: TEdit;
    Nom2: TEdit;
    Nom3: TEdit;
    Nom4: TEdit;
    Nom5: TEdit;
    Nom6: TEdit;
    Nom7: TEdit;
    Mol1: TEdit;
    Mol2: TEdit;
    Mol3: TEdit;
    Mol4: TEdit;
    Mol5: TEdit;
    Mol6: TEdit;
    Mol7: TEdit;
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
    mg7: TEdit;
    mmol1: TEdit;
    mmol2: TEdit;
    mmol3: TEdit;
    mmol4: TEdit;
    mmol5: TEdit;
    mmol6: TEdit;
    LBpp: TListBox;
    LBR: TListBox;
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
    ToolButton4: TToolButton;
    PfinalNom: TLabeledEdit;
    SaveDialog: TSaveDialog;
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure Nom1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LBppDblClick(Sender: TObject);
    procedure Nom2DblClick(Sender: TObject);
    procedure LBRDblClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GridPPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GridPPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SavePPClick(Sender: TObject);
    procedure refreshGridPP;
    procedure refreshGridR;
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
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nombre, mw, densidad : string;
  reactivo: integer;
  //ppartida: TMlb2;
implementation

{$R *.dfm}

procedure TForm1.SpinButton1UpClick(Sender: TObject);
var
 texto: double;
 t: string;
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
 t: string;
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
lbpp.Clear ;
for f := 0 to ppartida.rowcount -1 do
begin
lbpp.Items.Add(ppartida.GetData('Rnombre') );
ppartida.GoNext ;
end;
lbpp.Top:= nom1.Top + gbox.top;
lbpp.Left:= nom1.Left + gbox.left;
lbpp.Height := 200;
lbpp.Width :=200;
lbpp.Visible := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
f, ff, posicion: integer;
dir: string;
begin
dir:= ExtractFilePath(Application.ExeName) ;
ppartida.FileName := dir + '\ppartida.mlb';
ppartida.LoadFromMLBFile(dir) ;
ppartida.GoFirst ;
for f := 0 to ppartida.rowcount -1 do
begin
lbpp.Items.Add(ppartida.GetData('Rnombre') );
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
lbpp.Items.Add(reactivos.GetData('Rnombre') );
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

procedure TForm1.LBppDblClick(Sender: TObject);
var
strings: TStringlist;
f, posicion, posicion2: integer;
begin
for f:= 0 to lbpp.Items.Count -1 do
begin
if lbpp.selected[f] then break;
end;
nom1.Text := lbpp.Items[f];
lbpp.Visible := false;
ppartida.Gofirst;
if ppartida.BeginSeek(MLB_forward) then begin
ppartida.SeekData('Rnombre', 'LIKE', nom1.text);
end;
ppartida.EndSeek;
mol1.Text := ppartida.GetData ('Rmw');
den1.Text:= ppartida.GetData ('Rdensidad');
end;

procedure TForm1.Nom2DblClick(Sender: TObject);
var
f: integer;
begin
reactivos.GoFirst ;
lbR.Clear ;
for f := 0 to reactivos.rowcount -1 do
begin
lbR.Items.Add(reactivos.GetData('Rnombre') );
Reactivos.GoNext ;
end;
lbR.Top:= (sender as TEdit).Top + gbox.top;
lbR.Left:= (sender as Tedit).Left + gbox.Left ;
lbR.Height := 200;
lbR.Width :=200;
lbR.Visible := true;
reactivo:= (sender as Tedit).tag
end;

procedure TForm1.LBRDblClick(Sender: TObject);
var
strings: TStringlist;
f, posicion, posicion2: integer;
begin
for f:= 0 to lbR.Items.Count -1 do
begin
if lbR.selected[f] then break;
end;
nombre := lbR.Items[f];
lbR.Visible := false;
reactivos.Gofirst;
if reactivos.BeginSeek(MLB_forward) then begin
reactivos.SeekData('Rnombre', 'LIKE', nombre);
end;
reactivos.EndSeek;
mw := reactivos.GetData ('Rmw');
densidad:= reactivos.GetData ('Rdensidad');
case reactivo of
1:
begin
   nom2.text:= nombre;
   mol2.text:= mw;
   den2.text:= densidad;
end;
2:
begin
   nom3.text:= nombre;
   mol3.text:= mw ;
   den3.text:= densidad;
end;
3:
begin
   nom4.text:= nombre;
   mol4.text:= mw ;
   den4.text:= densidad;
end;
4:
begin
   nom5.text:= nombre;
   mol5.text:= mw ;
   den5.text:= densidad
end;
5:
begin
   nom6.text:= nombre;
   mol6.text:= mw ;
   den6.text:= densidad
end;
end; //end case

end; //End procedure

procedure TForm1.ToolButton3Click(Sender: TObject);
var
numc, f : integer ;
begin
numc:= gbox.ControlCount ;
for f := 0 to numc-1 do
begin
if (gbox.controls[f])is TEdit then
if copy((gbox.controls[f]as Tedit).name, 0, 2) <>'eq' then
 (gbox.controls[f]as Tedit).text:='';
end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
ppartida.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ppartida.AddRow ;
ppartida.SetData('Rnombre', nom1.text);
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
if key=#13 then
begin
mg:= strtofloat (mg1.text);
mmol:= mg / (strtofloat(mol1.text));
mmol1.Text := format ('%.4n', [mmol] );
//volumen
if mol7.text <>'' then
mg7.Text := format ('%.1n', [mmol* strtofloat(mol7.text)] );

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
var
 temp: TStringlist;
begin
 Temp:= Tstringlist.Create;
 temp.add  (nom1.text);
 temp.add ( nom2.text);
 temp.add ( nom3.text);
 temp.add ( nom4.text);
 temp.add ( nom5.text);
 temp.add ( nom6.text);
 temp.add ( nom7.text);
 temp.add ( Mol1.text);
 temp.add ( Mol2.text);
 temp.add ( Mol3.text);
 temp.add ( Mol4.text);
 temp.add ( Mol5.text);
 temp.add ( Mol6.text);
 temp.add ( Mol7.text);
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
 temp.add ( mg7.text);
 temp.add ( mmol1.text);
 temp.add ( mmol2.text);
 temp.add ( mmol3.text);
 temp.add ( mmol4.text);
 temp.add ( mmol5.text);
 temp.add ( mmol6.text);
 temp.add ( pfinalnom.text);
 temp.add ( pfinalmw.text);
 temp.add ( eqf.text);
 saveDialog.InitialDir := ExtractFilePath(Application.ExeName);
 if Savedialog.Execute then Temp.SaveToFile(savedialog.filename);

end;

end. //se acabo.
