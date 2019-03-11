# Hotkeys V1
> Hotkey is a bundle of scripts that makes it easier to play GTA Online.


### Used for
In this repository you will find some scripts that makes it following things possible:
1. Prevent auto kick by GTA
1. Dance in the nightclub
1. Disconnect GTA Online and restart the game (used for: [The Doomsday Heist](https://www.youtube.com/watch?v=1FjSijYXxsM)).
1. Suspend the game and make a public solo session


### Disclaimer
We are not responsible for the consequences of using this software in any way.

### Prerequisites

Requirements
1. [autohotkey](https://www.autohotkey.com/)
1. [windows powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-6) (should be on windows by default)
1. [7-zip](https://www.7-zip.org/) (can be another program, it is just to unzip the release)
1. *[notepad++](https://notepad-plus-plus.org/download/v7.6.4.html)
*optional for when you like to editing the files, but default notepad can be used as well.

## Installation
First download the [latest code](https://github.com/xleeuwx/game-hotkeys/releases) and unzip it.

The following steps are only needed for
 - `Disconnect GTA Online and restart the game`
 - `Suspend the game and make a public solo session`

open the file `gta.ps1` and change the line to the correct path of `PlayGTAV.exe`

```
$gtaPath="C:\Games\GTA\PlayGTAV.exe"

```



## Usage example

**Prevent auto kick by GTA**
Dubble click the file 'gta_auto_kick_disable_dance.ahk'
ingame you can go into first person view by clicking the button `v` multiple times
when you are in first person view you can press `Pause Break` button hitting the `Pause Break` wil stop the script


**Dance in the nightclub**
Dubble click the file 'gta_auto_kick_disable_dance.ahk'
ingame you can go into first person view by clicking the button `v` multiple times
when you are in first person view you can press `Pause Break` button hitting the `Pause Break` wil stop the script


**Disconnect GTA Online and restart the game**
when playing you can press (you can change the bindings in `gta_hotkeys.ahk`)
`alt + F11` to enter a SoloSession.


**Suspend the game and make a public solo session**
`alt + F12` to stop GTA and restart it.

## Optional Changing the key bindings of the commands:
You can change de commands by opening the `.ahk` file and search for the key binding and change it.
In the documentation of autohotkey you can find what options are available in autohotkey.

[autohotkey documentation](https://www.autohotkey.com/docs/AutoHotkey.htm)


## Contributors

xleeuwx – [github](https://github.com/xleeuwx/)

## Contributing

1. Fork it (<https://github.com/xleeuwx/game-hotkeys/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request to the master branch
