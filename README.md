# Windows Essentials
**Various pieces of software installed as part of a base Windows development machine**

## Index
 - [Browsers](#browsers)
 - [Communications](#communications)
 - [Gaming](#gaming)
 - [Files and Storage](#files-and-storage)
 - [Development](#development)
 - [Media](#media)

## Browsers
#### [Microsoft Edge Insider](https://www.microsoftedgeinsider.com/en-us/)
##### Recommended Extensions
 - [uBlock Origin](https://microsoftedge.microsoft.com/insider-addons/detail/odfafepnkmbhccpbejgmiehpchacaeak)
 - [Dashlane](https://microsoftedge.microsoft.com/insider-addons/detail/gehmmocbbkpblljhkekmfhjpfbkclbph)
 - [JON Formatter](https://microsoftedge.microsoft.com/insider-addons/detail/njpoigijhgbionbfdbaopheedbpdoddi)

#### [Chrome](https://www.google.com/chrome/)
##### Recommended Extensions
 - [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
 - [Vue.js Dev Tools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
 - [Markdown Here](https://markdown-here.com/)

#### [Firefox](https://www.mozilla.org/en-US/firefox/)

## Communications
#### [Telegram](https://desktop.telegram.org/)
#### [WhatsApp Desktop](https://www.whatsapp.com/download/)
#### [Keybase](https://keybase.io/download)
#### [Slack](https://slack.com/downloads/windows)
#### [Discord](https://discordapp.com/download)

## Gaming
#### [Steam](https://store.steampowered.com/about/)
#### [Blizzard Launcher](https://eu.battle.net/account/download/)
#### [Good Old Games Galaxy](https://www.gog.com/galaxy)
#### [XBox Game Launcher](https://www.xbox.com/en-IE/xbox-game-pass/pc-games)

## Files and Storage
#### [OneDrive](https://onedrive.live.com/about/en-gb/download/)
#### [Google Drive](https://www.google.com/drive/download/)
#### [Dropbox](https://www.dropbox.com/downloading)
#### [7-zip](https://www.7-zip.org/download.html)

## Development
#### [VSCode](https://code.visualstudio.com/)
#### [GitKraken](https://www.gitkraken.com/)
#### [Docker for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)
#### [Bash on Ubuntu on Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

#### [Git for Windows](https://git-scm.com/download/win)
#### [OpenSSL Client for Windows](https://blogs.msdn.microsoft.com/powershell/2017/12/15/using-the-openssh-beta-in-windows-10-fall-creators-update-and-windows-server-1709/)
#### [Fiddler4](https://www.telerik.com/fiddler)
#### [Python 3](https://www.python.org/downloads/)
#### [Node.js](https://nodejs.org/en/download/)
#### [Golang](https://golang.org/dl/)
#### [PowerShell Configuration](https://gist.github.com/SPARTAN563/77ccb460948afd826365e85d226509a7)
```powershell
# You may need to run this in an administrative PowerShell instance
Set-ExecutionPolicy Unrestricted

$SetupScript = Invoke-WebRequest https://gist.githubusercontent.com/SPARTAN563/77ccb460948afd826365e85d226509a7/raw/setup.ps1
$ScriptBlock = [ScriptBlock]::Create($SetupScript.Content)
Invoke-Command -ScriptBlock $ScriptBlock
```
#### [GPG4Win](https://www.gpg4win.org/download.html)

## Media
#### [Google Play Music Desktop Player](https://www.googleplaymusicdesktopplayer.com/)
#### [K-Lite Mega Codec Pack](https://www.codecguide.com/download_kl.htm)
