
function install_software {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Path
    )

    try {
        test-path $path
    }
    catch {
        instal_software
    }
    try {
        aria2c.exe
    
    }
    catch {
        get-aria2c
    }
    try {
        winget
    }
    catch {
        throw "没有winget 请下载winget后执行"
    }
        function get-aria2c {
            [CmdletBinding()]
            param (
                [Parameter(Mandatory)]
                [string]
                $aria2c
            )
            try {
                & $aria2c        
            }
            catch {
                write "请输入正确的路径"
            instal_software
            }
        
        }

    md $path\softwar
    winget install --id Microsoft.PowerShell --source winget
    git clone https://github.com/marhau-dev/Soundpad-cracked.git
    aria2c.exe "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" -d $path\software
    aria2c.exe "https://github.com/medokin/soundpad-text-to-speech/releases/download/v1.1.1/Setup.exe" -d $path\software
    aria2c.exe "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe" -d $path\software
    aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z"-d $path\software
    aria2c.exe "https://github.com/yt-dlp/yt-dlp/releases/download/2024.08.06/yt-dlp.exe" -d $path\software\yt-dlp
    winget install Microsoft.PowerToys -s winget
    
    winget install JanDeDobbeleer.OhMyPosh -s winget
    aria2c.exe "https://nodejs.org/dist/v20.17.0/node-v20.17.0-x64.msi" -d $path\software
    aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z" -d $path\software
    aria2c.exe "https://d1vdn3r1396bak.cloudfront.net/installer/363949053574335076/0588175" -d $path\software
    aria2c.exe "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" -d $path\software
    aria2c.exe "https://downloads2.broadcom.com/?file=VMware-workstation-full-17.6.0-24238078.exe&oid=31617506&id=QsFTDf239JaXNuFAVwhhnA2nsRKZg85h2pvvA6dzJmEmfeD-OCQL_wPB-SzMANRgY8U=&verify=1725952613-YZaC5tPc5dCbUxlHHKNTSSmPTH6p1amyrR8JahVpEcU%3D" -d $path\software
    aria2c.exe "https://d3mb6vraut285i.cloudfront.net/installer/0973117252055536153/437276" -d $path\software
    # move file 
    move $home\install\yt-dlp $path\software
  
    
    #compress file 
    Rename-Item $path\software\ffmpeg-git-essentials.7z ffmepg.zip
    Compress-Archive $path\software\ffmpeg.zip $path\software\ffmepg
    
    #set env 
    
    
    $oldpath=[System.Environment]::GetEnvironmentVariable('path')
    $newpath=$oldpath+";$path\software\ffmepg\bin" + ";$path\software\soundpad-craked\soundpad\"  
    
    [System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')
    
    Restart-Computer
}
install_software