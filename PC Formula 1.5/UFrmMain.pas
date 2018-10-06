unit UFrmMain;

interface

uses
  Windows,  Forms, Shellapi, richedit, SysUtils,
  Classes, Controls, StdCtrls, ComCtrls,  Spin, ExtCtrls, Menus;

type
  TFrmMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    REInput: TRichEdit;
    CmdCalcular: TButton;
    REOutput: TRichEdit;
    PEncoger: TPanel;
    POntop: TPanel;
    Panel1: TPanel;
    GBoxComp: TGroupBox;
    LblComp1: TLabel;
    LblComp2: TLabel;
    LblComp3: TLabel;
    LblComp4: TLabel;
    GBoxPeso: TGroupBox;
    LblMass: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    CB4: TComboBox;
    ListBox1: TListBox;
    Label1: TLabel;
    Bevel1: TBevel;
    CB3: TComboBox;
    CB2: TComboBox;
    CB1: TComboBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    PuPMenu: TPopupMenu;
    MnuBorrar: TMenuItem;
    MnuImprimir: TMenuItem;
    procedure REInputKeyPress(Sender: TObject; var Key: Char);
    procedure PCloseMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PCloseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PCloseClick(Sender: TObject);
    procedure PEncogerClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure PMinimizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure POntopClick(Sender: TObject);
    procedure CmdCalcularClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MnuBorrarClick(Sender: TObject);
    procedure MnuImprimirClick(Sender: TObject);
  private
    function InStr (texto, busqueda : string): integer;
    function subindice (texto, elemento : string): integer;
    function MyVal (valor : string) :integer;
    function Registro (const valor: smallint) : string;
    function LeftStrCut (valor: string; corte: integer) : string;
    function Substring (cadena, incadena: string): string;
    function Right (cadena: string; pos: integer): string;
    function left (cadena: string; pos: integer): string;
    function CompStr (Dummy, Formula: string; index, len : integer) :string;
    procedure QuickestShow ( const cText : string );
  public
    
  end;

var
  FrmMain: TFrmMain;
  Fichero : TstringList;
  posicion, anchoform: integer;
const 
  elemento =0;
  pesoelem =1;
implementation
   
{$R *.DFM}

function TfrmMain.MyVal (valor : string) :integer ;
var 
  entero, code :integer;
begin
  val(valor, entero, code);
  if entero = 0 then Myval := 1 else MyVal := entero;
end;

procedure TFrmMain.REInputKeyPress(Sender: TObject; var Key: Char);
var
  tecla: Char;
  sel: integer;
  texto: string;
  pcharformat: TCHARFORMAT;
