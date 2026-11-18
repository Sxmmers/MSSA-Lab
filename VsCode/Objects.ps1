
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

$myHashTable