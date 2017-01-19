Remove-Module Test1
Remove-Module NLogModule

Import-Module ..\NLogModule.psm1 -Verbose:$false

#$script:VerbosePreference = 'Continue' 
$script:DebugPreference = 'Continue'

Register-NLog -FileName "test.log"

Write-Host "Write-Host test." 
"Out-Default test." 
Write-Verbose "Write-Verbose test." 
Write-Debug "Write-Debug test." 
Write-Warning "Write-Warning test." 
Write-Error "Write-Error test." 
Write-Host ""   # To display a blank line in the file and on screen. 
Write-Host "Multi`r`nLine`r`n`r`nOutput" 
