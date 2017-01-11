export PATH="/usr/local/bin:$PATH"
# Meta aliases
alias editor="subl" # set editor of choice for other aliases
alias prof="editor ~/.bash_profile"
alias reprof=". ~/.bash_profile"

alias cl="clear"

alias subl="open -a Sublime\ Text"
alias s.="open -a Sublime\ Text ."

export appleID="c4003146"
export applePass="M4rtem!wski"
alias ap="echo ${applePass}"

# Navigational aliases
ds () {
  cd ~/Documents
}
de () {
  cd ~/Desktop
}
dw () {
  cd ~/Downloads
}
dse () {
  cd ~/Documents/dsernst.github.io
}
j () {
  cd ~/Documents/journal
}
euler () {
  cd ~/Documents/ProjectEuler
}
alias quotes="editor ~/Documents/dsernst.github.io/data_favorite_quotes.yml"
alias lintrc="editor ~/.eslintrc"

# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}

# combine cd & sublime open current directory
s () {
  "$1"
  editor .
}

alias server="python -m SimpleHTTPServer"
alias tcpu="top -o cpu"

# git aliases
alias gs="git status"
alias gh="git log --graph --pretty=format:'%Cred%h%Creset %Cblue%cr:%Creset %s%C(yellow)%d %C(green)%an%Creset' --abbrev-commit"
alias gco="git checkout"
alias gci="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias ga="git add"
alias gd="git diff"
alias gacm="git add .; git commit -m"
alias gpum="git pull upstream master"
alias gf="git fetch"
alias grv="git remote -v"
alias gcom="git checkout master"
alias gm="git merge"
alias gpsuo="git push --set-upstream origin"
alias gundo="git reset HEAD~"
alias gpl="git pull"
alias gb="git checkout -b"
alias gbv="git branch -v"
alias gprum="git pull --rebase upstream master"
alias gpf="git push --force"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gca="git commit --amend"
alias gdi="git diff --cached"
alias gprud="git pull --rebase upstream dev"
alias gbo="git for-each-ref --sort=-committerdate refs/heads/ --format='%(color:blue)(%(committerdate:relative))%(color:reset) %(color:yellow)%(refname):%(color:reset) %(color:red)%(objectname:short)%(color:reset) %(contents:subject)  %(color:green)%(authorname)%(color:reset)' | sed 's/refs\/heads\///g'"
alias gacapf="git add .; git commit --amend --no-edit; git push --force"
alias grH="git reset HEAD"

function ignore () {
  echo "$1" >> .gitignore
}

# clone from my github, then cd into it
cln () {
  git clone https://github.com/dsernst/${1}.git
  cd "$1"
}

# github aliases
alias hb="hub browse"
alias hpr="hub pull-request"

alias g-c="git-crypt"

# npm aliases
alias ni="npm install"
alias nig="npm install -g"
alias ni-s="npm install --save"

# gilded aliases
alias gdeploy="git checkout production && git merge master --no-edit && gulp build && git add . && git commit -m '(deploy) re-gulped' && eb deploy"
alias gildedpr="hpr -b hesitant-tapdancers:master"

#link path to java; see: http://www.tutorialspoint.com/maven/maven_quick_guide.htm
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH
export M2_HOME=/Users/AlexDajani/Documents/apache-maven-3.3.9
export PATH=$PATH:$JAVA_HOME/bin;
export PATH=$PATH:$M2_HOME/bin;

#Homebrew
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export REPLYTO=xelad1@gmail.com
