Attribute VB_Name = "Funciones"
Option Explicit
Option Base 0
Public Declare Function Swap32 Lib "C:\Documents and Settings\arodriguez\Mis documentos\VB\Desreplicacion\UtilsDll.dll" (ByVal avalue As Long) As Long
Public Declare Function Swap16 Lib "C:\Documents and Settings\arodriguez\Mis documentos\VB\Desreplicacion\UtilsDll.dll" (ByVal avalue As Integer) As Integer
Public Declare Function GetIntensity Lib "C:\Documents and Settings\arodriguez\Mis documentos\VB\Desreplicacion\UtilsDll.dll" (ByVal avalue As Long) As Long


Function Swap32vb(ByVal LNum As Long) As Long '32-bit version
    '*********ESTA FUNCION NO SE USA***************'
    '**Se prefiere usar la funcion Swap32(en DLL)**'
    Dim sSrc As String
    Dim sRes As String
    Dim i As Integer
    sSrc = Hex(LNum)
    If Len(sSrc) <> 8 Then sSrc = String(8 - Len(sSrc), "0") & sSrc
    For i = 1 To 7 Step 2
        sRes = Mid$(sSrc, i, 2) & sRes
    Next i
    Swap32vb = Val("&H" & sRes)
End Function

Function Swap16vb(ByVal iNum As Integer) As Long '16-bit version
    'Dim iRes As Variant
    'iRes = (iNum And &HFF) * 2 ^ 8
    'iRes = iRes Or (iNum And &HFF00) / 256
    'Swap16vb = iRes - IIf(iRes > 32767, 65536, 0)
    '****DEBIDO A LA INEXISTENCIA DEL TIpo UInt en VB*******'
    Dim res As Integer
    res = Swap16(iNum)
    If res < 0 Then Swap16vb = 65536 + res Else Swap16vb = res
End Function

Function GetMSInfo(ByVal filename As String) As THeader
    Dim canal As Integer
    Dim info As THeader
    canal = FreeFile()
    Open filename For Binary Access Read As #canal
    Get #canal, 1, info
    Close #canal
    GetMSInfo = info
End Function

'calcula 8^0, 8^1, 8^2 u 8^3 (las unicas potencias
'necesarias para calcular la intensidad
Function Powerof8(ByVal aExp As Integer) As Integer
    Dim resultado(4) As Integer
    resultado(0) = 1
    resultado(1) = 8
    resultado(2) = 64
    resultado(3) = 512
    Powerof8 = resultado(aExp)
End Function

Function Frac(anumber As Double) As Double
Frac = anumber - (Int(anumber))
End Function

'Convierte el parte decimal de un numero a 0.5 si la
'parte decimal >=0.5 y si no a 0.0
Function Roundtohalf(ByVal avalue As Double) As Double
If Frac(avalue) > 0.4999 Then Roundtohalf = Int(avalue) + 0.5 _
Else Roundtohalf = Int(avalue) + 0#
End Function

