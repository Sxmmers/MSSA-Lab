Cmdlets are commands in the PowerShell envoirnment

- Cmdlets perform an action and typically return a microsoft .NET Framework
object to the next command in the pipeline

Cmdlets are designed to have similar structure and syntax
- They utilize the same basic structure
    Verb-Noun -parameter argument
    
    The verb describes the action that is to take place
    
    The noun describes the target of that action
    
    The parameter is and optiong characteristic or property of the noun
        -PowerShell parameters are always preceded by a hyphen (-)
    
    The argument is a value that can be provided for a parameter
    
    There are six common cmdlet verbs
        -get    Queries a specific object
        -set    Modifies te settings of an object
        -enable
        -disable
        -new    creates new instance of an item
        -remove removes and instance of an item
        There are many other verbs
        - Add, Clear, Export, Format, Import, Invoke, etc.
    --------------------------------------------------------------------------
    Cmdlet syntax
        -Verb-Noun -Parameter <argument>
        -Example: Get-Process
            Get-Process [[-name] string[]] [-ComputerName string[]]
            [-FileVersionInfo] [-Module] [CommonParameters]
            
            Get-Process -name powerpnt
---------------------------------------------------------------------------------

    What is the best way to learn PowerShell's commands?

    - The help files

    Get-Help
    - Displays information about Windows PowerShell concepts and commands,
    including cmdlets, functions, CIM commands, workflows, providers, aliases
    and scripts
    -Enter Get-Help followed by the command name
    help can be obtained in various forms and detail levels
    -To display information on one page
        Get-help <cmdlet>
        Help<cmdlet>
    -Displays information on multiple pages
        <cmdlet>-?
    -To see examples
        get-help<cmdlet> -examples
        get-help<cmdlet> -full
    -Open in window (PWSH 3.0 and 4.0)
        Get-Help<cmdlet> -ShowWindow
-----------------------------------------------------------------------------------------

    Get-Command
    -Returns list of all commands in the version you are using

-----------------------------------------------------------------------------------------
    Formatting
    get-process | Format-wide
    get-process | Format-wide -column 4 
    get-process | Format-list
    get-process | Format-list -Property *
    Get-process | Format-Table
    Get-process | Format-Table -Property Path,Name,Id,Company -Autosize
------------------------------------------------------------------------------------------
    Get-Member : retrieves info about .net objects
        displays the properties and methods of the object
    $m = "Hello there!"
    $m | Get-Member
    $m.Length
    $m.ToUpper()
    $m.ToLower()
    $m | Get-Member -membertype properties
    $m | Get-Member -membertype methods
-------------------------------------------------------------------------------------------
    .NET objects

    "Everything in powershell is an object"
    $m="Hello there"
    created a variable $m and loaded "Hello There"
    this became a string object
    - .NET string objects have certain methods and properties
    -Objects are created based on classes
    - The .NET Framework is a bunch of classes
    - See "Objects and Classes"
--------------------------------------------------------------------------------------------
    Objects and Classes

    Three key concepts
    
    .NET Framework Classes
    Objects
    PowerShell commands
    
    .NET Framework is a bunch of classes that define objects
    Objects are constructed from classes

    -.net framework classes inherit functionalities from their parent classes
    -Example
        The string class inherits from the Object class
            -Some methods and properties are inherited from the Object class
        Bottom line
            If I want to know how many characters are in a string..
                I can write the code to count
                or
                I can use the Length method
                    $m.Length
    Objects

    -objects are created in memory based on a particular class
        Methods are actions that can be performed
        Properties are attributes that describe an object
--------------------------------------------------------------------------------------------------
    Classes, Objects and PowerShell
        
