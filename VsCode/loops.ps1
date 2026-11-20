$filePath="C:\Users\Jason\MSSA-Lab\VsCode\hand.txt"

$filenames = Get-Content -Path $filePath

foreach ($name in $filenames){
    Write-Output $name
}