#SingleInstance Force

Pause
start := A_TickCount 

While (A_TickCount - start <=  (4 * 60 * 60 * 1000)) {
	Send, {W down}
	Sleep 450
	Send, {W up}

	Sleep 200

	Send, {S down}
	Sleep 500
	Send, {S up}

	Sleep 250

	Send, {Enter down}
	Sleep 100
	Send, {Enter up}

	Sleep 250
}

Pause:: Pause,Toggle
