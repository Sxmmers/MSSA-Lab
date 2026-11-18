
$myHashTable=@{
    key1=100
    apple=2.34
    name='john doe'
    key2=2
    key3=$true
}

$myHashTable.GetType()
$myHashTable.key2 
$myHashTable['1']

$myHashTable.Contains('key3')


$myHashTable.ContainsKey('name')

$myHashTable.ContainsValue(2.34)

$myHashTable.Add('key4','testing add function')

$myHashTable['key5']="added via square bracket"

$myHashTable.key6="Added via dot notation"

$myHashTable.apple = 0.5

$myHashTable.Remove("apple")

##################################


$Employee1 = New-Object -TypeName PSCustomObject

Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "EmployeeID" -Value "1001"
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "FirstName" -Value "Neo"
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "Title" -Value "CEO"

#Get-Member -InputObject $Employee1

$employee2=[PSCustomObject]@{ EmployeeID = '1001'; FirstName = 'Neo'; Title = "Programmer"}

$employee2