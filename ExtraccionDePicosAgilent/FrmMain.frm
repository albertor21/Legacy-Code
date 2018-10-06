VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Lista de Picos a ORACLE"
   ClientHeight    =   5655
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10440
   LinkTopic       =   "Form1"
   ScaleHeight     =   5655
   ScaleWidth      =   10440
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox LstfiletoExtract 
      Height          =   3960
      ItemData        =   "FrmMain.frx":0000
      Left            =   7320
      List            =   "FrmMain.frx":0002
      MultiSelect     =   1  'Simple
      TabIndex        =   25
      Top             =   600
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Seleccionar archivos"
      Height          =   495
      Left            =   7920
      TabIndex        =   24
      Top             =   4680
      Width           =   2055
   End
   Begin VB.CommandButton CmdOpenFile 
      Caption         =   "Ver s�lo Info de:"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      Caption         =   "Parametros:"
      Height          =   3495
      Left            =   5160
      TabIndex        =   7
      Top             =   720
      Width           =   2055
      Begin VB.TextBox Txtbinmass 
         BackColor       =   &H80000018&
         Height          =   285
         Left            =   1320
         Locked          =   -1  'True
         TabIndex        =   21
         Text            =   "8"
         Top             =   3000
         Width           =   615
      End
      Begin VB.TextBox TxtBintime 
         BackColor       =   &H80000018&
         Height          =   285
         Left            =   1320
         Locked          =   -1  'True
         TabIndex        =   20
         Text            =   "0.5"
         Top             =   2640
         Width           =   615
      End
      Begin VB.TextBox txtlastscan 
         BackColor       =   &H80000018&
         Height          =   285
         Left            =   1320
         Locked          =   -1  'True
         TabIndex        =   17
         Text            =   "3496"
         Top             =   2280
         Width           =   615
      End
      Begin VB.TextBox txt1stscan 
         BackColor       =   &H80000018&
         Height          =   285
         Left            =   1320
         Locked          =   -1  'True
         TabIndex        =   16
         Text            =   "1"
         Top             =   1920
         Width           =   615
      End
      Begin VB.TextBox Txtminmass 
         Height          =   285
         Left            =   1320
         TabIndex        =   14
         Text            =   "150"
         Top             =   480
         Width           =   600
      End
      Begin VB.TextBox txtHalfwindow 
         Height          =   285
         Left            =   1320
         TabIndex        =   10
         Text            =   "20"
         Top             =   1560
         Width           =   600
      End
      Begin VB.TextBox txtthreshold 
         Height          =   285
         Left            =   1320
         TabIndex        =   9
         Text            =   "10000"
         Top             =   1200
         Width           =   600
      End
      Begin VB.TextBox Txtmaxmass 
         Height          =   285
         Left            =   1320
         TabIndex        =   8
         Text            =   "2000"
         Top             =   840
         Width           =   600
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "BIN Mass:"
         Height          =   255
         Index           =   7
         Left            =   360
         TabIndex        =   23
         Top             =   3015
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "BIN time:"
         Height          =   255
         Index           =   4
         Left            =   360
         TabIndex        =   22
         Top             =   2655
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "ult. Scan:"
         Height          =   255
         Index           =   6
         Left            =   360
         TabIndex        =   19
         Top             =   2280
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "1er Scan:"
         Height          =   255
         Index           =   5
         Left            =   360
         TabIndex        =   18
         Top             =   1935
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Masa Min:"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   15
         Top             =   495
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "HalfWindow:"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   13
         Top             =   1575
         Width           =   1095
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Threshold:"
         Height          =   255
         Index           =   2
         Left            =   360
         TabIndex        =   12
         Top             =   1215
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Masa Max:"
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   11
         Top             =   855
         Width           =   855
      End
   End
   Begin VB.CommandButton Cmdextract 
      Caption         =   "Extraer picos a database"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   4320
      Width           =   2055
   End
   Begin VB.ListBox ListInfo 
      Height          =   3375
      ItemData        =   "FrmMain.frx":0004
      Left            =   120
      List            =   "FrmMain.frx":0006
      MultiSelect     =   1  'Simple
      TabIndex        =   2
      Top             =   840
      Width           =   4935
   End
   Begin VB.TextBox TxtFile 
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Text            =   "C:\Masas\CD1\08740111.D"
      Top             =   120
      Width           =   5175
   End
   Begin VB.Label Label5 
      Caption         =   "Archivos a extraer:"
      Height          =   255
      Left            =   7080
      TabIndex        =   26
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Fin:"
      Height          =   255
      Left            =   2400
      TabIndex        =   6
      Top             =   4560
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Inicio: "
      Height          =   255
      Left            =   2400
      TabIndex        =   5
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Informacion de archivo/proceso:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Option Base 0
Private cnn As ADODB.Connection
' Necesitamos los eventos si queremos controlar algunas cosillas
Private WithEvents rst As ADODB.Recordset
Attribute rst.VB_VarHelpID = -1
Dim ErrorinDB As Boolean

