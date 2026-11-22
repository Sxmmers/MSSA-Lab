
Get-service | where-object Status -eq "Stopped" | Export-Csv $filePath 

$directory = "C:\Users\Jason\MSSA-Lab\VsCode"

$fileName = Read-Host "Enter report name"

$filepath = Join-Path $directory "$fileName"