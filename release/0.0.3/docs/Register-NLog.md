---
external help file: NLogModule-help.xml
online version: https://github.com/nlog/NLog/wiki/Configuration-file
schema: 2.0.0
---

# Register-NLog

## SYNOPSIS
Register the NLog dlls and create a file logging target.

## SYNTAX

### logfile
```
Register-NLog -FileName <String> [-LoggerName <String>]
```

### config
```
Register-NLog -Config <String> [-LoggerName <String>]
```

## DESCRIPTION
Register the NLog dlls and create a file logging target.

## EXAMPLES

### -------------------------- EXEMPLE 1 --------------------------
```
Register-NLog -FileName C:\temp\testlogger.log
```

### -------------------------- EXEMPLE 2 --------------------------
```
Register-NLog -Config C:\temp\nlog.config
```

## PARAMETERS

### -FileName
File to start logging to

```yaml
Type: String
Parameter Sets: logfile
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Config
NLog Config File Path.
The path must exist.

```yaml
Type: String
Parameter Sets: config
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggerName
An Nlog name (useful for multiple logging targets)
By default, the basename of the calling script

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: (Get-Item $MyInvocation.PSCommandPath).BaseName
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://github.com/nlog/NLog/wiki/Configuration-file](https://github.com/nlog/NLog/wiki/Configuration-file)

