$serviceName="Spooler"

Get-Service -name $serviceName


start-service -name $serviceName


Get-Service -name $serviceName | Stop-Service

Get-help get-service -Full

(Get-Service $serviceName).GetType()


$serviceName | Get-Service | Start-Service

$serviceName | Get-Service

$services=New-Object -TypeName System.Collections.ArrayList
$services.AddRange(@("Spooler","w32time"))

$services | get-service | Start-Service

$services | Get-Service | ForEach-Object {Write-Output "service :$($_.Displayname) is currently $($_.Status)"}