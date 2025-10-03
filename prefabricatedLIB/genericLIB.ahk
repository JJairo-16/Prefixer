#NoEnv
#Warn
#SingleInstance force
SendMode Input
SetWorkingDir, %A_ScriptDir%

if A_ScriptFullPath = A_LineFile
{
    MsgBox, 48, Advertència, Aquest fitxer és una llibreria i no es deu executar directament.
    ExitApp
}

; ! Obertura
; * Obrir aplicació o URL
OpenTarget(target) {
    if (target = "") {
        Return 0
    }

    Run, %target%
    If (ErrorLevel) {
        TrayTip, Prefixer, No s'ha pogut obrir: %target%, 3, 1
        Return 0
    }

    Return 1
}

; * Obrir directori
OpenDir(path)
{
    If (target = "") {
        Return 0
    } Else If (!FileExist(path)) {
        TrayTip, Prefixer, Directori inexistent: %path%, 3, 1
        Return 0
    }

    Run, explorer.exe "%path%",, UseErrorLevel
    if (ErrorLevel) {
        TrayTip, Prefixer, No s'ha pogut obrir el directori., 3, 1
        Return 0
    }

    Return 1
}

; ! Administració bàsica de la finestra activa
; * Tancar finestra activa
CloseWindow() {
    WinClose, A
}

; * Minimitzar finestra activa
MinimizeWindow() {
    WinMinimize, A
}

; * Maximitzar finestra activa
MaximizeWindow() {
    WinMaximize, A
}

; * Alternar maximització de la finestra activa
ToggleMaximizeWindow() {
    WinGet, state, MinMax, A
    if (state = 1)
        WinRestore, A
    else
        WinMaximize, A
}

; ! Administració bàsica del dispositiu
; * Bloquejar l'ordinador
LockPC() {
    DllCall("LockWorkStation")
}

; * Apagar l'ordinador (pot mostrar diàlegs de confirmació)
ShutdownPC() {
    Shutdown, 1
}

; * Apagar l'ordinador
ForceShutdownPC() {
    Shutdown, 9
}

; * Reiniciar l'ordinador
RestartPC() {
    Shutdown, 2
}

; * Reiniciar l'ordinador (forçat)
ForceRestartPC() {
    Shutdown, 6
}

; ! Administració bàsica del volum
; * Ajustar volum (0–100)
SetVolume(level) {
    if (level < 0 || level > 100) {
        Return 0
    }

    SoundSet, %level%

    Return 1
}

; * Silenciar/activar àudio
ToggleMute() {
    SoundSet, +1, , mute
}