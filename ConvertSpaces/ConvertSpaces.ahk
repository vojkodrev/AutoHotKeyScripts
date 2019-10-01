
#Include ..\Common.ahk

SelectAll() {
  Send {Ctrl down}a{Ctrl up}
}

SendConvertIndentationToSpaces() {
  SendOpenCommandsDialog()
  Send convert indentation to spaces{Enter}
  Sleep 500
  Send {Enter}
}

SendSwitchIndentUsingSpaces(n) {
  SendOpenCommandsDialog()
  Send indent using spaces{Enter}
  Sleep 500
  Send %n%{Enter}
}

SendSwitchToNSpaces(from, to) {
  SendNKeys("{Esc}", 1)
  ; SendConvertIndentationToSpaces()
  Send {Ctrl down}h{Ctrl up}
  SelectAll()
  SendNKeys("{Space}", from)
  Send {Tab}
  SelectAll()
  SendNKeys("{Space}", to)
  Send {Ctrl down}{Alt down}{Enter}{Ctrl up}{Alt up}
  SendNKeys("{Esc}", 2)
  SendSwitchIndentUsingSpaces(to)
}

#IfWinActive, ahk_exe Code.exe
{
  f9::
  SendSwitchToNSpaces(4, 2)
  return

  f10::
  SendSwitchToNSpaces(2, 4)
  return
}
#IfWinActive
