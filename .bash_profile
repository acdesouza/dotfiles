export LC_CTYPE="utf-8"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Homebrew
export PATH="/usr/local:/usr/local/bin:$PATH"

# rbenv - Simple Ruby Version Management: https://github.com/sstephenson/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# usuario@host:current_path
export PS1='\u@\h:\[\033[01;34m\]\w\[\033[00m\]'

# Mostrar o branch, do git, atual. Quando a pasta atual estiver no git.
export PS1=$PS1'$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")'

# Mostrar o branch, do Mercurial, atual. Quando a pasta atual estiver no Hg.
#hg_branch() {
  #hg branch 2> /dev/null | awk '{print "("$1")"}'
#}
#export PS1=$PS1' \[\033[1;32m\]$(hg_branch)\[\033[0m\]'

# Quebrar linha e colocar o $ .
export PS1=$PS1'\n\[\033[0;33m\]\$\[\033[0m\] '


# Colorir a resposta dos comandos no terminal.
#export CLICOLOR=1

#alias vim='/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Grep ignoring directories
alias grep_project='grep -r --exclude-dir=.git --exclude-dir=.sass-cache --exclude-dir=coverage --exclude-dir=tmp --exclude-dir=log'

# http://technotales.wordpress.com/2009/05/17/git-diff-with-vimdiff/
function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

# VirtualENV config
#export WORKON_HOME=~/.virtualenvs
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages --distribute'
#source /usr/local/bin/virtualenvwrapper.sh

#export NODE_PATH=/usr/local/lib/node_modules
