Invoke-Expression $(git-tool.exe shell-init powershell)
New-Alias -Name gt -Value git-tool.exe

Invoke-Expression (&starship init powershell)