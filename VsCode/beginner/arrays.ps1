$myArray=@("Test1","test2","test3")

$myArray[0]

$myArray=$myArray+"Test4"

$myArray+="Test5"

$myArray= $myArray -ne "Test2"

$myArray
###################################

$myList1=[System.Collections.Arraylist] ##Bad


$myList = New-Object -TypeName System.Collections.ArrayList ##Good
$myList1.GetType()
[void]$myList.Add("Test")
[void]$myList.Add("Test1")

$myList.AddRange(@("Test2","Test3","Test4"))

$myList.Remove("test2")

$myList