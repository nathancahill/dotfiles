source ~/.node-completion.bash
source ~/.git-completion.bash

function cd {
    builtin cd "$@"
    if [ -d "venv" ] ; then
        source venv/bin/activate
    fi
}

alias venv='virtualenv venv; source venv/bin/activate'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\$(parse_git_branch)\w \\$ "


