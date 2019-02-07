Pause
start := A_TickCount 

While (A_TickCount - start <=  (4 * 60 * 60 * 1000)) {
              
	Send {W down}
	Sleep 150
	Send {W up}
	Sleep 150
	Send {S down}
	Sleep 150
	Send {S up}
	Sleep 150

}
F12:: Pause,Toggle
Pause:: Pause,Toggle
