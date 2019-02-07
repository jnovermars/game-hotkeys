Pause
start := A_TickCount 

While (A_TickCount - start <=  (2 * 60 * 60 * 1000)) {
        Random, rand1, 55,90

        Send {E down}
        Sleep rand1
        Send {E up}

        Sleep rand1

        Send {Space down}
        Sleep rand1
        Send {Space up}

        x := (0)

        While x < 120 {
            Random, rand2, 0,33
            Click, down
            Sleep, 57+rand2
            Click, up  
            Sleep, 693+rand2  
            x++  
        }

        Sleep rand1

        Send {Esc down}
        Sleep rand1
        Send {Esc up}

        Send {W down}
        Sleep rand1
        Send {W up}

        Send {D down}
        Sleep rand1
        Send {D up}

        Sleep 1662+rand1
   
}
F12:: Pause,Toggle
Pause:: Pause,Toggle
