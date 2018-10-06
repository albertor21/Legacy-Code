VERSION 5.00
Begin VB.Form Dialog 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Dialog Caption"
   ClientHeight    =   5475
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   9120
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5475
   ScaleWidth      =   9120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command3 
      Caption         =   "<<"
      Height          =   375
      Left            =   4200
      TabIndex        =   7
      Top             =   3360
      Width           =   375
   End
   Begin VB.ListBox LstBox 
      Height          =   4740
      ItemData        =   "FrmDialog.frx":0000
      Left            =   4680
      List            =   "FrmDialog.frx":0002
      MultiSelect     =   2  'Extended
      TabIndex        =   6
      Top             =   480
      Width           =   4215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<"
      Height          =   375
      Left            =   4200
      TabIndex        =   5
      Top             =   2520
      Width           =   375
   End
   Begin VB.CommandButton Command1 
      Caption         =   ">"
      Height          =   375
      Left            =   4200
      TabIndex        =   4
      Top             =   1920
      Width           =   375
   End
   Begin VB.DirListBox Dirbox 
      Height          =   4140
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   3735
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   240
      TabIndex        =   2
      Top             =   120
      Width           =   3735
   End
   Begin VB.CommandButton CancelButton 
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "Aceptar"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   4920
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Directorios seleccionados:"
      Height          =   255
      Left            =   4680
      TabIndex        =   8
      Top             =   240
      Width           =   3375
   End
End
Attribute VB_Name = "Dialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub CancelButton_Click()
Me.Hide
End Sub

Private Sub Command1_Click()
Dim path As String, myname As String, pathwithslash
path = Dirbox.path ' Establece la ruta.
pathwithslash = path & "\"
myname = Dir(pathwithslash, vbDirectory)   ' Recupera la primera entrada.
Do While myname <> ""   ' Inicia el bucle.
   ' Ignora el directorio actual y el que lo abarca.
   If myname <> "." And myname <> ".." Then
      ' Realiza una comparación a nivel de bit para asegurarse de que MiNombre es un directorio.
      'If (GetAttr(path & myname) And vbDirectory) = vbDirectory Then
      If (GetAttr(path & "\" & myname) And vbDirectory) = vbDirectory Then
         LstBox.AddItem path & "\" & myname
      End If   ' solamente si representa un directorio.
   End If
   myname = Dir  ' Obtiene siguiente entrada.
Loop

End Sub

Private Sub Command2_Click()
Dim index As Integer, i As Integer
'index = LstBox.ListIndex
'If index > 0 Then LstBox.RemoveItem (index)

For i = 0 To LstBox.SelCount - 1
     LstBox.RemoveItem i + 1
Next i


End Sub

Private Sub Command3_Click()
LstBox.Clear
End Sub

Private Sub Drive1_Change()
Dirbox.path = Drive1.Drive
End Sub

Private Sub Form_Activate()
LstBox.Clear
End Sub

Private Sub OKButton_Click()
Dim f As Integer
If LstBox.ListCount = 0 Then Form1.LstfiletoExtract.Clear
For f = 0 To LstBox.ListCount - 1
Form1.LstfiletoExtract.List(f) = LstBox.List(f)
Next f
Me.Hide
End Sub
