[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Path
)

function install_codekit {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Path
    )

    function Install-Winget {
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            return
        }

        Install-Script winget-install -Force
        winget-install

        if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
            throw "winget installation failed."
        }
    }

    Install-Winget

    if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
        irm get.scoop.sh -outfile 'install.1.ps1'
        .\install.1.ps1 -RunAsAdmin
    }

    md $path\codekit
    cd $path\codekit

    winget install --id Git.Git -s winget
    winget install --id Microsoft.VisualStudioCode -s winget
    winget install JanDeDobbeleer.OhMyPosh -s winget
    winget install --id Microsoft.PowerShell.Preview --source winget

    scoop install node
    scoop install python
    scoop install go
}

install_codekit -path $path
