#NoEnv
#Warn
#SingleInstance force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; * Exemple bàsic
; #Include, prefabricatedLIB\genericLIB.ahk
/*

ExecuteG()
{
    OpenTarget("https://GitHub.com/JJairo-16")
}

*/

if A_ScriptFullPath = A_LineFile
{
    MsgBox, 48, Advertència, Aquest fitxer és una llibreria i no es deu executar directament.
    ExitApp
}

; * tests
ExecuteO()
{
    MsgBox, Atajo Alt+Espai -> Alt+O detectat!
}