. ~/.bash_prompt

PS1="\u$ "
alias lll="ls -ahG"
alias ll="ls -lahG"


alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias sha="sha256"

sha256() {
    #do things with parameters like $1 such as
    shasum -a 256 $1
}

shapaste() {
    #do things with parameters like $1 such as
    pbpaste | shasum -a 256
}


alias work="cd /Users/davron/Sites/gitsites/"
alias coinx="cd /Users/davron/Sites/gitsites/coinx"


alias desktop="cd /Users/davron/Desktop"

alias pkssh="ssh -D 2001 *******@pixelkraft ***"

alias editprofile="subl .bash_profile"
# =
alias profile="subl .bash_profile"

alias hosts="subl /etc/hosts"

alias twitter="open -na 'Google Chrome' --args '--app=https://mobile.twitter.com '"

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

# Aliases
alias cdd="cd /dav"
alias cds="cd /Users/davron/Sites"
alias cpu="top -o cpu -s 5"
# alias cdmamp="cd /Applications/MAMP/htdocs"


alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES" #show hidden files
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles NO" #hide hidden files

# Matrix symbol rain
matrix() {
	echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|awk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}


alias goruby="cd /Users/davron/Sites/ruby/sandbox"
alias cdruby="cd /Users/davron/Sites/ruby/sandbox"

