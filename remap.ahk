#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

processExists(Name) {
    Process, Exist, %Name%
    return Errorlevel
}

quitIfRunning(Name) {
    If processExists("pcsx2.exe")
    {
        Process, Close, pcsx2.exe
    }
}

quitBinding() {
    quitIfRunning("pcsx2.exe")
    Send {Esc down}
    Sleep 10
    Send {Esc up}
    return
}

1joy11::
    quitBinding()
2joy11::
    quitBinding()