# This script uses the winget command provided by the Windows Package Manager.
# You can read more about it here: https://devblogs.microsoft.com/commandline/windows-package-manager-preview/

if ((Get-Command winget -ErrorAction SilentlyContinue) -eq $null) {
    Write-Error "You do not have the Windows Package Manager installed on your machine. Please install it before proceeding." `
                -Category NotInstalled `
                -RecommendedAction "Install the Windows Package Manager using the steps on this page: https://devblogs.microsoft.com/commandline/windows-package-manager-preview/"

    exit 1
}

Write-Host Installing browser
winget install Microsoft.Edge

Write-Host Installing communication tools
winget install keybase
winget install telegram
winget install whatsapp
winget install Microsoft.Teams

Write-Host Installing common utilities
winget install 7zip

Write-Host Installing developer environment tools
winget install git
winget install gnupg.Gpg4win
winget install Axosoft.GitKraken
winget install Docker.DockerDesktop
winget install python
winget install node
winget install Microsoft.dotnet
winget install Microsoft.WindowsTerminal
winget install Microsoft.VisualStudioCode
winget install Microsoft.Powershell
winget install SourceFoundtry.HackFonts

Write-Host Installing gaming applications
winget install GOG.Galaxy
winget install Valve.Steam

Write-Host Configure PowerShell
Set-ExecutionPolicy Unrestricted
$SetupScript = Invoke-WebRequest https://gist.githubusercontent.com/SPARTAN563/77ccb460948afd826365e85d226509a7/raw/setup.ps1
$ScriptBlock = [ScriptBlock]::Create($SetupScript.Content)
Invoke-Command -ScriptBlock $ScriptBlock