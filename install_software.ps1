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
    wget 
 }
 catch {
    get-weget
 }
    
    function get-wget {
        #scooptintaller
       curl "https://github.com/ScoopInstaller/Install/blob/master/install.ps1" --output .\install.1.ps1
       
       irm get.scoop.sh -outfile 'install.1.ps1'
       .\install.1.ps1 -RunAsAdmin 
       # I don't care about other parameters and want a one-line command
       iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
       
       scoop install wget
       }

    md $path\software
        cd software 
    #soundpad
        git clone https://github.com/marhau-dev/Soundpad-cracked.git 
        try {
            wget
        }
        catch {
            get_wget
        }
        #
    #winget
    wget winget 
    #ohmyposh
    winget install JanDeDobbeleer.OhMyPosh -s winget
    #pwsh
    winget install --id Microsoft.PowerShell.Preview --source winget
    #powertoys
    winget install Microsoft.PowerToys -s winget
    #lghub
    Start-Job {curl "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" --output $Path\software\lghub_installer.exe}
    #soundpad-text-to-speech
    start-job {curl "https://github.com/medokin/soundpad-text-to-speech/releases/download/v1.1.1/Setup.exe" --output $path\software\soundpad-text-to-speech.exe}
    #obs
    start-job{ curl "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-30.2.3-Windows-Installer.exe" --output $path\software\obs_installer.exe }
    #yt-dlp
    md $Path\soft\yt-dlp
    start-job {curl "https://github.com/yt-dlp/yt-dlp/releases/download/2024.08.06/yt-dlp.exe" --output $path\software\yt-dlp\yt-dlp.exe}
 #node 
 scoop install node 
 #python 
 scoop install python
 #go
 scoop install go
    #FFMPEG
    scoop install ffmpeg
    #docker
    scoop install docker
    start-job {curl "https://d1vdn3r1396bak.cloudfront.net/installer/363949053574335076/0588175" --output $path\software\cloudfromt}
    #lghub
    start-job {curl "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" --output $path\software\lghub_installer.exe}
    
    start-job {curl "https://d3mb6vraut285i.cloudfront.net/installer/0973117252055536153/437276" --output $path\software\cloudfront_installer.exe}
    start-job {curl "https://www.zhornsoftware.co.uk/stickies/stickies_setup_10_1d.exe" --output $path\software\stickies_installer.exe}
    start-job {curl "https://lddl01.ldmnq.com/downloader/ldplayerinst9.exe?n=ldplayer9_ld_999_ld.exe" --output $path\software\ldplayer_installer.exe}
    start-job {curl "https://github.com/NickeManarin/ScreenToGif/releases/download/2.41.1/ScreenToGif.2.41.1.Setup.x64.msi" --output $path\software\ScreenToGif_installer.exe}
    start-job {curl "https://7-zip.org/a/7z2408-x64.exe"   --output $path\software\7z_setup.exe}
    start-job{ curl "https://github.com/Xizo-114514/DiskIconChangerByXizo/releases/download/v1.2.2024.7.17/XizoDiskIconChangerV1.2.exe" --output $path\software\DiskIconChangerByXizo_installer.exe}
    start-job {curl "https://download.mypikpak.net/desktop/official_PikPak.exe" --output $Path\software\pikpak_installer.exe}
    start-job {curl 'https://dldir1.qq.com/qqfile/qq/QQNT/Windows/QQ_9.9.16_241112_x64_01.exe' --output $path\software\qq_installer.exe}
    start-job{curl 'https://github.com/oureveryday/PikPak_By_Shimily_Keygen?tab=readme-ov-file' --output $path\software\pikpak_shimily_installer.exe}
    #icons
    git clone https://github.com/CN-CODEGOD/icons.git 
    #jitbit
    
    git clone https://github.com/CN-CODEGOD/cracked-jitbit
        
  
    
    

    
    
    
 
    
    
    Restart-Computer
}
install_software -path $path