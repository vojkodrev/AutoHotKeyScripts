SendNKeys(key, n) {
  while (n > 0) {
    n--
    Send %key%
  }
}

SendOpenCommandsDialog() {
  Send {Ctrl down}{Shift down}p{Ctrl up}{Shift up}
}