

1 -eq 1 #Equals
1 -lt 2 #Less than
2 -le 2 #Less than or equal too
2 -gt 2 #Greater than
2 -ge 2 #Greater than or equal too
1 -ne 2 #Not Equals

@(1,2,3) -contains 2
@('Test','test') -contains 'TEST' #Not case sensitive
@('Test','test') -ccontains 'TEST' #Case Sensitive


'Test' -eq 'TEST' #Not case sensitive
'Test' -ceq 'TEST' #Case Sensitive


$filePath="C:\Users\Jason\MSSA-Lab\VsCode\test.txt"

Test-Path -Path $filePath

if(test-path -path $filePath){
    $Data=Get-Content -Path $filePath
    if($Data.Count -lt 2){
        Write-Output "This file has less than 2 lines"
    
    }elseif($Data.Count -lt 4){
        Write-Output "This file has less than 4 lines but atleast 2"
    }else {
        Write-Output "This file has 4 or more lines"
    }
}else {
    Write-Output "file `"$filepath`" does not exist"
}