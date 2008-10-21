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

function set_window_and_tab_title
{
    local title="$1"
    if [[ -z "$title" ]]; then
        title="root"
    fi

    local tmpdir=~/Library/Caches/${FUNCNAME}_temp
    local cmdfile="$tmpdir/$title"

    # Set window title
    echo -n -e "\e]0;${title}\a"

    # Set tab title
    if [[ -n ${CURRENT_TAB_TITLE_PID:+1} ]]; then
        kill $CURRENT_TAB_TITLE_PID
    fi
    mkdir -p $tmpdir
    ln /bin/sleep "$cmdfile"
    "$cmdfile" 10 &
    CURRENT_TAB_TITLE_PID=$(jobs -x echo %+)
    disown %+
    kill -STOP $CURRENT_TAB_TITLE_PID
    command rm -f "$cmdfile"
}

PROMPT_COMMAND='set_window_and_tab_title "${PWD##*/}"'