Private Sub Cmdextract_Click()
    Dim PathArchivo As String, PathMasArchivo As String
    Dim MinMass As Integer, MaxMass As Integer, f As Integer
    Dim numRScans As Integer, PeaksExt As Integer
    Dim info As THeader
    Dim matrixint() As Long
    Dim ListaPicos() As TPeakList
    Dim sfile As String
    '******INICIALIZO VARIABLES*************************
    ListInfo.Clear
    MinMass = Txtminmass.Text
    MaxMass = Txtmaxmass.Text
    numRScans = 389 'equivalen a 3112 Scans (RetTime aprox=40 min)
    PeaksExt = Round((MaxMass - MinMass) * 2)
    '***************************************************
    Label2.Caption = Time()
    For f = 0 To LstfiletoExtract.ListCount - 1
        ErrorinDB = False
        PathArchivo = LstfiletoExtract.List(f)
        PathMasArchivo = PathArchivo & "\MSD1.ms"
            If Dir(PathMasArchivo) <> "" Then
                ReDim matrixint(PeaksExt, numRScans) 'numRScans
                Call DoPackedRTIC(matrixint(), PathMasArchivo, MinMass, MaxMass, numRScans, PeaksExt)
                Call DoThreshold(matrixint())
                Call PrintCSV(matrixint())
                '**En DopeakPicking se realiza el proceso de generar la lista de picos**
                '*****************e introducir los picos en la database*****************
                Call DoPeakPicking(matrixint(), PathMasArchivo)
                '***********************************************************************
                If Not ErrorinDB Then ListInfo.AddItem (PathMasArchivo & ":O.K.")
            Else: ListInfo.AddItem (PathMasArchivo & ":NO EXISTE.")
            End If
    Next f
    Label3.Caption = Time()
End Sub

Private Sub CmdOpenFile_Click()
    Dim PathArchivo As String, PathMasArchivo As String
    Dim info As THeader
    Dim FileString As String
    Dim DataName As String
    Dim MiscInfo As String
    Dim Operador As String
    Dim DataTime As String
    Dim MethodFile As String
    PathArchivo = TxtFile.Text
    PathMasArchivo = PathArchivo & "\MSD1.ms"
    info = GetMSInfo(PathMasArchivo)
    FileString = Trim(Left(info.File_String, info.N_File_String))
    DataName = Trim(Left(info.Data_Name, info.N_Data_Name))
    MiscInfo = Trim(Left(info.Misc_Info, info.N_Misc_Info))
    Operador = Trim(Left(info.Operador, info.N_Operator))
    DataTime = Trim(Left(info.Data_Time, info.N_Date_Time))
    MethodFile = Trim(Left(info.Method_File, info.N_Method_File))
    ListInfo.AddItem "File String: " & FileString
    ListInfo.AddItem "Data Name  : " & DataName
    ListInfo.AddItem "Misc Info  : " & MiscInfo
    ListInfo.AddItem "Operador   : " & Operador
    ListInfo.AddItem "Data Time  : " & DataTime
    ListInfo.AddItem "Method file: " & MethodFile
    ListInfo.AddItem "Dir Offset : " & Swap32(info.Dir_Offset)
    ListInfo.AddItem "Data Offset: " & Swap32(info.data_offset)
    ListInfo.AddItem "Start Time : " & (Swap32(info.Start_Ret_Time) / 60000)
    ListInfo.AddItem "End Time   : " & (Swap32(info.End_Ret_Time) / 60000)
    ListInfo.AddItem "Max signal : " & Swap32(info.Max_Signal)
    ListInfo.AddItem "Min signal : " & Swap32(info.Min_Signal)
    ListInfo.AddItem "Num Scans  : " & Swap32(info.Num_Data_Records)
