function Set-LogConfig {
    <#
    .SYNOPSIS
        Sets the configuration of NLog based on a config file
    .DESCRIPTION
        NLog config file can be customized based at will
    .EXAMPLE
        Set-LogConfig -Config ./nlog.config
    .PARAMETER Config
        NLog Config File Path. The path must exist.
    .LINK
        https://github.com/nlog/NLog/wiki/Configuration-file
    #>
    param(
        [Parameter(Mandatory = $True)]
        [ValidateScript({Test-Path $_})]
        [string]$Config
    )
    $Config = Resolve-Path $Config
    [NLog.LogManager]::Configuration =  New-Object NLog.Config.XmlLoggingConfiguration $Config, $True
}