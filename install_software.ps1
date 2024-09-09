
function instal_software {
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
    aria2c.exe "https://github.com/medokin/soundpad-text-to-speech/releases/download/v1.1.1/Setup.exe" -d $path\software
    aria2c.exe "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe" -d $path\software
    aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z"-d $path\software
    aria2c.exe "https://github.com/yt-dlp/yt-dlp/releases/download/2024.08.06/yt-dlp.exe" -d $path\software\yt-dlp
    winget install Microsoft.PowerToys -s winget
    
    winget install JanDeDobbeleer.OhMyPosh -s winget
    aria2c.exe "https://nodejs.org/dist/v20.17.0/node-v20.17.0-x64.msi" -d $path\software
    aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z" -d $path\software
    aria2c.exe "https://d1vdn3r1396bak.cloudfront.net/installer/363949053574335076/0588175" -d $path\software
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
instal_software