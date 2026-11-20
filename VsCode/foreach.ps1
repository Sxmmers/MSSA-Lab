$filePath="C:\Users\Jason\MSSA-Lab\VsCode\FolderNames.txt"

$foldersPath="C:\Users\Jason\MSSA-Lab\VsCode"

$folderNames=Get-Content -Path $filePath

foreach($name in $folderNames){
    if((Test-Path -Path "$foldersPath\$name") -eq $false){
        New-Item -Path "$foldersPath" -Name $name -ItemType Directory

    }else{
        Write-Output "Folder exists"
    }
}

