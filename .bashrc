if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR='vim'

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\w\$(parse_git_branch) $ "

eval "$(hub alias -s)"
alias be="bundle exec "
alias ll="ls -lah"
alias nw="tmux new-window"

# rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

[[ -r ~/.github_token ]] && . ~/.github_token

# heroku autocomplete setup
#HEROKU_AC_BASH_SETUP_PATH=/Users/Chuck/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

setemacs () { rm ~/.emacs.d; ln -s ~/emacs.d/$1 ~/.emacs.d; brew services emacs restart; }

export PATH=~/Library/Python/3.7/bin/:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#cd() {
#    # invoke the native "cd" builtin
#    builtin cd $1
#
#    # if a .nvmrc is present and node_modules is present, run "nvm use";
#    if [[ -e .nvmrc && -d node_modules ]]; then
#        echo ".nvmrc found"
#        nvm use
#    fi
#}
