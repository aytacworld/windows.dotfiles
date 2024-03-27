#Requires AutoHotkey v2.0
; KOMOREBI Specific hotkeys
; ^ ctrl, ! alt, + shift, # win

; Start komorebi manually (if autostart failes)
!s::{
  RunWait("komorebic load-custom-layout C:\Users\AAytac\.config\komorebi\custom-layout.json", , "Hide")
  return
}

!+o::{
  RunWait("komorebic reload-configuration", , "Hide")
  return
}
; Focus windows
!h::{
  RunWait("komorebic focus left", , "Hide")
  return
}
!j::{
  RunWait("komorebic focus down", , "Hide")
  return
}
!k::{
  RunWait("komorebic focus up", , "Hide")
  return
}
!l::{
  RunWait("komorebic focus right", , "Hide")
  return
}

; Move windows
!+h::{
  RunWait("komorebic move left", , "Hide")
  return
}
!+j::{
  RunWait("komorebic move down", , "Hide")
  return
}
!+k::{
  RunWait("komorebic move up", , "Hide")
  return
}
!+l::{
  RunWait("komorebic move right", , "Hide")
  return
}

; Resize
!^l::{
  RunWait("komorebic resize-axis horizontal increase", , "Hide")
  return
}
!^h::{
  RunWait("komorebic resize-axis horizontal decrease", , "Hide")
  return
}
!^j::{
  RunWait("komorebic resize-axis vertical increase", , "Hide")
  return
}
!^k::{
  RunWait("komorebic resize-axis vertical decrease", , "Hide")
  return
}

; Manipulate windows
!t::{
  RunWait("komorebic toggle-float", , "Hide")
  return
}
!+f::{
  RunWait("komorebic toggle-monocle", , "Hide")
  return
}

; Window manager options
!+r::{
  RunWait("komorebic retile", , "Hide")
  return
}
!p::{
  RunWait("komorebic toggle-pause", , "Hide")
  return
}

; Layouts
!x::{
  RunWait("komorebic flip-layout horizontal", , "Hide")
  return
}
!y::{
  RunWait("komorebic flip-layout vertical", , "Hide")
  return
}

; Workspaces
!1::{
  RunWait("komorebic focus-workspace 0", , "Hide")
  return
}
!2::{
  RunWait("komorebic focus-workspace 1", , "Hide")
  return
}
!3::{
  RunWait("komorebic focus-workspace 2", , "Hide")
  return
}
!4::{
  RunWait("komorebic focus-workspace 3", , "Hide")
  return
}
!5::{
  RunWait("komorebic focus-workspace 4", , "Hide")
  return
}
!6::{
  RunWait("komorebic focus-workspace 5", , "Hide")
  return
}
!7::{
  RunWait("komorebic focus-workspace 6", , "Hide")
  return
}
!8::{
  RunWait("komorebic focus-workspace 7", , "Hide")
  return
}
!9::{
  RunWait("komorebic focus-workspace 8", , "Hide")
  return
}
!0::{
  RunWait("komorebic focus-workspace 9", , "Hide")
  return
}

; Move windows across workspaces
!+1::{
  RunWait("komorebic move-to-workspace 0", , "Hide")
  return
}
!+2::{
  RunWait("komorebic move-to-workspace 1", , "Hide")
  return
}
!+3::{
  RunWait("komorebic move-to-workspace 2", , "Hide")
  return
}
!+4::{
  RunWait("komorebic move-to-workspace 3", , "Hide")
  return
}
!+5::{
  RunWait("komorebic move-to-workspace 4", , "Hide")
  return
}
!+6::{
  RunWait("komorebic move-to-workspace 5", , "Hide")
  return
}
!+7::{
  RunWait("komorebic move-to-workspace 6", , "Hide")
  return
}
!+8::{
  RunWait("komorebic move-to-workspace 7", , "Hide")
  return
}
!+9::{
  RunWait("komorebic move-to-workspace 8", , "Hide")
  return
}
!+0::{
  RunWait("komorebic move-to-workspace 9", , "Hide")
  return
}
