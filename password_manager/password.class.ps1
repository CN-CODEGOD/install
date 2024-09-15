using namespace system.xml.linq

class password {
    [string]$password
    [string]$username
    hidden $path="c:\Users\Administrator\password_manager\xml\password.xml"
    
password([pscustomobject]$pscustomobject){



    $this.validation()
    $this.DoInit($pscustomobject)
}
[object] save(){
    
    $object= [XElement]::new("object",[XAttribute]::new("type","password"),
    [XElement]::new("property",[XAttribute]::new("name","username"),$this.username),
    [XElement]::new("property",[XAttribute]::new("name","password"),$this.password)
    
    )
    return $object.ToString()

}
[void] validation(){

    if (!(Test-Path $PSScriptRoot\xml)) {
        md $PSScriptRoot\xml

        
        
    }
}




    [void] DoInit([pscustomobject]$pscustomobject){
        $pscustomobjectName= (($pscustomobject)|Get-Member -Type NoteProperty ).Name
        foreach($propertyName in $pscustomobjectName ){

           $this.$Propertyname= $pscustomobject.$Propertyname
        }
    }
    
}   
