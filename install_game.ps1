
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
    aria2c.exe "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -d $home\game
    aria2c.exe "https://dldir1.qq.com/tgc/wegame/miniloader/WeGameMiniLoader.std.5.12.21.1022.exe" -d $home\game
    aria2c.exe "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.46.1/xmcl-0.46.1-win32-x64.zip" -d $home\game
    
    
}
install_game