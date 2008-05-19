export PATH=$PATH:/usr/local/bin:/opt/local/bin:~/.bin
export EDITOR='mate -w'
export PS1="\w $ "

if [ -f '~/.bash_aliases' ]; then
  source ~/.bash_aliases
fi

if [ -f '~/.profile.local' ]; then
  source ~/.profile.local
fi
