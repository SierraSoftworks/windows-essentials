# This script uses the winget command provided by the Windows Package Manager.
# You can read more about it here: https://devblogs.microsoft.com/commandline/windows-package-manager-preview/

param(
    # Specify the directory into which command line tools and other $PATH-available user utilities will be installed.
    [Parameter(Mandatory = $false)]
    [string]
    $UserProgramFolder = "${HOME}\Programs",

    [Parameter(Mandatory = $false)]
    [string]
    $DevelopmentDirectory = "${HOME}\dev"
)

function Install-GitHubBinary {
    param(
        [Parameter(Mandatory = $true)]
        [string]
        $Repo,

        [Parameter(Mandatory = $true)]
        [string]
        $File,

        [Parameter(Mandatory = $false)]
        [string]
        $Destination = $null,

        [Parameter(Mandatory = $false)]
        [string]
        $ReleaseTag = "latest"
    )

    if ($ReleaseTag -eq "latest") {
        $ReleaseTag = (Invoke-WebRequest "https://api.github.com/repos/${Repo}/releases" | ConvertFrom-Json)[0].tag_name
    }

    if ($Destination -eq $null) {
        $Destination = $File
    }

    $DestinationDir = [System.IO.Directory]::GetParent($Destination)
    if (-not $DestinationDir.Exists) {
        $DestinationDir.Create()
    }

    Write-Host "Installing ${Repo}:${File}@${ReleaseTag} into ${Destination}"
    Invoke-WebRequest -Uri "https://github.com/${Repo}/releases/download/${ReleaseTag}/${File}" -OutFile $Destination
}

if ($null -eq (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Error "You do not have the Windows Package Manager installed on your machine. Please install it before proceeding." `
                -Category NotInstalled `
                -RecommendedAction "Install the Windows Package Manager using the steps on this page: https://github.com/microsoft/winget-cli"

    exit 1
}

Write-Host Installing browser
winget install Microsoft.Edge
winget install Mozilla.Firefox

Write-Host Installing communication tools
winget install keybase
winget install telegram
winget install whatsapp
winget install Microsoft.Teams
winget install Signal.Signal

Write-Host Installing common utilities
winget install 7zip
winget install Microsoft.Onedrive
winget install 1Password
winget install calibre.calibre

Write-Host Installing developer environment tools
winget install git
winget install gnupg.Gpg4win
winget install Axosoft.GitKraken
winget install GitHub.GitHubDesktop
winget install GitHub.cli
winget install Docker.DockerDesktop
winget install python
winget install node
winget install Golang.Go
winget install Microsoft.dotnet
winget install Microsoft.WindowsTerminal
winget install Microsoft.VisualStudioCode
winget install Microsoft.Powershell
winget install SourceFoundry.HackFonts

Write-Host Installing gaming applications
winget install GOG.Galaxy
winget install Valve.Steam
winget install OBSProject.OBSStudio
winget install TeamSpeakSystems.TeamSpeakClient


Write-Host Configure PowerShell
$env:PATH += ";${UserProgramFolder}"
[Environment]::SetEnvironmentVariable("Path", $env:PATH, [System.EnvironmentVariableTarget]::User)

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

if (Test-Path -PathType Leaf -Path $profile.CurrentUserAllHosts) {
    Write-Warning "You currently have a PowerShell profile file, we will not override it."
} else {
    Write-Host "Updating your PowerShell Profile file"
    Get-Content [System.IO.Path]::Combine($PSScriptRoot, "profile.ps1") | Set-Content $profile.CurrentUserAllHosts
}


if (-not (Get-Command "git-tool.exe" -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Git-Tool"
    Install-GitHubBinary -Repo "SierraSoftworks/Git-Tool" -File "git-tool-windows-amd64.exe" -Destination "${UserProgramFolder}\git-tool.exe"

    New-Item -ItemType Directory -Path $DevelopmentDirectory
    
    if ($null -eq $env:GITTOOL_CONFIG) {
        $env:GITTOOL_CONFIG = "$DevelopmentDirectory\git-tool.yml"
        [Environment]::SetEnvironmentVariable("GITTOOL_CONFIG", $env:GITTOOL_CONFIG, [System.EnvironmentVariableTarget]::User)
    }

    if (-not (Test-Path -PathType Leaf -Path $env:GITTOOL_CONFIG)) {
        &"git-tool.exe" config | Set-Content "$env:GITTOOL_CONFIG"
    }

} else {
    Write-Host "Updating Git-Tool to the latest version"
    git-tool.exe update
}

if (-not (Get-Command "starship.exe" -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Starship"
    Install-GitHubBinary -Repo "starship/starship" -File "starship-x86_64-pc-windows-msvc.zip" -Destination "${HOME}\Downloads\starship.zip"
    Expand-Archive -Path "${HOME}\Downloads\starship.zip" -DestinationPath $UserProgramFolder
}
