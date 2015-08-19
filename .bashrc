source ~/.node-completion.bash
source ~/.git-completion.bash

function cd {
    builtin cd "$@"
    if [ -d "venv" ] ; then
        source venv/bin/activate
    fi
}

alias venv='virtualenv venv; source venv/bin/activate'

