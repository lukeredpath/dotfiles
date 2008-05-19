export EDITOR='mate -w'
export PS1="\w $ "

if [ -d ~/.bin ]; then
  export PATH=~/.bin:$PATH
fi

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f ~/.profile.local ]; then
  source ~/.profile.local
fi
