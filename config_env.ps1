


$oldpath= [System.Environment]::GetEnvironmentVariable('path')
$newpath = $oldpath+ ";$home\install\aria2-1.37.0-win-32bit-build1"+ ";$home\install\BBDown_1.6.3_20240814_win-x64" +";$home\install\yt-dlp"
[System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')
$psmodulepath = [System.Environment]::GetEnvironmentVariable("psmodulepath")
[System.Environment]::SetEnvironmentVariable('psmodulepath',$psmodulepath + ";$PSScriptRoot\git",'machine')
Restart-Computer        