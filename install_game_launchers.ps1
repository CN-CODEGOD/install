[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Path
)

function install_game_launchers {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Path
    )

    md $path\game
    start-job {curl "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" --output $path\game\steam_installer.exe}
    start-job {curl  "https://dldir1.qq.com/tgc/wegame/miniloader/WeGameMiniLoader.std.5.12.21.1022.exe" --output $path\game\wegame_install.exe}
    start-job {curl "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.46.1/xmcl-0.46.1-win32-x64.zip" --output $path\game\xmcl_install.exe}
    start-job {curl "https://gamedownloads.rockstargames.com/public/installer/Rockstar-Games-Launcher.exe?_gl=1*1uzr7ch*_ga*MjEwMTA5MDc2OC4xNzI1OTcwMjYx*_ga_PJQ2JYZDQC*MTcyNTk3MDI2MC4xLjAuMTcyNTk3MDI2NC4wLjAuMA.." --output $path\game\rockstargames_install.exe}
    start-job {curl "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-15.17.1.msi?launcherfilename=EpicInstaller-15.17.1-924c3ca127ce42be9c3ae18789d2cd86.msi" --output $path\game\epicgames_install.exe}
}

install_game_launchers -path $path
