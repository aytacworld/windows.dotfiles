#Requires AutoHotkey v2.
; ^ ctrl, ! alt, + shift, # win

; Open Terminal (WSL2 Ubuntu on Windows Terminal)
#Enter::{
  Run "wt"
  return
}

; Open Terminal (Powershell)
#+Enter:: {
  Run "wt C:\Program Files\PowerShell\7\pwsh.exe"
  return
}

; Open Terminal (CMD)
#^Enter:: {
  Run "wt C:\Windows\System32\cmd.exe"
  return
}

; Open Browser app
#b::{
  Run "chrome.exe /new-window `"about:blank`""
  return
}

; Open Browser app (Incognito)
#+b::{
  Run "chrome.exe /new-window `"about:blank`" -incognito"
  return
}

; Open Invidious webpage  (Incognito)
#+y::{
  Run "chrome.exe /new-window `"https://inv.tux.pizza/`" -incognito"
  return
}

; Open Qmusic webpage  (Incognito)
#+u::{
  Run "chrome.exe /new-window `"https://qmusic.be/luister/qmusic_be`" -incognito"
  return
}
