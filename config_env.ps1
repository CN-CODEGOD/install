


$oldpath= [System.Environment]::GetEnvironmentVariable('path')
$newpath = $oldpath+ ";$home\install\aria2-1.37.0-win-32bit-build1"+ ";$home\install\BBDown_1.6.3_20240814_win-x64" 
[System.Environment]::SetEnvironmentVariable('path',$newpath,'machine')

Restart-Computer