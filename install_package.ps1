[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Path
)

function install_package {
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
}

install_package -path $path
