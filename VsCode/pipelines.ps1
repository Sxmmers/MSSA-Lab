$serviceName="Spooler"

Get-Service -name $serviceName


start-service -name $serviceName


Get-Service -name $serviceName | Stop-Service

Get-help get-service -Full

