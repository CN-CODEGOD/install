[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Path
)

function install_game {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $path
    )
try {
    aria2c.exe
}
catch {
    get-aria2c
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
       install_game
    }

}
    md $home\game
    aria2c.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -d $path\game
    aria2c.exe "https://dldir1.qq.com/tgc/wegame/miniloader/WeGameMiniLoader.std.5.12.21.1022.exe" -d $path\game
    aria2c.exe "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.46.1/xmcl-0.46.1-win32-x64.zip" -d $path\game
    aria2c.exe "https://gamedownloads.rockstargames.com/public/installer/Rockstar-Games-Launcher.exe?_gl=1*1uzr7ch*_ga*MjEwMTA5MDc2OC4xNzI1OTcwMjYx*_ga_PJQ2JYZDQC*MTcyNTk3MDI2MC4xLjAuMTcyNTk3MDI2NC4wLjAuMA.." -d $path\game
    aria2c.exe "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-15.17.1.msi?launcherfilename=EpicInstaller-15.17.1-924c3ca127ce42be9c3ae18789d2cd86.msi" -d $path\hame
    
    
}
install_game -path $path