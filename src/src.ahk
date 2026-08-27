#Requires AutoHotkey v2.0
#SingleInstance Force

; Check CapsLock state
IsCapsOn() {
    return GetKeyState("CapsLock", "T")
}

; Scroll Up -> Volume Up
WheelUp:: {
    if IsCapsOn() {
        Send "{Volume_Up}"
    } else {
        Send "{WheelUp}"
    }
}

; Scroll Down -> Volume Down
WheelDown:: {
    if IsCapsOn() {
        Send "{Volume_Down}"
    } else {
        Send "{WheelDown}"
    }
}

; Middle Click -> Play/Pause
MButton:: {
    if IsCapsOn() {
        Send "{Media_Play_Pause}"
    } else {
        Send "{MButton}"
    }
}

; Mouse Button 4 -> Previous Track
XButton1:: {
    if IsCapsOn() {
        Send "{Media_Prev}"
    } else {
        Send "{XButton1}"
    }
}

; Mouse Button 5 -> Next Track
XButton2:: {
    if IsCapsOn() {
        Send "{Media_Next}"
    } else {
        Send "{XButton2}"
    }
}
