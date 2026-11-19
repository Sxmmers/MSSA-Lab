$filePath="C:\Users\Jason\MSSA-Lab\VsCode\test.txt"

$Data=Get-Content -Path $filePath

$firstline=$Data[0]

if($firstline -eq 'Hello world :('){
    Write-Output "hi ;("
}elseif($firstline -eq 'Hello world :)'){
    Write-Output "hi ;)"
}elseif($firstline -eq 'Hello world :|'){
    Write-Output "hi :P"
}else{
    Write-Output "Who knows!?!"
}

$filePath="C:\Users\Jason\MSSA-Lab\VsCode\test.txt"
$Data=Get-Content -Path $filePath
$firstline=$Data[1] # use 0-2 to access data

switch($Data.Count){
    "Hello world :("{
        Write-Output " hi ;("
    }
    "Hello world :)"{
        Write-Output " hi ;)"
    }
    "Hello world :|"{
        Write-Output " hi ;\"
    }
}

switch($Data.Count){
    {$_ -lt 2}{
        Write-Output " has less than two lines"
        break
    }
    {$_ -eq 3}{
        Write-Output " This file has exactly 3 lines"
        break
    }

    {$_ -in (5..10)}{
        Write-Output " Has less than 10 lines"
    }
    default{
        Write-Output "This file has 10 or more lines"
    }
}