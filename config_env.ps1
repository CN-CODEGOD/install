


$oldpath= [System.Environment]::GetEnvironmentVariable('path')
$newpath = $oldpath+ ";$home\git\aria2-1.37.0-win-32bit-build1"+ ";$home\git\BBDown_1.6.3_20240814_win-x64" + ";$home\git\  ffmpeg-2024-09-05-git-3d0d0f68d5-essentials_build"
[System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')

Restart-Computer