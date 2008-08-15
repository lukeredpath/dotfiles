if [ -f ~/.git-completion ]; then
  source ~/.git-completion
fi

export PS1="\w\$(__git_ps1) $ "

if [ -d ~/.bin ]; then
  export PATH=~/.bin:$PATH
fi

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f ~/.profile.local ]; then
  source ~/.profile.local
fi

export EDITOR='mate -w'
export GIT_EDITOR="mate -w"
