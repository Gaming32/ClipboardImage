Dim filename, result
filename = InputBox("File Name?")
If Right(filename, 4) <> ".bmp" Then
    filename = filename & ".bmp"
End If
Set result = CreateObject("WScript.Shell").Exec("py -3 C:\save_clipboard.py """ & filename & """")
Do While result.Status = 0
    WScript.Sleep 100
Loop
If result.ExitCode = 2 Then
    MsgBox "No images in clipboard!", 16, "save_clipboard"
Else
    MsgBox "Success!", 64, "save_clipboard"
End If
