
SelectAll() {
  Send {Ctrl down}a{Ctrl up}
}

SendNKeys(key, n) {
  while (n > 0) {
    n--
    Send %key%
  }
}

SendOpenCommandsDialog() {
  Send {Ctrl down}{Shift down}p{Ctrl up}{Shift up}
}

SendConvertIndentationToSpaces() {
  SendOpenCommandsDialog()
  Send convert indentation to spaces{Enter}
  Sleep 300
  Send {Enter}
}

SendSwitchIndentUsingSpaces(n) {
  SendOpenCommandsDialog()
  Send indent using spaces{Enter}
  Sleep 300
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
  Send {Ctrl down}{Alt down}{Enter down}{Enter up}{Ctrl up}{Alt up}
  SendNKeys("{Esc}", 2)
  SendSwitchIndentUsingSpaces(to)
}

f9::
SendSwitchToNSpaces(4, 2)
return

f10::
SendSwitchToNSpaces(2, 4)
return