End Sub

Private Sub DoPackedRTIC(ByRef matrixint() As Long, filename As String, _
                         MinMass As Integer, MaxMass As Integer, numRScans As Integer, _
                         PeaksExt As Integer)
    Dim canal As Integer, RScans As Integer
    Dim f As Integer, a As Integer, index As Integer
    Dim Offset As Long
    Dim ahora, ahora2
    Dim info As THeader
    Dim BitsHi As Long, BitsLo As Long, BitsTemp As Long
    Dim numpeaks As Integer
    Dim masas, masspacked As Single
    Dim Abundance As Long
    Dim intensity As Long
    Dim Spectra_data As TSpectra_data
    Dim Spectra_data2 As TSpectra_data2
    Dim Peak_data As TPeak_data
    info = GetMSInfo(filename)
    canal = FreeFile()
    Open filename For Binary Access Read As #canal
    Offset = Swap32(info.data_offset) * 2 - 1 'offset empieza en 1
    Seek #canal, Offset
    For RScans = 0 To numRScans - 1
        For a = 1 To 8 'Un Rscan son 8 Scans
            Get #canal, , Spectra_data
            'Debug.Print "n� " & RScans
            numpeaks = Swap16vb(Spectra_data.Num_peaks)
            For f = 1 To numpeaks
                Get #canal, , Peak_data
                masas = Swap16vb(Peak_data.Mass) / 20
                masspacked = Roundtohalf(masas)
                If (masas >= MinMass) And (masas < MaxMass) Then
                    'empaqueto en multiplos de 1/2 y si m/z en[minmass, maxmass],
                    'meto intensidad en ListaInt[x]
                    Abundance = Swap16vb(Peak_data.Abundance)
                    intensity = GetIntensity(Abundance)
                    index = Round((masspacked - MinMass) * 2)
                    matrixint(index, RScans) = matrixint(index, RScans) + intensity
                End If
            Next f
            'me aseguro de ir al inicio del siguiente scan leyendo el resto de Spectra_data
            Get #canal, , Spectra_data2
        Next a
        DoEvents
    Next RScans
    Close #canal
End Sub

Private Sub DoThreshold(ByRef matrixint() As Long)
Dim f As Long, g As Long
Dim Threshold As Integer
Threshold = txtthreshold.Text
For g = 0 To 388
    For f = 0 To 3699
        If matrixint(f, g) < Threshold Then matrixint(f, g) = 0
    Next f
Next g
End Sub
Private Function MaxInArray(ByRef anArray() As Long) As Long
Dim i As Long
MaxInArray = anArray(0)
For i = 0 To UBound(anArray)
    If MaxInArray < anArray(i) Then MaxInArray = anArray(i)
Next i
End Function

