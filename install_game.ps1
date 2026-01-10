[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Path
)

. "$PSScriptRoot\install_game_launchers.ps1"
install_game_launchers -path $path