begin
  tecla := key;
  sel := REInput.SelStart;
  texto := REInput.text;
  if tecla = #13 then 
  begin
    CmdCalcularClick(self);
    exit;
  end;
  if sel = 0 then   //si es el primer caracter (no se permiten numeros)
  begin
    if  not (tecla in ['A'..'Z']) and (tecla <> #8) then
    begin
      beep;
      key := #0;
    end;    //if not tecla
  end
  else     // del segundo caracter en adelante
    begin
     //1º cualquier cosa que no sea NUM o Letras (con Delete)
     if ((not (tecla in ['A'..'Z'])) and (not (tecla in ['a'..'z'])) and
     (not (tecla in ['0'..'9']))) and (tecla <> #8) then 
       begin
         beep; 
         key := #0;
       end;
     //2º no permitir 0 a no ser que antes haya numero
     if (tecla = '0') and (not (texto[sel] in ['0'..'9'])) then 
       begin
         beep;
         key := #0;
       end;
     //3º no permitir Min si antes no hay Mayuscula
     if (tecla in ['a'..'z']) and (not (texto[sel] in ['A'..'Z'])) then 
       begin
         beep;
         key := #0;
       end;
    end; //end else
  
    with REinput.SelAttributes  do
    begin
      if tecla in ['0'..'9'] then 
        begin
          size := 8;
          pcharformat.cbSize :=sizeof (pcharformat); 
          sendmessage (reinput.handle, EM_GETCHARFORMAT, 0, 
                             longint (@pcharformat));
          pcharformat.dwMask  :=CFM_OFFSET;
          pcharformat.yOffset :=-40;
          sendmessage (reinput.handle, EM_SETCHARFORMAT, 
                      SCF_SELECTION, longint(@pcharformat));
        end; 
      if tecla in ['A'..'Z'] then 
        begin 
          size :=11;
          pcharformat.cbSize :=sizeof (pcharformat); 
          sendmessage (reinput.handle, EM_GETCHARFORMAT, 0, 
                      longint (@pcharformat));
          pcharformat.dwMask  :=CFM_OFFSET;
          pcharformat.yOffset :=0;
          sendmessage (reinput.handle, EM_SETCHARFORMAT, 
                      SCF_SELECTION, longint(@pcharformat));
        end;
      end; //End with
end;
  
procedure TFrmMain.PCloseMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TPanel).bevelOuter :=bvLowered;
end;

procedure TFrmMain.POntopClick(Sender: TObject);
begin
  if Pontop.BevelOuter = bvraised then 
    begin
      Pontop.BevelOuter := bvlowered;
      SetWindowPos(handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE 
                   Or SWP_SHOWWINDOW Or SWP_NOACTIVATE) 
    end
  else 
    begin 
      Pontop.BevelOuter := bvraised;
      SetWindowPos(handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE 
      Or SWP_SHOWWINDOW Or SWP_NOACTIVATE) 
  end;
end;

procedure TFrmMain.PCloseMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TPanel).bevelOuter :=bvRaised;
end;

procedure TFrmMain.PCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFrmMain.PEncogerClick(Sender: TObject);
var
  step, ancho : integer;
begin
  step:= (REinput.left*2) + reinput.Width +8;
  ancho:= getsystemmetrics (SM_CXBORDER); 
  if PEncoger.Caption ='<' then 
    begin
      PEncoger.Caption :='>';
      Pencoger.Hint :='Expandir Ventana';
      Frmmain.clientWidth :={Frmmain.Width + }step;
      Pencoger.left := frmmain.ClientWidth  - Pencoger.width - ancho - ancho;
      POntop.left := Pencoger.left - Pencoger.width -2;
    end
  else 
    begin 
      Frmmain.Width :=anchoform;
      PEncoger.Caption :='<';
      Pencoger.Hint :='Encoger Ventana';
      Pencoger.left := frmmain.ClientWidth  - Pencoger.width - ancho - ancho;
      POntop.left := Pencoger.left - Pencoger.width -2;
    end;
end;

procedure TFrmMain.Label2Click(Sender: TObject);
begin
ShellExecute(GetDesktopWindow(),nil, pChar('mailto:ARVSoft@teleline.es'),nil,
             nil, SW_SHOWNORMAL);
end;


procedure TFrmMain.PMinimizarClick(Sender: TObject);
begin
 FrmMain.WindowState :=wsMinimized
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  name, path : string;
  ancho, alto : integer ;
  inifile: TstringList;
