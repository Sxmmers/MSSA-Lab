
$myarray=@("bih")

$myarray[0]


$myarray= $myarray+"bigdihh"
$myarray= $myarray+="dihhhhhh"

$myarray.Count


#####################################


$myarraylist=[System.Collections.ArrayList]@()
#casts an array to a list



$mylist=New-Object -TypeName System.Collections.ArrayList
#creates a new object as an array list

$mylist.Add("test1")







$myhash=@{
    bih = 1
    dih = 2
}

$myhash['bih']
$myhash.dih

$myhash.ContainsKey('bih')
$myhash.ContainsValue(2)

$myhash.Add('bigdih','6')

$myhash.Add('smoldih','.5')

$myhash.Values
$myhash.Keys


$myarray[1]
#####################################


$employee1=new-object -TypeName PSCustomObject

Add-Member $employee1 -MemberType NoteProperty -Name 'employee id' -value '001'
Add-Member $employee1 -MemberType NoteProperty -Name 'Firstname' -value 'Penny'
Add-Member $employee1 -MemberType NoteProperty -Name 'Title' -value 'Penny'

$employee1.empl