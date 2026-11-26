function create-configuration {

    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Name,
        [Parameter()]
        [string]$Version="1.0.0"
    )

    write-output "Creating config for $Name with $version"
    new-item -path "C:\Users\Jason\MSSA-Lab\VsCode\configs" -Name "$($Name).cfg" -ItemType File
    $Version | Out-File -FilePath "C:\Users\Jason\MSSA-Lab\VsCode\configs\$($Name).cfg" -Force
    
}


create-configuration -Name "Testconfig" -Version "9.9.9"

$configPath="C:\Users\Jason\MSSA-Lab\VsCode\configs"

