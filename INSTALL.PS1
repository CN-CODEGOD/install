try {
    git 
}
catch {
    throw "please install git"
}


cd $HOME
MD git
CD GIT
GIT clone https://github.com/CN-CODEGOD/minecraft-GPS.git
GIT clone https://github.com/chen310/BilibiliPotPlayer.git
GIT clone https://github.com/CN-CODEGOD/shell.git
GIT clone https://github.com/CN-CODEGOD/stream.git
GIT clone https://github.com/CN-CODEGOD/dre.git
GIT clone  https://github.com/CN-CODEGOD/import-xml.git
GIT clone https://github.com/CN-CODEGOD/EX-SYS.git
GIT clone https://github.com/CN-CODEGOD/script.git
GIT clone https://github.com/CN-CODEGOD/DASHBOARD.git
GIT clone https://github.com/CN-CODEGOD/MyBBDown.git
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

git clone https://github.com/CN-CODEGOD/POTconfig.git
git clone https://github.com/CN-CODEGOD/cracked-jitbit
git clone https://github.com/CN-CODEGOD/EX-SYS.git



[System.Environment]::SetEnvironmentVariable('psmodulepath',"$home\git",'machine')

& "$PSScriptRoot\config_env.ps1"
