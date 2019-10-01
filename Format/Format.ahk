
#Include ..\Common.ahk

#IfWinActive, ahk_exe Code.exe
{
  f11::
  SendNKeys("{Esc}", 1)
  SendOpenCommandsDialog()
  Send beautify{Enter}
  Sleep 500
  Send js{Enter}
  return
}
#IfWinActive
