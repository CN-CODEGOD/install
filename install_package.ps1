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

    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        install-script winget-install -force
    }

    if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
        irm get.scoop.sh -outfile 'install.1.ps1'
        .\install.1.ps1 -RunAsAdmin
    }
}

install_package -path $path
