#Requires AutoHotkey v2.0
; KOMOREBI Specific hotkeys

; Start komorebi manually (if autostart failes)
#s::{
  RunWait("komorebic load-custom-layout $Env:USERPROFILE\.config\komorebi\custom-layout.json", , "Hide")
  return
}

; Reload whkd configuration
!o::{
  RunWait("taskkill /f /im whkd.exe && Start-Process whkd -WindowStyle hidden", , "Hide")
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
!+[::{
  RunWait("komorebic cycle-focus previous # oem_4 is [", , "Hide")
  return
}
!+]::{
  RunWait("komorebic cycle-focus next # oem_6 is ]", , "Hide")
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
!+Enter::{
  RunWait("komorebic promote", , "Hide")
  return
}

; Stack windows
!left::{
  RunWait("komorebic stack left", , "Hide")
  return
}
!down::{
  RunWait("komorebic stack down", , "Hide")
  return
}
!up::{
  RunWait("komorebic stack up", , "Hide")
  return
}
!right::{
  RunWait("komorebic stack right", , "Hide")
  return
}
!;::{
  RunWait("komorebic unstack", , "Hide")
  return
}
![::{
  RunWait("komorebic cycle-stack previous # oem_4 is [", , "Hide")
  return
}
!]::{
  RunWait("komorebic cycle-stack next # oem_6 is ]", , "Hide")
  return
}

; Resize
!=::{
  RunWait("komorebic resize-axis horizontal increase", , "Hide")
  return
}
!-::{
  RunWait("komorebic resize-axis horizontal decrease", , "Hide")
  return
}
!+=::{
  RunWait("komorebic resize-axis vertical increase", , "Hide")
  return
}
!+-::{
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
