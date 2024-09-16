[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $path
)

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
   
    }
    catch {
        throw 
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
                write 
            install_software
            }
        
        }

    md $path\software
        cd software
    git clone https://github.com/marhau-dev/Soundpad-cracked.git 
    aria2c.exe "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" -d $path\software
    aria2c.exe "https://github.com/medokin/soundpad-text-to-speech/releases/download/v1.1.1/Setup.exe" -d $path\software
    aria2c.exe "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe" -d $path\software
    aria2c.exe "https://github.com/yt-dlp/yt-dlp/releases/download/2024.08.06/yt-dlp.exe" -d $path\software\yt-dlp
    aria2c.exe "https://nodejs.org/dist/v20.17.0/node-v20.17.0-x64.msi" -d $path\software
    aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z" -d $path\software
    aria2c.exe "https://d1vdn3r1396bak.cloudfront.net/installer/363949053574335076/0588175" -d $path\software
    aria2c.exe "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" -d $path\software
    aria2c.exe "https://downloads2.broadcom.com/?file=VMware-workstation-full-17.6.0-24238078.exe&oid=31617506&id=QsFTDf239JaXNuFAVwhhnA2nsRKZg85h2pvvA6dzJmEmfeD-OCQL_wPB-SzMANRgY8U=&verify=1725952613-YZaC5tPc5dCbUxlHHKNTSSmPTH6p1amyrR8JahVpEcU%3D" -d $path\software
    aria2c.exe "https://d3mb6vraut285i.cloudfront.net/installer/0973117252055536153/437276" -d $path\software
    aria2c.exe "https://www.zhornsoftware.co.uk/stickies/stickies_setup_10_1d.exe" -d $path\software
    aria2c.exe "https://lddl01.ldmnq.com/downloader/ldplayerinst9.exe?n=ldplayer9_ld_999_ld.exe" -d $path\software
    aria2c.exe "https://github.com/NickeManarin/ScreenToGif/releases/download/2.41.1/ScreenToGif.2.41.1.Setup.x64.msi" -d $path\software
    aria2c.exe "https://7-zip.org/a/7z2408-x64.exe"   -d $path\software
    aria2c.exe "https://github.com/Xizo-114514/DiskIconChangerByXizo/releases/download/v1.2.2024.7.17/XizoDiskIconChangerV1.2.exe" -d $path\software
    git clone https://github.com/CN-CODEGOD/icons.git 
    
    # move file 
    move $home\install\yt-dlp $path\software
  
    
    #compress file 
    Rename-Item (dir $path\software\ |Where-Object {$_.BaseName -eq "ffmpeg-2024-09-12-git-504c1ffcd8-essentials_build"}).FullName ffmpeg.zip
    md $path\software\ffmpeg
    expand-Archive $path\software\ffmpeg.zip $path\software\ffmpeg
    
    #set env 
    
    
    $oldpath=[System.Environment]::GetEnvironmentVariable('path')
    $newpath=$oldpath+";$path\software\ffmpeg\ffmpeg-2024-09-12-git-504c1ffcd8-essentials_build\bin" + ";$path\software\soundpad-craked\soundpad\"  
    
    [System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')
    
    Restart-Computer
}
install_software -path $path