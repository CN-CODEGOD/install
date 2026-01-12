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
winget install wegame --source msstore
