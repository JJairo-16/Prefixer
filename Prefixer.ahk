#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; * Variable global
firstCombo := false

; * Primera combinació: Alt+Espai
!Space::
    firstCombo := true
    SetTimer, ResetCombo, -500 ; ? reset després de 0.5 segons
return

; ! Opcions
if (firstCombo) {

; * Segona combinació: Alt+O (test)
!O::
    ExecuteO()
    firstCombo := false
return

} ; ? Fi del entorn

; * ResetCombo
ResetCombo:
    firstCombo := false
return

; ! Commbinacions
; * tests
ExecuteO()
{
    MsgBox, Atajo Alt+Espacio -> Alt+O detectado!
}