#Requires AutoHotkey v2.

; Open Terminal (WSL2 Ubuntu on Windows Terminal)
#Enter::{
  Run "ubuntu.exe"
  return
}

; Open Terminal (Powershell)
#+Enter:: {
  Run "C:\Program Files\PowerShell\7\pwsh.exe"
  return
}


; Open Browser app
#b::{
  Run "chrome.exe -homepage `"about:blank`""
  return
}

; Open Browser app (Incognito)
#+b::{
  Run "chrome.exe -homepage `"about:blank`" -incognito"
  return
}

; Open Invidious webpage  (Incognito)
#+y::{
  Run "chrome.exe -homepage `"https://inv.tux.pizza/`" -incognito"
  return
}

; Open Qmusic webpage  (Incognito)
#+u::{
  Run "chrome.exe -homepage `"https://qmusic.be/luister/qmusic_be`" -incognito"
  return
}
