if ( (Get-Module NLogModule)) { Remove-Module NLogModule }

Import-Module ..\NLogModule.psm1 -Verbose:$false -Force

#$script:VerbosePreference = 'Continue' 
$script:DebugPreference = 'Continue'

Register-NLog -Config .\nlog.config

Write-Host "Write-Host test." 
"Out-Default test." 
Write-Verbose "Write-Verbose test." 
Write-Debug "Write-Debug test." 
Write-Warning "Write-Warning test." 
Write-Error "Write-Error test." 
Write-Host ""   # To display a blank line in the file and on screen. 
Write-Host "Multi`r`nLine`r`n`r`nOutput" 