Private Sub DoPeakPicking(ByRef matrixint() As Long, PathMasArchivo As String)
Dim f As Long, g As Long, t As Long
Dim maximo As Long
Dim ArrayAux() As Long
Dim HalfWindow As Integer
Dim canal As Integer
Dim valor As String, TimeGUID As String, hplcid As String
Dim info As THeader
Dim FileString As String
Dim DataName As String
Dim MiscInfo As String
Dim Operador As String
Dim DataTime As String
Dim MethodFile As String
HalfWindow = txtHalfwindow.Text
canal = FreeFile()
'***CONECTO CON DATABASE***'
On Error GoTo ConnError
Call ConnectToDatabase
On Error GoTo 0
'*********************NUEVO REGISTRO EN TABLA HPLC*************************
'********************Con la informacion del archivo************************
info = GetMSInfo(PathMasArchivo)
TimeGUID = "_" & CStr(Time()) 'para obtener una clave unica
FileString = Trim(Left(info.File_String, info.N_File_String))
DataName = Trim(Left(info.Data_Name, info.N_Data_Name))
MiscInfo = Trim(Left(info.Misc_Info, info.N_Misc_Info))
Operador = Trim(Left(info.Operador, info.N_Operator))
DataTime = Trim(Left(info.Data_Time, info.N_Date_Time))
MethodFile = Trim(Left(info.Method_File, info.N_Method_File))
On Error GoTo InsertHPLCError
Call InsertHPLCintoDB(DataName, MethodFile, "ORMAxx", #1/1/2006# _
, #1/1/2006#, PathMasArchivo, FileString & TimeGUID, DataName & TimeGUID, _
150, 2000, 10000, 20, 0, 40, 0.5, 8)
'****Y ahora recupero el campo HPLC_id que asigna al nuevo registro********
'*******************a traves de Dataname que es UNIQUE**********************
hplcid = GetHplcIdFromDB(DataName & TimeGUID)
'**************************************************************************
On Error GoTo 0
ReDim ArrayAux(HalfWindow * 2 + 1)
For f = 0 To 3699
    For g = HalfWindow To 389 - (HalfWindow + 1)
        If matrixint(f, g) > 0 Then
            For t = 0 To HalfWindow * 2
                ArrayAux(t) = matrixint(f, g - HalfWindow + t)
            Next t
            maximo = MaxInArray(ArrayAux)
            If maximo = matrixint(f, g) Then
                'Escribir en  Database
                '***InsertPeaksintoDB(rettime, RMz, height, hplc_id)***'
                On Error GoTo InsertPeaksError
                Call InsertPeaksintoDB(g + 1, f / 2 + 150, 0, CLng(hplcid))
                On Error GoTo 0
            End If
        End If
    Next g
Next f
If Not ErrorinDB Then cnn.CommitTrans
Exit Sub
ConnError:
    MsgBox ("error en conexion")
    Exit Sub
InsertHPLCError:
    ErrorinDB = True
    'MsgBox ("error al insertar en tabla HPLC, Rollingback")
    cnn.RollbackTrans
    ListInfo.AddItem (PathMasArchivo & ":ERROR HPLC table")
    Exit Sub
InsertPeaksError:
    ErrorinDB = True
    'MsgBox ("error al insertar en tabla PEAKS, Rollingback")
    cnn.RollbackTrans
    ListInfo.AddItem (PathMasArchivo & ":ERROR peaks table")
    Exit Sub
End Sub

Private Sub PrintCSV(ByRef matrixint() As Long)
Dim f As Long, g As Long
Dim valor As String
Dim canal As Integer
canal = FreeFile()
Open "c:\printcsv.txt" For Output As #canal
For g = 0 To 388
valor = ""
    For f = 0 To 3699
        valor = valor & CStr(matrixint(f, g))
        If f < 3699 Then valor = valor & ","
    Next f
    Print #canal, valor
DoEvents
Next g
Close #canal
End Sub

Private Sub ConnectToDatabase()
'Crear los objetos
    Set cnn = New ADODB.Connection
    Set rst = New ADODB.Recordset
    With cnn
        .ConnectionString = "Provider=MSDAORA.1;Password=DESARROLLO;" & _
        "User ID=HPLCMS_ADMIN;" & _
        "Data Source = dbora01;"
        .Open
    End With
End Sub

Private Sub InsertPeaksintoDB(Ret_Time As Single, Mass As Single, _
                              height As Long, hplc_id As Long)
 Dim cmdChange As ADODB.Command
Dim sSql As String
 Set cmdChange = New ADODB.Command
 Set cmdChange.ActiveConnection = cnn
 sSql = "INSERT INTO PEAK (RET_TIME, MASS, HEIGHT, HPLC_ID) VALUES ("
 sSql = sSql & Ret_Time & "," & Mass & "," & height & "," & hplc_id & ")"
 cmdChange.CommandText = sSql
 cmdChange.Execute
 'ExecuteCommand cmdChange, rst
