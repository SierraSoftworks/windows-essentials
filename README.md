# Windows Essentials
**Various pieces of software installed as part of a base Windows development machine**

## Index
 - [Browsers](#browsers)
 - [Communications](#communications)
 - [Gaming](#gaming)
 - [Files and Storage](#files-and-storage)
 - [Development](#development)
 - [Office](#office)
 - [Media](#media)
 - [System Performance and Overclocking](#system-performance-and-overclocking)

## Browsers
#### [Firefox](https://www.mozilla.org/en-US/firefox/)

## Communications
#### [Telegram](https://desktop.telegram.org/)
#### [WhatsApp Desktop](https://apps.microsoft.com/detail/9NKSQGP7F2NH)
#### [Signal Desktop](https://signal.org/download/)
#### [Discord](https://discordapp.com/download)
#### [Microsoft Teams](https://teams.microsoft.com/)

## Gaming
#### [Steam](https://store.steampowered.com/about/)
#### [XBox Game Launcher](https://www.xbox.com/en-IE/xbox-game-pass/pc-games)
#### [Varjo Base](https://varjo.com/)
#### [Varjo Quad-Views Foveated](https://github.com/mbucchia/Quad-Views-Foveated)

## Files and Storage
#### [OneDrive](https://onedrive.live.com/about/en-gb/download/)
#### [NanaZip](https://github.com/M2Team/NanaZip)

## Development
#### [VSCode](https://code.visualstudio.com/)
#### [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)
#### [Docker for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)
#### [Bash on Ubuntu on Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

#### [Git for Windows](https://git-scm.com/download/win)
#### [OpenSSL Client for Windows](https://blogs.msdn.microsoft.com/powershell/2017/12/15/using-the-openssh-beta-in-windows-10-fall-creators-update-and-windows-server-1709/)
#### [Python 3](https://www.python.org/downloads/)
#### [Node.js](https://nodejs.org/en/download/)
#### [Golang](https://golang.org/dl/)
#### [Rust](https://www.rust-lang.org/tools/install)
#### [PowerShell Configuration](https://gist.github.com/SPARTAN563/77ccb460948afd826365e85d226509a7)
```powershell
# You may need to run this in an administrative PowerShell instance
Set-ExecutionPolicy Unrestricted

$SetupScript = Invoke-WebRequest https://gist.githubusercontent.com/SPARTAN563/77ccb460948afd826365e85d226509a7/raw/setup.ps1
$ScriptBlock = [ScriptBlock]::Create($SetupScript.Content)
Invoke-Command -ScriptBlock $ScriptBlock
```
#### [Yubico Authenticator](https://www.yubico.com/products/services-software/download/yubico-authenticator/)

## Office
#### [Microsoft Office 365](https://portal.office.com/account#installs)

## Media
#### [Apple Music](https://apps.microsoft.com/detail/9PFHDD62MXS1)
#### [Equalizer APO](https://sourceforge.net/projects/equalizerapo/)
#### [Topping D70 Drivers](https://www.toppingaudio.com/downloads)

## System Performance and Overclocking
#### [Corsair iCUE](https://www.corsair.com/eu/en/icue)
