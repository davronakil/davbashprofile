# git and svg beautified in this file below
. ~/.bash_prompt

PS1="\u$ "

# Aliases
alias lll="ls -ahG"
alias ll="ls -lahG"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias work="cd /Users/davron/Sites/gitsites/"

alias cdd="cd /dav"
alias cds="cd /Users/davron/Sites"
alias cpu="top -o cpu -s 5"
alias cdmamp="cd /Applications/MAMP/htdocs"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES" #show hidden files
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles NO" #hide hidden files

alias hosts="subl /etc/hosts"
alias twitter="open -na 'Google Chrome' --args '--app=https://mobile.twitter.com '"

# show my public IP address
alias myip="curl ifconfig.me"
alias whatsmyip="curl ifconfig.me"

# Encryption / sha shortcuts
sha256() {
	echo -n $1 | shasum -a 256
}

sha() {
	echo -n $1 | shasum -a 256
}
# shows the sha output of what's in your clipboard
shapaste() {
	pbpaste | shasum -a 256
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
# adding this right after installing homebrew because it was suggested.
export PATH="/usr/local/bin:$PATH"

#go path
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# The final step is to add ~/.npm-packages/bin to your PATH so npm and global npm packages are usable.
export PATH="$HOME/.npm-packages/bin:$PATH"

# Matrix effect in terminal
matrix() {
	echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|awk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

# Flush DNS Cache
alias flushdns="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset | say"

# Find something in Terminal by filename 
# sudo find ./ -name file.doc
# .
# EVEN BETTER: Spotlight db search by filename (quick!) :
#  mdfind file.name