begin
  Fichero := TStringlist.Create;
  name:= application.ExeName;
  path:= ExtractFilePath (name);
  try
  fichero.LoadFromFile(path + 'masas.txt');
  except 
    QuickestShow('No se encuentra el archivo masas.txt' + #13 + 
                '   No se puede iniciar el programa');
    fichero.Free;
    application.Terminate ;
  end;
  alto:= getsystemmetrics (SM_CYCAPTION);
  ancho:= getsystemmetrics (SM_CXBORDER);
  anchoform:= frmmain.width;
  Pencoger.Width := alto - 3 ; Pencoger.height:= alto - 4;
  POnTop.Width := alto - 3 ; POntop.height:= alto - 4;
  Pencoger.left := frmmain.ClientWidth  - Pencoger.width - ancho - ancho;
  POntop.left := Pencoger.left - Pencoger.width -2;
  listbox1.clear;
  for posicion := 0 to fichero.count-1 do
  begin
    listbox1.items.add (registro(elemento) + '= ' + registro(pesoelem)) ;
    CB1.items.add (trimright(registro (elemento)));
    CB2.items.add (trimright(registro (elemento)));
    CB3.items.add (trimright(registro (elemento)));
    CB4.items.add (trimright(registro (elemento)));
  end;
  //INIFILE
  inifile:= Tstringlist.create;
  try
    inifile.LoadFromFile (path + 'prefs.dat');
    CB1.ItemIndex := strtoint(inifile.Values ['1elemento']); 
    CB2.ItemIndex := strtoint(inifile.Values ['2elemento']); 
    CB3.ItemIndex := strtoint(inifile.Values ['3elemento']); 
    CB4.ItemIndex := strtoint(inifile.Values ['4elemento']);
    spinedit1.Value := strtoint(inifile.Values ['NDecComp']);
    spinedit2.Value := strtoint(inifile.Values ['NDecPeso']);
    checkbox1.Checked := boolean(strtoint(inifile.values['Encoger']));
    if checkbox1.Checked then frmmain.PEncogerClick (self);
    radiobutton1.Checked := boolean (strtoint(inifile.Values ['Idioma']));
    if not (radiobutton1.Checked) then radiobutton2.Checked:= true;
  except 
    QuickestShow('No se encuentra el archivo de preferencias' + #13+ 
                '    Se utilizarán los valores por defecto');
    CB1.ItemIndex := 1; 
    CB2.ItemIndex := 2; 
    CB3.ItemIndex := 3; 
    CB4.ItemIndex := 4;
  end;  
end;

function TFrmMain.InStr (texto : string; busqueda : string): integer;
//si no lo encuentra devuelve 999
var
  pos :Pchar; 
begin
  pos := StrPos(pchar(texto), pchar(busqueda));
  if pos =  nil then Instr := 999 else Instr := integer(pos-pchar(texto)+1);
end;

function TFrmMain.subindice (texto : string; elemento : string): integer;
var
  LenElem : integer;
  LenTexto : integer;
  c : integer;
begin
  LenElem := length (elemento);
  LenTexto := length (texto);
  if LenElem = 1 then
    begin
      for c:= 1 to LenTexto do
      begin
        {if (elemento = texto[c]) and ((texto[c] in ['A'..'Z']) or 
        (texto[c] in ['0'..'9'])) then }
        if (elemento = texto[c]) and (not (texto[c+1] in ['a'..'z'])) then
          begin
            subindice:= c;
            exit;
          end;
        if (elemento = texto[c]) and (c = Lentexto) then
          begin
            subindice:= c;
            exit;
          end;
      end; //end for 
    subindice:=999;
    end //If lenElem=1
  else subindice:= instr (texto, elemento);
end;

