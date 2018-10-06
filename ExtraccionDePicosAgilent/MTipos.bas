Attribute VB_Name = "Tipos"
Type THeader
  N_File_Number As Byte     ' No. of bytes in File_Number
  File_number As String * 3 ' array[0..2] of Char;
  N_File_String As Byte     ' No. of bytes in File_String
  File_String As String * 19 ' array[0..18] of Char;
  N_Data_Name As Byte       ' No. of bytes in Data_Name
  Data_Name As String * 61  'array[0..60] of Char;
  N_Misc_Info As Byte       'No. of bytes in Misc_Info
  Misc_Info As String * 61  'array[0..60] of Char;
  N_Operator As Byte        'No. of bytes in Operator
  Operador As String * 29   'array[0..28] of Char;
  N_Date_Time As Byte       'No. of bytes in Date_Time
  Data_Time As String * 29  'array[0..28] of Char;
  N_Instr_Model As Byte     'No. of bytes in Instr_Model
  Instr_Model As String * 9 'array[0..8] of Char;
  N_Inlet As Byte           'No. of bytes in Inlet
  Inlet As String * 9       'array[0..8] of Char;
  N_Method_File As Byte     'No. of bytes in Method_File
  Method_File As String * 19 'array[0..18] of Char;
  File_Type As Long         'longword= long
  Seq_Index As Integer      'word= integer
  ALS_Bottle As Integer
  Replicate As Integer
  Dir_Entry_Type As Integer
  Dir_Offset As Long
  data_offset As Long
  Run_Table_Offset As Long
  Normalization_Records_Offset As Long
  Extra_Records  As Integer
  Num_Data_Records As Long 'nº Scans  (0x116)
  Start_Ret_Time As Long  'milisegundos  (0x11A)
  End_Ret_Time As Long  'milisegundos  (0x11E)
  Max_Signal As Long
  Min_Signal As Long
  Unused As String * 214    'array[0..213] of Char
End Type

Type TTIC_data
'situado al final del archivo (en Tinfo.dir_offset*2-1)
  Spectrum_offset As Long 'Offset al espec masas correspondiente
  Ret_Time As Long        'tiempo de retencion (milisegundos)
  Total_signal As Long    'intensidad
End Type

Type TSpectra_data
  NWords As Integer
  Ret_Time As Long
  Nwords2 As Integer
  Data_type As Integer
  Status_word As Integer
  Num_peaks As Integer
  Base_peak As Integer
  BP_Abundance As Integer
End Type

Type TPeak_data
  Mass As Integer
Abundance As Integer
End Type

Type TSpectra_data2
  NWords3 As Integer
  Nwords4 As Integer
  Unknown As Integer
  Total_signal As Long
End Type

Type TPeakList
  RRettime As Single
  Rmz As Single
End Type


    


