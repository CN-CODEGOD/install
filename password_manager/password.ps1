

using namespace system.xml.linq



    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $username
        ,
        # Parameter help description
        [Parameter(Mandatory)]
        [string]
        $password
      
    )
    
    save-object -object ([password]::new([pscustomobject]@{

        username= $username
        password=$password
    }))
    
    