procedure TFrmMain.CmdCalcularClick(Sender: TObject);
var
 index, n, c, val2, valtemp, code, selection, lentotal: integer;
 cadena, incadena, strformat, segcadena, strval, name, path, dummy : string ;
 pesomol, floatnum: real;
 pesomatricula: array [0..20]of real;
 strmatricula, strnummatricula: array[0..20]of string;
 nummatricula: array[0..20]of integer;
 pcharformat: Tcharformat;
 begin
  if reinput.text='' then exit;
  n:=0; pesomol:=0.0;
  cadena:= REInput.text;
  segcadena:= cadena;
  dummy:='                                                      ';
  for posicion :=0 to fichero.count-1 do
  begin 
    incadena := trimright(registro (elemento));
    index := subindice (cadena, incadena);
    if index <>999 then
      begin
        strmatricula[n] := incadena;
        strnummatricula[n]:= LeftStrCut(cadena, index +(length(incadena))-1);
        nummatricula[n]:= MyVal (strnummatricula[n]);
        pesomatricula[n]:= strtofloat(registro (pesoelem));
        pesomol := pesomol + (pesomatricula[n] * nummatricula[n]);
        val(strnummatricula[n], val2, code);
        if val2=0 then valtemp:=0 else valtemp:=length(inttostr(nummatricula[n]));
        lentotal:= length(incadena) + valtemp;
        Dummy:= CompStr(Dummy, cadena, index, lentotal);
        inc (n);
        //segcadena:= Substring(segcadena, incadena);
      end;
    end;
  {val(segcadena, val2, code);
  val(segcadena, valtemp, code);
  strval:=trimleft(inttostr(valtemp));
  if ((strval<> segcadena) and ( val2<>0) or (pesomol = 0)or (code=1)) then }
  if cadena<>trim(Dummy) then
    begin
      QuickestShow('La fórmula esta mal escrita');
      exit;
    end; 
  //Display masa molecular
  strformat:='%2.' + spinedit2.Text +'f';
  lblmass.caption:= Format(strformat, [pesomol]);
  strformat:='%2.' + spinedit1.Text +'f';
  //Display porcentajes
  lblcomp1.caption:= '0%';lblcomp2.caption:= '0%';
  lblcomp3.caption:= '0%';lblcomp4.caption:= '0%';
  for c:=0 to 19 do
  begin
    if cb1.Text = strmatricula[c] then 
    begin
      floatnum:=(pesomatricula[c]*nummatricula[c]/pesomol*100);     
      lblcomp1.caption := Format(strformat, [floatnum]) +'%';
    end;
    if cb2.Text = strmatricula[c] then 
    begin
      floatnum:=(pesomatricula[c]*nummatricula[c]/pesomol*100);
      lblcomp2.caption:=  Format(strformat, [floatnum]) +'%';
    end;
    if cb3.Text = strmatricula[c] then 
    begin
      floatnum:=(pesomatricula[c]*nummatricula[c]/pesomol*100);
      lblcomp3.caption:=  Format(strformat, [floatnum]) +'%';
    end;
    if cb4.Text = strmatricula[c] then 
    begin
      floatnum:=(pesomatricula[c]*nummatricula[c]/pesomol*100);
      lblcomp4.caption:=  Format(strformat, [floatnum]) +'%';
    end;
    end;
  //Display RichEdit
  name:= application.ExeName;
  path:= ExtractFilePath (name);
  if radiobutton1.Checked then
  ReOutput.Lines.add ('Análisis calculado para ' + reinput.Lines[0] + ':')
  else
  ReOutput.Lines.add ('Anal. Calcd for ' + reinput.lines[0] + ':');
  selection:= length(reoutput.text)-2 -length(reinput.text); //-2 porCR/LF y uno por :
  for c :=selection to selection + length(reinput.text) do
  begin
    reoutput.selstart:= c;
    reoutput.sellength:= 1;
    if (reoutput.SelText) < ':' then //Es un numero
      begin
        reoutput.SelAttributes.size :=8;
        pcharformat.cbSize :=sizeof (pcharformat); 
        sendmessage (reoutput.handle, EM_GETCHARFORMAT, 0, 
                     longint (@pcharformat));
        pcharformat.dwMask  :=CFM_OFFSET;
        pcharformat.yOffset :=-40;
        sendmessage (reoutput.handle, EM_SETCHARFORMAT, 
                     SCF_SELECTION, longint(@pcharformat));
      end
    else 
      begin
       reoutput.SelAttributes.size:=11;
       pcharformat.cbSize :=sizeof (pcharformat); 
       sendmessage (reoutput.handle, EM_GETCHARFORMAT, 0, 
                    longint (@pcharformat));
       pcharformat.dwMask  :=CFM_OFFSET;
       pcharformat.yOffset :=0;
       sendmessage (reoutput.handle, EM_SETCHARFORMAT, 
                    SCF_SELECTION , longint(@pcharformat));
      end;
  end;
  ReOutput.lines.add (CB1.Text + ': ' + LblComp1.caption + '; ' + 
                      CB2.Text + ': ' + LblComp2.caption+'; ' + 
                      CB3.Text + ': ' + LblComp3.caption+'; ' + 
                      CB4.Text + ': ' + LblComp4.caption);
  ReOutput.lines.add ('');
  //sendmessage (reoutput.handle, EM_LINESCROLL ,0, 3);
end;

function TFrmMain.Registro (const valor: smallint): string;
var
  cadena : string[2];            
  texto :string;
