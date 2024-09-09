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
        throw "the aria2c isn't working"
    }

}
md $home\game
aria2c.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -d $home\game
aria2c.exe "https://dldir1.qq.com/tgc/wegame/miniloader/WeGameMiniLoader.std.5.12.21.1022.exe" -d $home\game
aria2c.exe "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.46.1/xmcl-0.46.1-win32-x64.zip"


md $home\software
aria2c.exe "https://github.com/PowerShell/PowerShell/releases/download/v7.4.5/PowerShell-7.4.5-win-x64.msi" -d $home\software
git clone https://github.com/marhau-dev/Soundpad-cracked.git
aria2c.exe "https://github.com/medokin/soundpad-text-to-speech/releases/download/v1.1.1/Setup.exe" -d $home\software
aria2c.exe "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe" -d $home\software
aria2c.exe "https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-essentials.7z"-d $home\software

winget install Microsoft.PowerToys -s winget

winget install JanDeDobbeleer.OhMyPosh -s winget
aria2c.exe "https://nodejs.org/dist/v20.17.0/node-v20.17.0-x64.msi"
#compress file 
Rename-Item C:\Users\Administrator\git\ffmpeg-git-essentials.7z ffmepg.zip
Compress-Archive $home\git\ffmpeg.zip 

#set env 


$oldpath=[System.Environment]::GetEnvironmentVariable('path')
$newpath=$oldpath+";$home\install\ffmepg\bin" + ";$home\software\soundpad-craked\soundpad\" + ";$home\install\BBDown_1.6.3_20240814_win-x64"  +";$home\aria2-1.37.0-win-32bit-build1"

[System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')

Restart-Computer