#
# Manifeste de module pour le module « PSGet_NLogModule »
#
# Généré par : Zachary Loeber
#
# Généré le : 19/01/2017
#

@{

# Module de script ou fichier de module binaire associé à ce manifeste
RootModule = 'NLogModule.psm1'

# Numéro de version de ce module.
ModuleVersion = '0.0.3'

# Éditions PS prises en charge
# CompatiblePSEditions = @()

# ID utilisé pour identifier de manière unique ce module
GUID = 'c3fc6e2e-b0ad-42ec-9895-cd49764ca305'

# Auteur de ce module
Author = 'Zachary Loeber'

# Société ou fournisseur de ce module
CompanyName = 'Zachary Loeber'

# Déclaration de copyright pour ce module
Copyright = '(c) 2016 Zachary Loeber. All rights reserved.'

# Description de la fonctionnalité fournie par ce module
Description = 'Use NLog to capture and log all calls to write-output, verbose, warning, error, and host'

# Version minimale du moteur Windows PowerShell requise par ce module
PowerShellVersion = '3.0'

# Nom de l'hôte Windows PowerShell requis par ce module
# PowerShellHostName = ''

# Version minimale de l'hôte Windows PowerShell requise par ce module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Architecture de processeur (None, X86, Amd64) requise par ce module
# ProcessorArchitecture = ''

# Modules qui doivent être importés dans l'environnement global préalablement à l'importation de ce module
# RequiredModules = @()

# Assemblys qui doivent être chargés préalablement à l'importation de ce module
# RequiredAssemblies = @()

# Fichiers de script (.ps1) exécutés dans l’environnement de l’appelant préalablement à l’importation de ce module
# ScriptsToProcess = @()

# Fichiers de types (.ps1xml) à charger lors de l'importation de ce module
# TypesToProcess = @()

# Fichiers de format (.ps1xml) à charger lors de l'importation de ce module
# FormatsToProcess = @()

# Modules à importer en tant que modules imbriqués du module spécifié dans RootModule/ModuleToProcess
# NestedModules = @()

# Fonctions à exporter à partir de ce module. Pour de meilleures performances, n’utilisez pas de caractères génériques et ne supprimez pas l’entrée. Utilisez un tableau vide si vous n’avez aucune fonction à exporter.
FunctionsToExport = 'Get-LogMessageLayout', 'Get-NewLogConfig', 'Get-NewLogger', 
               'Get-NewLogTarget', 'Get-NLogDllLoadState', 'Register-NLog', 
               'Set-LogConfig', 'Unregister-NLog', 'Write-Debug', 'Write-Error', 
               'Write-Host', 'Write-Output', 'Write-Verbose', 'Write-Warning'

# Applets de commande à exporter à partir de ce module. Pour de meilleures performances, n’utilisez pas de caractères génériques et ne supprimez pas l’entrée. Utilisez un tableau vide si vous n’avez aucune applet de commande à exporter.
CmdletsToExport = @()

# Variables à exporter à partir de ce module
# VariablesToExport = @()

# Alias à exporter à partir de ce module. Pour de meilleures performances, n’utilisez pas de caractères génériques et ne supprimez pas l’entrée. Utilisez un tableau vide si vous n’avez aucun alias à exporter.
AliasesToExport = @()

# Ressources DSC à exporter depuis ce module
# DscResourcesToExport = @()

# Liste de tous les modules empaquetés avec ce module
# ModuleList = @()

# Liste de tous les fichiers empaquetés avec ce module
# FileList = @()

# Données privées à transmettre au module spécifié dans RootModule/ModuleToProcess. Cela peut également inclure une table de hachage PSData avec des métadonnées de modules supplémentaires utilisées par PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'NLog','PowerShell_Logging','Logging'

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/zloeber/NLogModule'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# URI HelpInfo de ce module
# HelpInfoURI = ''

# Le préfixe par défaut des commandes a été exporté à partir de ce module. Remplacez le préfixe par défaut à l’aide d’Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

