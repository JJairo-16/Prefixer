#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include, lib\JSON.ahk
#Include, userOptions.ahk

; * Lllegir configuració
FileRead, jsonString, *P65001 %A_ScriptDir%\config.json
Data := JSON.Load(jsonString)

; * Variables
; Config
comboTimer := Data.comboTimer  ; en ms (ej. 500). Si poses 10 -> 10 ms
if !(comboTimer) {
    comboTimer := 500
}

; Global
global firstCombo := false

; * Primera combinació: Alt+Espai
!Space::
    firstCombo := true
    SetTimer, ResetCombo, % -Abs(comboTimer) ; ? reset després de 0.5 segons
return

; * ResetCombo
ResetCombo:
    firstCombo := false
return

; ! Opcions
#If firstCombo

; * Segona combinació: Alt+O (test)
!O::
    ExecuteO()
    firstCombo := false
return

#If ; ? Fi de l'entorn