End Sub
Private Sub InsertHPLCintoDB(sample As String, method_info As String, orma As String, _
         injected_on As Date, loaded_on As Date, loaded_from As String, _
         datafile As String, Name As String, alg_mass_min As Single, _
         alg_mass_max As Single, alg_treshold As Single, alg_pp_window As Long, _
         alg_time_ini As Single, alg_time_fin As Single, alg_bin_mass As Long, _
         alg_bin_time As Long)
 Dim cmdChange As ADODB.Command
 Dim sSql As String
 Set cmdChange = New ADODB.Command
 Set cmdChange.ActiveConnection = cnn
 'INSERT INTO HPLCMS_ADMIN_HPLC ( SAMPLE, METHOD_INFO, ORMA,
 'INJECTED_ON, LOADED_ON, LOADED_FROM, DATAFILE, NAME, ALG_MASS_MIN,
 'ALG_MASS_MAX, ALG_TRESHOLD, ALG_PP_WINDOW, ALG_TIME_INI, ALG_TIME_FIN,
 'ALG_BIN_MASS, ALG_BIN_TIME )VALUES ('Prueba', 'method.d', 'ORMA23000',
 '#1/1/2006#, #1/2/2006#, 'c:\mis documentos', 'datafile',
 ''name', 150, 2000, 10000, 20, 0.001, 40, 0.5, 8);

 sSql = "INSERT INTO HPLC ( SAMPLE, METHOD_INFO, ORMA, "
'sSql = sSql & "INJECTED_ON, LOADED_ON, LOADED_FROM, DATAFILE, NAME, ALG_MASS_MIN, "
 sSql = sSql & "LOADED_FROM, DATAFILE, NAME, ALG_MASS_MIN, "
 sSql = sSql & "ALG_MASS_MAX, ALG_TRESHOLD, ALG_PP_WINDOW, ALG_TIME_INI, ALG_TIME_FIN, "
 sSql = sSql & "ALG_BIN_MASS, ALG_BIN_TIME ) VALUES ("
 sSql = sSql & "'" & sample & "', '" & method_info & "', '" & orma & "', "
 'sSql = sSql & "#" & injected_on & "#, " & "#" & loaded_on & "#, '" & loaded_from & "', '"
 sSql = sSql & "'" & loaded_from & "', '"
 sSql = sSql & datafile & "', '" & Name & "', " & alg_mass_min & ", "
 sSql = sSql & alg_mass_max & ", " & alg_treshold & ", " & alg_pp_window & ", "
 sSql = sSql & alg_time_ini & ", " & alg_time_fin & ", " & alg_bin_mass & ", "
 sSql = sSql & alg_bin_time & ")"
 cmdChange.CommandText = sSql
 '****Empieza transaccion para insertHPLCintoDB y insertPeaksintoDB****
 cnn.BeginTrans
 cmdChange.Execute
 'ExecuteCommand cmdChange, rst
End Sub

Private Function GetHplcIdFromDB(Name) As String
Dim sql As String
sql = "Select hplc_id from HPLC where name = '" & Name & "'"
rst.Open sql, cnn, adOpenDynamic, adLockOptimistic
GetHplcIdFromDB = rst.Fields("hplc_id")
rst.Close
End Function


Public Sub ExecuteCommand(cmdTemp As ADODB.Command, _
   rstTemp As ADODB.Recordset)

   Dim errLoop As Error
   
   ' Ejecuta el objeto Command especificado. Detecta los
   ' errores, comprobando la colecci�n Errors si es necesario.
   On Error GoTo Err_Execute
   cmdTemp.Execute
   On Error GoTo 0

   ' Recupera los datos actuales volviendo a consultar
   ' el conjunto de registros.
   rstTemp.Requery
   
   Exit Sub

Err_Execute:

   ' Notifica al usuario cualquier error resultante tras
   ' ejecutar la consulta.
   If Errors.Count > 0 Then
      For Each errLoop In Errors
         MsgBox "Error n�mero: " & errLoop.Number & vbCr & _
            errLoop.Description
      Next errLoop
   End If
   
   Resume Next

End Sub

Private Sub Command1_Click()
Dialog.Show vbModal
End Sub
