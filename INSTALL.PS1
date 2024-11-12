try {
    git 
}
catch {
    get-git 
}

function get-git {
    #scooptintaller
   curl "https://github.com/ScoopInstaller/Install/blob/master/install.ps1" --output .\install.1.ps1
   
   irm get.scoop.sh -outfile 'install.1.ps1'
   .\install.1.ps1 -RunAsAdmin 
   # I don't care about other parameters and want a one-line command
   iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
   
   scoop install git
   }
   
cd $HOME
#非module

git clone https://github.com/CN-CODEGOD/POTconfig.git
MD git
CD GIT
GIT clone https://github.com/CN-CODEGOD/minecraft-GPS.git
GIT clone https://github.com/chen310/BilibiliPotPlayer.git
GIT clone https://github.com/CN-CODEGOD/shell.git
GIT clone https://github.com/CN-CODEGOD/stream.git
GIT clone https://github.com/CN-CODEGOD/dre.git
GIT clone  https://github.com/CN-CODEGOD/import-xml.git

GIT clone https://github.com/CN-CODEGOD/script.git
GIT clone https://github.com/CN-CODEGOD/DASHBOARD.git
GIT clone https://github.com/CN-CODEGOD/MyBBDown.git
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh


git clone https://github.com/CN-CODEGOD/cracked-jitbit
git clone https://github.com/CN-CODEGOD/EX-SYS.git

#MOdule
cd $pshome\module




Restart-Computer        