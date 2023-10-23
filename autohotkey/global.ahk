#Requires AutoHotkey v2.0

; Open current active app
#q::{
  WinClose("A")
  return
}

; Toggle current app to Fullscreen
#f::{
  win_state := WinGetMinMax("A")
  if win_state = 1 {
    WinRestore("A")
  } else {
    WinMaximize("A")
  }
  return
}

; Open select-area to crop screenshot
#o::{
  Run "explorer.exe ms-screenclip:"
  return
}

; Open help page
#h::{
  Run "chrome.exe /new-window file:///C:/Users/AAytac/.config/autohotkey/help/shotcuts.html"
  return
}
