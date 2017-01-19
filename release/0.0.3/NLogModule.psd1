#
# Manifeste de module pour le module ��PSGet_NLogModule��
#
# G�n�r� par�: Zachary Loeber
#
# G�n�r� le�: 19/01/2017
#

@{

# Module de script ou fichier de module binaire associ� � ce manifeste
RootModule = 'NLogModule.psm1'

# Num�ro de version de ce module.
ModuleVersion = '0.0.3'

# �ditions PS prises en charge
# CompatiblePSEditions = @()

# ID utilis� pour identifier de mani�re unique ce module
GUID = 'c3fc6e2e-b0ad-42ec-9895-cd49764ca305'

# Auteur de ce module
Author = 'Zachary Loeber'

# Soci�t� ou fournisseur de ce module
CompanyName = 'Zachary Loeber'

# D�claration de copyright pour ce module
Copyright = '(c) 2016 Zachary Loeber. All rights reserved.'

# Description de la fonctionnalit� fournie par ce module
Description = 'Use NLog to capture and log all calls to write-output, verbose, warning, error, and host'

# Version minimale du moteur Windows PowerShell requise par ce module
PowerShellVersion = '3.0'

# Nom de l'h�te Windows PowerShell requis par ce module
# PowerShellHostName = ''

# Version minimale de l'h�te Windows PowerShell requise par ce module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Architecture de processeur (None, X86, Amd64) requise par ce module
# ProcessorArchitecture = ''

# Modules qui doivent �tre import�s dans l'environnement global pr�alablement � l'importation de ce module
# RequiredModules = @()

# Assemblys qui doivent �tre charg�s pr�alablement � l'importation de ce module
# RequiredAssemblies = @()

# Fichiers de script (.ps1) ex�cut�s dans l�environnement de l�appelant pr�alablement � l�importation de ce module
# ScriptsToProcess = @()

# Fichiers de types (.ps1xml) � charger lors de l'importation de ce module
# TypesToProcess = @()

# Fichiers de format (.ps1xml) � charger lors de l'importation de ce module
# FormatsToProcess = @()

# Modules � importer en tant que modules imbriqu�s du module sp�cifi� dans RootModule/ModuleToProcess
# NestedModules = @()

# Fonctions � exporter � partir de ce module. Pour de meilleures performances, n�utilisez pas de caract�res g�n�riques et ne supprimez pas l�entr�e. Utilisez un tableau vide si vous n�avez aucune fonction � exporter.
FunctionsToExport = 'Get-LogMessageLayout', 'Get-NewLogConfig', 'Get-NewLogger', 
               'Get-NewLogTarget', 'Get-NLogDllLoadState', 'Register-NLog', 
               'Set-LogConfig', 'Unregister-NLog', 'Write-Debug', 'Write-Error', 
               'Write-Host', 'Write-Output', 'Write-Verbose', 'Write-Warning'

# Applets de commande � exporter � partir de ce module. Pour de meilleures performances, n�utilisez pas de caract�res g�n�riques et ne supprimez pas l�entr�e. Utilisez un tableau vide si vous n�avez aucune applet de commande � exporter.
CmdletsToExport = @()

# Variables � exporter � partir de ce module
# VariablesToExport = @()

# Alias � exporter � partir de ce module. Pour de meilleures performances, n�utilisez pas de caract�res g�n�riques et ne supprimez pas l�entr�e. Utilisez un tableau vide si vous n�avez aucun alias � exporter.
AliasesToExport = @()

# Ressources DSC � exporter depuis ce module
# DscResourcesToExport = @()

# Liste de tous les modules empaquet�s avec ce module
# ModuleList = @()

# Liste de tous les fichiers empaquet�s avec ce module
# FileList = @()

# Donn�es priv�es � transmettre au module sp�cifi� dans RootModule/ModuleToProcess. Cela peut �galement inclure une table de hachage PSData avec des m�tadonn�es de modules suppl�mentaires utilis�es par PowerShell.
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

# Le pr�fixe par d�faut des commandes a �t� export� � partir de ce module. Remplacez le pr�fixe par d�faut � l�aide d�Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