begin
  if valor = elemento then 
  begin
    cadena:= (fichero[posicion]);
    Result := cadena;
  end;
  if valor = pesoelem then
  begin
    texto := (fichero[posicion]);
    result := LeftStrCut (texto, 2);
  end
end;

function TFrmMain.LeftStrCut (valor: string; corte: integer) : string;
//corta la cadena desde la izquierda hasta corte(incluido) devolviendo el resto
// el primer caracter es 1
var
  cadena: string;
  c: integer;
begin
   cadena:= valor;
   for c :=1 to corte do
     cadena[c] := ' ';
   Result := TrimLeft (cadena);
end;
  
procedure TFrmMain.PageControl1Change(Sender: TObject);
begin
if (pagecontrol1.ActivePage = Tabsheet2) and (Pencoger.caption='>') then 
   pencoger.OnClick (self);
end;

function TFrmMain.Substring (cadena, incadena: string): string;
var 
 marca :integer;
 izq, der: string;
 strtemp: string;
 instrtemp: string;
begin 
  strtemp:= cadena;
  instrtemp:= incadena; 
  marca:= Instr(cadena, incadena);
  if marca =999 then exit;
  izq:= left(cadena, marca-1);
  der:= Right (cadena, (length(cadena)- marca)
                -(length(incadena)-1));
  Result:= izq + der;
end;
  

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  inifile: TstringList;
  name, path :String;
begin
  fichero.Free;
  name:= application.ExeName;
  path:= ExtractFilePath (name);
  inifile:= Tstringlist.create;
  inifile.add ('1elemento=' + inttostr(CB1.ItemIndex));
  inifile.add ('2elemento=' + inttostr(CB2.ItemIndex));
  inifile.add ('3elemento=' + inttostr(CB3.ItemIndex)); 
  inifile.add ('4elemento=' + inttostr(CB4.ItemIndex));
  inifile.add ('NDecComp=' + inttostr (spinedit1.Value));
  inifile.add ('NDecPeso=' + inttostr (spinedit2.Value));
  inifile.add ('Encoger=' + inttostr (integer((checkbox1.Checked))));
  inifile.add ('Idioma='+ inttostr (integer((radiobutton1.Checked))));
  inifile.SaveToFile (path + 'prefs.dat'); 
end;

function Tfrmmain.left (cadena: string; pos: integer): string;
var 
  c: integer;
  long: integer;
begin
  if pos=0 then 
    begin
    result:='';
    exit
    end;
  long:= length(cadena);
  for c:= pos+1  to long do
   cadena[c]:=' ';
  result:= trimRight (cadena);
end;
   
function Tfrmmain.right (cadena: string; pos: integer): string;
var 
  c, cright: integer;
begin
  cright:= length(cadena) -pos;
  for c:= 1 to cright do
   cadena[c]:=' ';
  result:= TrimLeft (cadena);
end;

function TFrmMain.CompStr (Dummy, Formula: string; index, len : integer) :string;
var 
  c :Integer;
begin
  for c:= index to index+len-1 do
    Dummy[c]:= Formula[c];
  Result:= Dummy;
end;

procedure TFrmMain.MnuBorrarClick(Sender: TObject);
begin
reoutput.Clear;
end;

procedure TFrmMain.MnuImprimirClick(Sender: TObject);
begin
reoutput.print('Pc Fórmula 1.5');
end;

procedure TfrmMain.QuickestShow ( const cText : string );
{ Muestra un mensaje. De nuevo nos evita la carga de la unit
Dialogs y todas las que vienen enlazadas por esta }
var
MsgParam : TMsgBoxParams ;
begin
MsgParam . cbSize := SizeOf ( TMsgBoxParams );
with MsgParam do
begin
hwndOwner := 0;
hInstance := MainInstance ;
lpszText := PChar ( cText );
lpszCaption := 'PC Formula 1.5';
dwStyle := 0;
lpszIcon := nil ;
dwContextHelpID := 0;
lpfnMsgBoxCallback := nil ;
dwLanguageID := 0;
end ;
MessageBoxIndirect ( MsgParam );
end ;

end. //Se acabo.



  
