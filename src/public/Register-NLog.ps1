function Register-NLog {
    <#
    .SYNOPSIS
        Register the NLog dlls and create a file logging target.        
    .DESCRIPTION
        Register the NLog dlls and create a file logging target.
    .PARAMETER FileName
        File to start logging to
    .PARAMETER Config
        NLog Config File Path. The path must exist.
    .PARAMETER LoggerName
        An Nlog name (useful for multiple logging targets)
        By default, the basename of the calling script
    .EXAMPLE
        Register-NLog -FileName C:\temp\testlogger.log
    .EXAMPLE 
        Register-NLog -Config C:\temp\nlog.config
    .SEE
        https://github.com/nlog/NLog/wiki/Configuration-file
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $True, ParameterSetName = 'logfile')]
        [string]$FileName,
        [Parameter(Mandatory = $True, ParameterSetName = 'config')]
        [ValidateScript({Test-Path $_})]
        [string]$Config,
        [Parameter()]
        [string]$LoggerName = (Get-Item $MyInvocation.PSCommandPath).BaseName
        
    )
    if ($Script:Logger -eq $null) {
        if ($PsCmdlet.ParameterSetName -eq 'logfile' ) {

            $debugLog                      = Get-NewLogTarget -targetType "file"
            $debugLog.ArchiveAboveSize     = 10240000
            $debugLog.archiveEvery         = "Month"
            $debugLog.ArchiveNumbering     = "Rolling"    
            $debugLog.CreateDirs           = $True      
            $debugLog.FileName             = $FileName
            $debugLog.Encoding             = [System.Text.Encoding]::GetEncoding("iso-8859-2")
            $debugLog.KeepFileOpen         = $False
            $debugLog.Layout               = Get-LogMessageLayout -layoutId 1    
            $debugLog.maxArchiveFiles      = 1
        
            $Script:NLogConfig.AddTarget("file", $debugLog)
        
            $rule1 = New-Object NLog.Config.LoggingRule("*", [NLog.LogLevel]::Trace, $debugLog)
            $Script:NLogConfig.LoggingRules.Add($rule1)

            # Assign configured Log config to LogManager
            [NLog.LogManager]::Configuration = $Script:NLogConfig
        }
        if ($PsCmdlet.ParameterSetName -eq 'config' ) {
            Set-LogConfig -Config $Config
        }
        

        # Create a new Logger
        $Script:Logger = Get-NewLogger -loggerName $LoggerName
    }
    else {
        Write-Warning 'NlogModule: You must first run UnRegister-NLog!'
    }
}